<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataEntry.aspx.cs" Inherits="DataEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">--%>
    <link rel = "stylesheet" href = "DataEntry.css" type = "text/css" />
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css"/>  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>  
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    
    <title></title>
    <script>
        $(document).ready(function () {
            $("#datepicker").datepicker({
            });
        });
    </script>
    <script>
            $(document).ready(function () {
                $("#datepicker1").datepicker({
                });
            });
    </script>
    <script>
        $(function () {
            $(document).tooltip();
        });
    </script>
</head>
<body>
    <div id="logoDiv">
    &nbsp;<img src="Images/logo.PNG" alt="PNG of JCCC's Sustainability logo" /></div>
    <div id="H3Div">
        <h3>Dashboard Data Entry</h3>
    </div>    
    <div id="H6Div">
    <h6>Sustainability/Projects/Dashboard/Data Entry</h6>
    </div>
    <form id="form1" runat="server">
    <div id="buttons">
        <asp:Button ID="Compost" runat="server" Text="Composting" OnClick="Compost_Click" />&nbsp; 
        <asp:Button ID="Recycling" runat="server" Text="Recycling" OnClick="Recycling_Click" />
        <br />
        <br />
        <br />
    </div>
    <div id="datatype" >

        <asp:Button ID="New" runat="server" Text="New Entry" OnClick="New_Click" />&nbsp;
        <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />

        <br />

        <br />

    </div>
    <div id="dataentry">
        <asp:Panel ID="DEPanel" runat="server" Visible="false">
             
        <asp:Label ID="Label1" runat="server"></asp:Label>

        <asp:TextBox ID="datepicker" runat="server" autocomplete="off"></asp:TextBox>

            &nbsp;<asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>

            <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>

            &nbsp;<asp:Button ID="Retrieve" runat="server" Text="Retrieve Dates" />
            <br />
            &nbsp;<br /><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

            &nbsp;<asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>

            &nbsp;<asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location" style="margin-left: 5px" OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SUSJCCC1ConnectionString %>" SelectCommand="SELECT DISTINCT [Location] FROM [RecyclingData]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="datepicker" DefaultValue="01/01/2010" Name="Pickup_date" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>

            &nbsp;<br />&nbsp;<br /><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

            &nbsp;<asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>

            &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Classification" DataValueField="Classification" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SUSJCCC1ConnectionString %>" SelectCommand="SELECT DISTINCT [Classification] FROM [RecyclingData]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

            &nbsp;<asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>

            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Material" DataValueField="Material" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SUSJCCC1ConnectionString %>" SelectCommand="SELECT DISTINCT [Material] FROM [RecyclingData]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="datepicker" DefaultValue="01/01/2010" Name="Pickup_date" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

            &nbsp;<asp:TextBox ID="TextBox5" runat="server" autocomplete="off"></asp:TextBox>

            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Vendor" DataValueField="Vendor" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SUSJCCC1ConnectionString %>" SelectCommand="SELECT DISTINCT [Vendor] FROM [RecyclingData]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="datepicker" DefaultValue="01/01/2010" Name="Pickup_date" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>

            &nbsp;<br /> &nbsp; &nbsp;&nbsp;&nbsp;<br /> 
            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox19" runat="server" Width="116px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" autocomplete="off"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Panel ID="RPanel" runat="server" Visible="false">

                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" style="width: 128px"></asp:TextBox>&nbsp;<br />&nbsp;<br />

                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                &nbsp; &nbsp;<br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                &nbsp;
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                &nbsp;
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox15" runat="server" Width="288px"></asp:TextBox>
                &nbsp;

            </asp:Panel>
            <br />
    </asp:Panel>
    </div>
    <div id="SCbuttons">
    <asp:Panel ID="SCPanel" runat="server" Visible="false">
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />&nbsp;
        <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" />
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" Text="Label" Visible="true"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label20" runat="server" Text="Label" Visible="false" style="color: red"></asp:Label>
        <br />
        <br />
        <br />
    </asp:Panel>
    </div>

    </form>
    </body>
</html>