<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Master1.WebForms.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="Textbox1" runat="server"/>
        <asp:TextBox ID="Textbox2" runat="server" TextMode="Password"/>
        <asp:Button ID="btnAddUser" runat="server" Text="Submit" OnClick="btnAddUser_Click" />
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Passwords" HeaderText="Passwords" SortExpression="Passwords" />
                <asp:BoundField DataField="Guids" HeaderText="Guids" SortExpression="Guids" />
                <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SUSJCCC1ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    </form>
</body>
</html>
