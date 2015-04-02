using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace Master1.csClasses
{
    public class NewUserRegistration
    {
        private static string connectionstring = ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString;


        /*Hashes password in 40 charateres*/
        public static string HashPass(string value)
        {
            var pass = System.Security.Cryptography.SHA1.Create();
            var inputBytes = Encoding.ASCII.GetBytes(value);
            var hash = pass.ComputeHash(inputBytes);

            var sb = new StringBuilder();
            for (var i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }


        /*Add new user if it doesn't exist yet*/
        public static bool AddUser(string username, string password)
        {
            Guid userGuid = System.Guid.NewGuid();
            string hashedPass = HashPass(password + userGuid.ToString());
            bool RepeatedUser = false;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmdCheckUsers = new SqlCommand("Select UserName FROM dbo.Users");
            cmdCheckUsers.Connection = con;
            SqlDataReader reader = cmdCheckUsers.ExecuteReader();
            while (reader.Read())
            {
                if (username == (String)(reader["UserName"]))
                {
                    RepeatedUser = true;
                    return false;
                }
            }
            reader.Close();
            if (RepeatedUser == false) {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Users VALUES (@username, @password, @guid, @userType, @date)", con))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", hashedPass);
                    cmd.Parameters.AddWithValue("@guid", userGuid);
                    cmd.Parameters.AddWithValue("@userType", "admin");
                    cmd.Parameters.AddWithValue("@date", DateTime.Now);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            return true;
        }

       

    }
}