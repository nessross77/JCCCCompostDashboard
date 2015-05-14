﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Composting.aspx.cs" Inherits="jccc_sustainability1.WebForms.Composting" %>

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
    <link href="../css/chartist.min.css" rel="stylesheet" />
    <script src="../Scripts/chartist.min.js"></script>
    <script src="../Scripts/raphael.2.1.0.min.js"></script>
    <script src="../Scripts/justgage.1.0.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/script.js"></script>
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
                            <li class="active">
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

            <hr />
            <div class="row" id="bigCallout">
                <div class="col-12">
                    <br />

                    <div class="well">
                        <div class="page-header">
                            <h1>Compost Current Stats</h1>
                        </div>
                        <!-- end page-header -->

                        <p class="lead">
                            Here you will can find the latest statistics from the production of the compost.
                        </p>
                    </div>
                    <!-- end well -->

                </div>
                <!-- end col-12 -->
            </div>
            <!-- end bigCallout -->
            <hr />

            

             <div class="row tfwc" id="lineC" >
                <div class="col-12 tfwc">
                    <h2>Total Food Weight Composted</h2>
                    <div id="line" class="ct-chart ct-golden-section "></div>
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end featuresHeading -->
            <hr />
            <div class="row" id="featuresHeading" >
                <div class="col-12">
                    <h2>Temperatures</h2>
                </div>
                <!-- end col-12 -->
            </div>
          

            <div class="row" id="features">
                <div class="col-sm-4 feature">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Pile 1</h3>
                        </div>
                        <!-- end panel-heading -->

                        <img src="../img/CompostBBLS.jpg" alt="Compost stats" class="img-circle" />
                        <p>Check out the current stats of JCCC’s composting program! How many pounds of food waste have we composted? What temperature is the compost? What’s it’s pH level? Click the image to find out!</p>

                        <div id="g1" ></div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end feature -->

                <div class="col-sm-4 feature">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Pile 2</h3>
                        </div>
                        <!-- end panel-heading -->
                        <img src="../img/CompostBBLS.jpg" alt="Recycle" class="img-circle" />

                        <p>Recycling on the JCCC campus just got simpler, faster, and easier! Just put all of your paper, #1-7 plastics, and metals in the blue bins! Broken down cardboard can be placed behind the blue bins. </p>

                        <div id="g2" ></div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end feature -->

                <div class="col-sm-4 feature">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Pile 3</h3>
                        </div>
                        <!-- end panel-heading -->
                        <img src="../img/CompostBBLS.jpg" alt="Gallery" class="img-circle" />

                        <p>Here you can see how everything looks like! All the compost piles and our team getting the job done. In addition, all the machinary used to get the final product.</p>

                        <div id="g3" ></div>

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




            
            
            <style>
               
        .ct-chart  {
            margin: 0 auto;
            height: 550px;
            padding-left: 1em;
        }

        
            </style>
            <script>
                new Chartist.Line('#line', {
                    labels: <%=chartLabels%>,
                    
                    series: [{
                        name: 'Year',
                        data:[<%=chartData%>]
                        }
                        ]
                }, {
                    fullWidth: true,
       
                    showPoint: false,
                    height: 550,
                    lineSmooth: true,
           
                    axisX: {
                
                        showGrid: false,
               
                        showLabel: false
                    },
                    chartPadding: {
                        right: 20
                    }
                });
                var $tooltip = $('<div class="tooltip tooltip-hidden"></div>').appendTo($('#line'));
 
                $(document).on('mouseenter', '.ct-point', function() {
                    var seriesName = $(this).closest('.ct-series').attr('ct:series-name'),
                        value = $(this).attr('ct:value');
  
                    $tooltip.text(seriesName + ': ' + value);
                    $tooltip.removeClass('tooltip-hidden');
                });

                $(document).on('mouseleave', '.ct-point', function() {
                    $tooltip.addClass('tooltip-hidden');
                });

                $(document).on('mousemove', '.ct-point', function(event) {
                    console.log(event);
                    $tooltip.css({
                        left: (event.offsetX || event.originalEvent.layerX) - $tooltip.width() / 2,
                        top: (event.offsetY || event.originalEvent.layerY) - $tooltip.height() - 20
                    });
                });


                window.onload = function () {
                    var g1 = new JustGage({
                        id: "g1",
                        value: <%=temperature%>,
                        min: 0,
                        max: 100,
                        gaugeColor: "#999966",
                        title: "F°",
                        label: "",
                        levelColorsGradient: false
                    });

                    var g2 = new JustGage({
                        id: "g2", 
                        value: <%=temperature2%>,
                        min: 0,
                        max: 100,
                        gaugeColor: "#999966",
                        title: "F°",
                        label: "",
                        levelColorsGradient: false
                    });
        
                    var g3 = new JustGage({
                        id: "g3", 
                        value: <%=temperature3%>, 
                        min: 0,
                        max: 100,
                        gaugeColor: "#999966",
                        title: "F°",
                        label: "",
                        levelColorsGradient: false
                    });
                };
            </script>
        </div>
    </form>

</body>
</html>
