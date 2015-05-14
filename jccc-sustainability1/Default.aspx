<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jccc_sustainability1.Default" %>

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
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-glyphicons.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/chartist.min.css" rel="stylesheet" />
    <script src="Scripts/chartist.min.js"></script>

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

                    <asp:LinkButton ID="HomeLogo" runat="server" OnClick="Home_Click" CssClass="navbar-brand"><img src="img/JCCCAppLogo.png" alt="Composting and Recycling JCCC" class="img-circle" style="width:30px; height:auto;"/></asp:LinkButton>

                    <div class="nav-collapse collapse navbar-responsive-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <asp:LinkButton ID="LinkButton1" runat="server" Text="Home" OnClick="Home_Click"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="CompostingB" runat="server" Text="Composting" OnClick="Composting_Click"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="RecyclingB" runat="server" Text="Recycling" OnClick="Recycling_Click"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="AboutB" runat="server" Text="About" OnClick="About_Click"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="ContactUsB" runat="server" Text="Contact Us" OnClick="ContactUs_Click"></asp:LinkButton></li>
                        </ul>
                        <!--End Navbar left side-->
                        <ul class="nav navbar-nav pull-right">
                            <li>
                                <asp:LinkButton ID="Login" runat="server" Text="Login" OnClick="Login_Click"><span class="glyphicon glyphicon-user"></span>Login</asp:LinkButton></li>
                        </ul>
                        <!-- end nav pull-right -->
                    </div>
                    <!-- end nav-collapse -->

                </div>
                <!-- end container -->
            </div>
            <!-- end navbar -->


            <div class="carousel slide" id="myCarousel">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                    <li data-slide-to="1" data-target="#myCarousel"></li>
                    <li data-slide-to="2" data-target="#myCarousel"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active" id="slide1">
                        <div class="carousel-caption">
                            <h4>Compost</h4>
                            <p>Compost is made out of food.</p>
                        </div>
                        <!-- end carousel-caption-->
                    </div>
                    <!-- end item -->

                    <div class="item" id="slide2">
                        <div class="carousel-caption">
                            <h4>Recycling</h4>
                            <p>JCCC Recycles</p>
                        </div>
                        <!-- end carousel-caption-->
                    </div>
                    <!-- end item -->

                    <div class="item" id="slide3">
                        <div class="carousel-caption">
                            <h4>Sustainability</h4>
                            <p>For a sustainable world.</p>
                        </div>
                        <!-- end carousel-caption-->
                    </div>
                    <!-- end item -->
                </div>
                <!-- carousel-inner -->

                <!-- Controls -->
                <a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
                <a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>

            </div>
            <!-- end myCarousel -->

            <hr />
            <div class="row" id="bigCallout">
                <div class="col-12">

                    <div class="well">
                        <div class="page-header">
                            <h1>Johnson County Community College
                                <br />
                                <small>Compost & Recycling Dashboard</small></h1>
                        </div>
                        <!-- end page-header -->

                        <p class="lead" style="margin-top:2px; margin-bottom:0; padding-bottom:0;" >
                            Sustainability strives to balance our environmental, economic and <br />social goals to produce more resilient systems that will endure into <br />the future.
                        </p>
                    </div>
                    <!-- end well -->

                </div>
                <!-- end col-12 -->
            </div>
            <!-- end bigCallout -->
            <hr />

            <div class="row" id="featuresHeading">
                <div class="col-12">
                    <h2>What to see!</h2>
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end featuresHeading -->


            <div class="row" id="features">
                <div class="col-sm-4 feature">
                    <div class="panel">
                        

                        <asp:LinkButton ID="CompostBuble" runat="server"  OnClick="Composting_Click"><img src="img/compostBuble.png" alt="Compost stats" class="img-circle"></asp:LinkButton>

                        <div class="panel-heading">
                            <h3 class="panel-title">Compost Current Stats</h3>
                        </div>
                        <!-- end panel-heading -->

                        <p>Check out the current stats of JCCC’s composting program! How many pounds of food waste have we composted? What temperature is the compost? What’s it’s pH level? Click the image to find out!</p>

                        
                        <a href="http://www.jccc.edu/sustainability/projects/composting/index.html" target="_blank" class="btn btn-warning btn-block">Learn More</a>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end feature -->

                <div class="col-sm-4 feature">
                    <div class="panel">
                       
                        <img src="img/recycleBubble.png" alt="Recycle" class="img-circle">

                        <div class="panel-heading">
                            <h3 class="panel-title">Single Stream Recycling</h3>
                        </div>
                        <!-- end panel-heading -->

                        <p>Recycling on the JCCC campus just got simpler, faster, and easier! Just put all of your paper, #1-7 plastics, and metals in the blue bins! Broken down cardboard can be placed behind the blue bins. </p>
                         
                        <a href="http://www.jccc.edu/sustainability/projects/recycling/index.html" target="_blank" class="btn btn-danger btn-block">Learn More</a>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end feature -->

                <div class="col-sm-4 feature">
                    <div class="panel">
                        
                        <img src="img/galleryBubble.jpg" alt="Gallery" class="img-circle">

                        <div class="panel-heading">
                            <h3 class="panel-title">Gallery</h3>
                        </div>
                        <!-- end panel-heading -->

                        <p>Here you can see how everything looks like! All the compost piles and our team getting the job done. In addition, all the machinary used to get the <br />final product.</p>
                        
                        <a href="#" target="_blank" class="btn btn-info btn-block">Learn More</a>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end feature -->
            </div>
            <!-- end features -->

            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <h6>Copyright &copy; 2015</h6>
                        </div>
                        <!-- end col-sm-2 -->

                        <div class="col-sm-4">
                            <h6>About Us</h6>
                            <p>Algo sobre nosotros los del equipo 1.</p>
                        </div>
                        <!-- end col-sm-4 -->


                        <!-- end col-sm-2 -->

                        <div class="col-sm-2">
                            <h6>Follow Us</h6>
                            <ul class="unstyled">
                                <li><a href="#">Twitter</a></li>
                                <li><a href="#">Facebook</a></li>
                                <li><a href="#">Google Plus</a></li>
                            </ul>
                        </div>
                        <!-- end col-sm-2 -->

                        <div class="col-sm-2">
                            <h6>Coded with Nesta and Brian, by Nestor</h6>
                        </div>
                        <!-- end col-sm-2 -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </footer>



            <script src="http://code.jquery.com/jquery.js"></script>
            <script>window.jQuery || document.write('<script src="Scripts/jquery-1.8.2.min.js"><\/script>')</script>
            <script src="Scripts/bootstrap.min.js"></script>
            <script src="Scripts/script.js"></script>
        </div>
    </form>


</body>
</html>
