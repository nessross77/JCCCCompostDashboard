<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="jccc_sustainability1.WebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="keywords" content="jccc sustainability" />
    <meta name="description" content="JCCC Sustainability" />
    <meta name="author" content="Nestor Rosales" />
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap-glyphicons.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />
    <title>JCCC Sustainability</title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container" id="main">

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
            <div class="card card-container">
                <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" /><br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is Required to Login." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required to Login." ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SUSJCCC1ConnectionString %>"></asp:SqlDataSource>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" CssClass="btn btn-lg btn-primary btn-block btn-signin" />
            </div>
            <!-- /card-container -->

            <script src="http://code.jquery.com/jquery.js"></script>
            <script>window.jQuery || document.write('<script src="Scripts/jquery-1.8.2.min.js"><\/script>')</script>
            <script src="Scripts/bootstrap.min.js"></script>
            <script src="Scripts/script.js"></script>
        </div>
    </form>

</body>
</html>
