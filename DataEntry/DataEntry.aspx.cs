using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataEntry : System.Web.UI.Page
{
	String buttonvalue 
	{
		get { return Session["buttonvalue"] as string; }
		set { Session["buttonvalue"] = value; }
	}
	
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void Compost_Click(object sender, EventArgs e)
	{
		buttonvalue = "CompostData";
		DEPanel.Visible = false;
//		CompostControls(); //all controls tranfered to this function
//		ClearControls(Page);
//		Label1.Text = "Date";
//		Label2.Text = "Pre-Consumer Foods: ";
//		Label3.Text = "Post-Consumer Foods: ";
//		Label4.Text = "Amendment: ";
//		Label5.Text = "In Vessel: ";
//		Label6.Text = "Pile 3 Temp: ";
//		Label17.Text = "Pile 1 Temp: ";
//		Label19.Text = "Pile 2 Temp: ";
//		Label18.Text = "pH Level: ";
//		DEPanel.Visible = true;
		SCPanel.Visible = false;
//		RPanel.Visible = false;
//		TextBox2.Visible = true;
//		TextBox3.Visible = true;
//		TextBox4.Visible = true;
//		TextBox5.Visible = true;
//		ddlCategories.Visible = false;
//		DropDownList1.Visible = false;
//		DropDownList2.Visible = false;
//		DropDownList3.Visible = false;

		
	}
	protected void Recycling_Click(object sender, EventArgs e)
	{
		buttonvalue = "RecyclingData";
		DEPanel.Visible = false;
		//RecyclingControls();
		//ClearControls(Page);
		//Label1.Text = "Pickup Date";
		//Label2.Text = "Location: ";
		//Label3.Text = "Classification: ";
		//Label4.Text = "Material: ";
		//Label5.Text = "Vendor: ";
		//Label6.Text = "Weight lb: ";
		//Label18.Text = "Stated Rebate: ";
		//Label17.Text = "Qty:";
		//Label19.Text = "Revenue: ";
		//Label7.Text = "Payment: ";
		//Label9.Text = "Vendor Ticket#: ";
		//Label11.Text = "JCCC Receipt#: ";
		//Label13.Text = "Receipt date: ";
		//Label15.Text = "Notes: ";
		//Label16.Text = "Haul/Tip fee: ";
		//DEPanel.Visible = true;
		SCPanel.Visible = false;
		//RPanel.Visible = true;
//		TextBox2.Visible = false;
//		TextBox3.Visible = false;
//		TextBox4.Visible = false;
//		TextBox5.Visible = false;
		//ddlCategories.Visible = true;
		//DropDownList1.Visible = true;
		//DropDownList2.Visible = true;
		//DropDownList3.Visible = true;
		
	}
	public void ClearControls(Control c)
	{
		foreach (Control c1 in c.Controls)
		{
			if (c1.GetType() == typeof(TextBox))
			{
				((TextBox)c1).Text = "";
			}
			if (c1.HasControls())
			{
				ClearControls(c1);
			}
		}
	}

	//public void ControlsHide(Control h)
	//{
	//	foreach (Control h1 in h.Controls)
	//	{
	//		if (h1.GetType() == typeof(TextBox))
	//		{
	//			((TextBox)h1).Visible = false;
	//		}
	//		if (h1.HasControls())
	//		{
	//			ClearControls(h1);
	//		}
	//	}
	//}

	//public void LabelsHide(Control t)
	//{
	//	foreach (Control t1 in t.Controls)
	//	{
	//		{
	//			if (t1.GetType() == typeof(Label))
	//			{
	//				((Label)t1).Visible = false;
	//			}
	//			if (t1.HasControls())
	//			{
	//				ClearControls(t1);
	//			}
	//		}
	//	}
	//}

	protected void Cancel_Click(object sender, EventArgs e)
	{
		ClearControls(Page);
	}

	protected void Submit_Click(object sender, EventArgs e)
	{
		if (buttonvalue == "CompostData")
		{
//			string date = datepicker.Text;
//			string pre = Label2.Text;
//			string post = Label3.Text;
//			string carb = Label4.Text;//carbon is amendment might need updated later
//			string vessel = Label5.Text; // internal temp on database
//			string pile1 = Label17.Text;
//			string pile2 = Label19.Text;
//			string pH = Label18.Text;

			try
			{
				//var connectionString = "ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString";
				using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString))
				{
					conn.Open();
					using (SqlCommand command = conn.CreateCommand())
					{
						command.CommandText = "Update CompostData Set [Pre-Consumer Food (lbs)] = @pre, [Post-Consumer Food (lbs)] = @post, [Daily Carbon (lbs)] = @carb, [Internal Temperature] = @vessel, [Pile 1 Temperature] = @pile1, [Pile 2 Temperature] = @pile2, [pH Level] = @pH Where [Date] = @date";
							

						command.Parameters.AddWithValue("@date", datepicker.Text);
						command.Parameters.AddWithValue("@pre", TextBox2.Text);
						command.Parameters.AddWithValue("@post", TextBox3.Text);
						command.Parameters.AddWithValue("@carb", TextBox4.Text);
						command.Parameters.AddWithValue("@vessel", TextBox5.Text);
						command.Parameters.AddWithValue("@pile1", TextBox17.Text);
						command.Parameters.AddWithValue("@pile2", TextBox19.Text);
						command.Parameters.AddWithValue("@pH", TextBox18.Text);

						//Label22.Text = "Values entered into the database: " + datepicker.Text + " " + TextBox2 + "";
						command.ExecuteNonQuery();
						conn.Close();
						Label22.Text = "Values entered into the database: "+datepicker.Text+" "+ TextBox2.Text +"";

					}
				}
			}
			catch (SqlException ex)
			{
				Console.WriteLine(ex.Message);
				throw;
			}
			}
		else if (buttonvalue == "RecyclingData")
		{
						try
			{
				//var connectionString = "ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString";
				using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString))
				{
					conn.Open();
					using (SqlCommand command = conn.CreateCommand())
					{
						command.CommandText = "Insert into RecyclingData ([Pickup date], [Location], [Classification], [Material], [Vendor]) Values (@date, @loc, @class, @mat, @ven)";
							

						command.Parameters.AddWithValue("@date", datepicker.Text);
						command.Parameters.AddWithValue("@loc", TextBox2.Text);
						command.Parameters.AddWithValue("@class", TextBox3.Text);
						command.Parameters.AddWithValue("@mat", TextBox4.Text);
						command.Parameters.AddWithValue("@ven", TextBox5.Text);

						//Label22.Text = "Values entered into the database: " + datepicker.Text + " " + TextBox2 + "";
						command.ExecuteNonQuery();
						conn.Close();
						Label22.Text = "Values entered into the database: "+datepicker.Text+" "+ TextBox2.Text +"";

					}
				}
			}
			catch (SqlException ex)
			{
				Console.WriteLine(ex.Message);
				throw;
			}
		}
		else
		{
			Label20.Visible = true;
			Label20.Text = "Nothing added to database.";
		}
		
	}
	protected void New_Click(object sender, EventArgs e)
	{
		ClearControls(Page);
		if (buttonvalue == "CompostData")
		{
			CompostControls();
		}
		else if (buttonvalue == "RecyclingData")
		{
			NewRecyclingControls();
		}
		else
		{
			DEPanel.Visible = false;
		}
	}

	protected void Update_Click(object sender, EventArgs e)
	{
		ClearControls(Page);
		if (buttonvalue == "CompostData")
		{
			UpdateFeilds();
		}
		else if (buttonvalue == "RecyclingData")
		{
			UpdateFeilds();
			//RecyclingControls();
		}
		else
		{
			DEPanel.Visible = false;
		}
	}

	protected void CompostControls()
	{
		Label23.Visible = false;
		datepicker1.Visible = false;
		Retrieve.Visible = false;
		Label1.Text = "Date";
		Label2.Text = "Pre-Consumer Foods: ";
		Label3.Text = "Post-Consumer Foods: ";
		Label4.Text = "Amendment: ";
		Label5.Text = "In Vessel: ";
		Label6.Text = "Pile 3 Temp: ";
		Label17.Text = "Pile 1 Temp: ";
		Label19.Text = "Pile 2 Temp: ";
		Label18.Text = "pH Level: ";
		DEPanel.Visible = true;
		SCPanel.Visible = true;
		RPanel.Visible = false;
		TextBox2.Visible = true;
		TextBox3.Visible = true;
		TextBox4.Visible = true;
		TextBox5.Visible = true;
		TextBox6.Visible = true;
		TextBox17.Visible = true;
		TextBox18.Visible = true;
		TextBox19.Visible = true;
		Label1.Visible = true;
		Label2.Visible = true;
		Label3.Visible = true;
		Label4.Visible = true;
		Label5.Visible = true;
		Label6.Visible = true;
		Label17.Visible = true;
		Label19.Visible = true;
		Label18.Visible = true;
		ddlCategories.Visible = false;
		DropDownList1.Visible = false;
		DropDownList2.Visible = false;
		DropDownList3.Visible = false;
		Label21.Visible = false;
		Label22.Visible = false;
	}
	protected void RecyclingControls()
	{
		Label23.Visible = false;
		datepicker1.Visible = false;
		Retrieve.Visible = false;
		Label1.Text = "Pickup Date";
		Label2.Text = "Location: ";
		Label3.Text = "Classification: ";
		Label4.Text = "Material: ";
		Label5.Text = "Vendor: ";
		Label6.Text = "Weight lb: ";
		Label18.Text = "Stated Rebate: ";
		Label17.Text = "Qty:";
		Label19.Text = "Revenue: ";
		Label7.Text = "Payment: ";
		Label9.Text = "Vendor Ticket#: ";
		Label11.Text = "JCCC Receipt#: ";
		Label13.Text = "Receipt date: ";
		Label15.Text = "Notes: ";
		Label16.Text = "Haul/Tip fee: ";
		TextBox6.Visible = true;
		TextBox17.Visible = true;
		TextBox18.Visible = true;
		TextBox19.Visible = true;
		Label6.Visible = true;
		Label17.Visible = true;
		Label19.Visible = true;
		Label18.Visible = true;
		DEPanel.Visible = true;
		SCPanel.Visible = true;
		RPanel.Visible = true;
		TextBox2.Visible = true;
		TextBox3.Visible = true;
		TextBox4.Visible = true;
		TextBox5.Visible = true;
		ddlCategories.Visible = false;
		DropDownList1.Visible = false;
		DropDownList2.Visible = false;
		DropDownList3.Visible = false;
		Label21.Visible = false;
		Label22.Visible = false;
	}

	protected void NewRecyclingControls()
	{
		Label23.Visible = false;
		datepicker1.Visible = false;
		Retrieve.Visible = false;
		Label1.Text = "Pickup Date";
		Label2.Text = "Location: ";
		Label3.Text = "Classification: ";
		Label4.Text = "Material: ";
		Label5.Text = "Vendor: ";
		Label17.Visible = false;
		TextBox17.Visible = false;
		Label19.Visible = false;
		TextBox19.Visible = false;
		Label6.Visible = false;
		TextBox6.Visible = false;
		Label18.Visible = false;
		TextBox18.Visible = false;
		DEPanel.Visible = true;
		SCPanel.Visible = true;
		RPanel.Visible = false;
		Label1.Visible = true;
		Label2.Visible = true;
		Label3.Visible = true;
		Label4.Visible = true;
		Label5.Visible = true;
		TextBox2.Visible = true;
		TextBox3.Visible = true;
		TextBox4.Visible = true;
		TextBox5.Visible = true;
		ddlCategories.Visible = true;
		DropDownList1.Visible = true;
		DropDownList2.Visible = true;
		DropDownList3.Visible = true;
		Label21.Visible = false;
		Label22.Visible = false;
	}

	protected void UpdateFeilds()
	{
		ddlCategories.Visible = false;
		DropDownList1.Visible = false;
		DropDownList2.Visible = false;
		DropDownList3.Visible = false;
		Label23.Visible = true;
		datepicker1.Visible = true;
		Retrieve.Visible = true;
		Label1.Text = "Enter first Date: ";
		Label23.Text = "Enter last Date: ";
		DEPanel.Visible = true;
		SCPanel.Visible = true;
		Label2.Visible = false;
		Label3.Visible = false;
		Label4.Visible = false;
		Label5.Visible = false;
		Label6.Visible = false;
		Label17.Visible = false;
		Label19.Visible = false;
		Label18.Visible = false;
		TextBox2.Visible = false;
		TextBox3.Visible = false;
		TextBox4.Visible = false;
		TextBox5.Visible = false;
		TextBox6.Visible = false;
		TextBox17.Visible = false;
		TextBox18.Visible = false;
		TextBox19.Visible = false;
		Label21.Visible = false;
		Label22.Visible = false;
	}
	

	protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
	{
		TextBox2.Text = ddlCategories.SelectedValue;
	}
	protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
	{
		TextBox3.Text = DropDownList1.SelectedValue;
	}
	protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
	{
		TextBox4.Text = DropDownList2.SelectedValue;
	}
	protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
	{
		TextBox5.Text = DropDownList3.SelectedValue;
	}
}