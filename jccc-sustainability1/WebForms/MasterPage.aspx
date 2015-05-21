<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="jccc_sustainability1.WebForms.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
				<div class="container"id="main">

            <div class="navbar-inverse navbar-fixed-top">
                <div class="container">

                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <asp:LinkButton ID="HomeLogo" runat="server" OnClick="Home_Click" CssClass="navbar-brand"><img src="../img/JCCCAppLogo.png" alt="Composting and Recycling JCCC" class="img-circle" style="width:30px; height:auto;"/></asp:LinkButton>

                    <div class="nav-collapse collapse navbar-responsive-collapse">
                        <ul class="nav navbar-nav">
                            <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text="Home" OnClick="Home_Click"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="CompostingB" runat="server" Text="Composting" OnClick="Composting_Click"></asp:LinkButton></li>
                            <li class="active">
                                <asp:LinkButton ID="RecyclingB" runat="server" Text="Recycling" OnClick="Recycling_Click"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="AboutB" runat="server" Text="About" OnClick="About_Click"></asp:LinkButton></li>
                            <%--<li>
                                <asp:LinkButton ID="ContactUsB" runat="server" Text="Contact Us" OnClick="ContactUs_Click"></asp:LinkButton></li>--%>
                        </ul>
                        <!--End Navbar left side-->
                        <ul class="nav navbar-nav pull-right">
                            <li>
                                <asp:LinkButton ID="Login1" runat="server" Text="Login" OnClick="Login_Click"><span class="glyphicon glyphicon-user"></span>Login</asp:LinkButton></li>
                        </ul>
                        <!-- end nav pull-right -->
                    </div>
                    <!-- end nav-collapse -->

                </div>
                <!-- end container -->
            </div>
            <!-- end navbar -->

            <hr />
    <br />
                    <br />
    
        <asp:Button ID="Button1" runat="server" Text="Add Users" OnClick="Button1_Click" CssClass="form-control"/>
        <asp:Button ID="Button2" runat="server" Text="Enter Data" OnClick="Button2_Click" CssClass="form-control" />
    </div>
    </form>
</body>
</html>
