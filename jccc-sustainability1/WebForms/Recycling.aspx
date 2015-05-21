<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recycling.aspx.cs" Inherits="jccc_sustainability1.WebForms.Recycling" %>

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
    <script src="../Scripts/chartist-plugin-tooltip.js"></script>
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
                            <h1>Single Stream Recycling</h1>
                        </div>
                        <!-- end page-header -->

                        <p class="lead">
                            Here you will find the latest data from all the single stream recycling done in JCCC.
                        </p>
                    </div>
                    <!-- end well -->

                </div>
                <!-- end col-12 -->
            </div>
            <!-- end bigCallout -->
          
            <hr />

            <div class="row tfwc" id="lineC">
                <div class="col-12">
                    <h2>Recycled Materials by weight (tons)</h2>
                    <div id="matPie" class="ct-chart ct-major-eleventh"></div>
                </div>
                <!-- end col-12 -->
            </div>
            <br />
            <br />
            <br />
            <br />
            <hr />
            <div class="row" id="weCarbon">
                <div class="col-sm-6 feature">
                    <h2>Total Weight Combined (tons)</h2>
                    <div id="totalRec" class="ct-chart ct-golden-section"></div>
                </div>
                <!-- end col-6 -->
                <div class="col-sm-6 feature">
                    <h2>Trash vs Recycled</h2>
                    <div id="RT" class="ct-chart ct-golden-section "></div>
                </div>
                <!-- end col-6 -->
            </div>
            <hr />
           


            <div class="row"  >
                <div class="col-sm-12 feature">
                    
                        <h2>Money generated by Year</h2>
                        <div id="money" class="ct-chart ct-golden-section "></div>
                     
                </div>
          
            </div>
   

            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <h6>Copyright &copy; 2015</h6>
                        </div>
                        <!-- end col-sm-2 -->

                        <div class="col-sm-4">
                            <h6>About Us</h6>
                            <p>The Center for Sustainability at JCCC is providing free access to the data generated in the compost and recycling processes.</p>
                        </div>
                        <!-- end col-sm-4 -->

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
                            <h6>Coded by Nesta Wilson, Brian Boeding and Nestor Rosales</h6>
                        </div>
                        <!-- end col-sm-2 -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </footer>


            <style>
                .ct-chart {
                    margin: 0 auto;
                    height: 550px;
                    padding-left: 1em;
                    padding-top: 20px;
                }

                .ct-labels {
                }

                .ct-chart .ct-slice {
                    opacity: 0.8;
                    transition: all 0.2s ease-in-out;
                    transform-origin: center center;
                }

                .ct-chart:hover .ct-slice:hover {
                    opacity: 1;
                    transform: scale(1.05);
                }

                .ct-chart .ct-bar {
                    stroke-width: 20px;
                }

                .ct-chart .ct-label.ct-horizontal {
                    text-align: center;
                }
            </style>
            
            <script>/*Recycling Bar Chart*/
                new Chartist.Bar('#totalRec', {
                    labels: <%=chartLabelsB%>,
                    series: [
                     [ <%=chartDataB%>]
                    ]
                }, {
                    seriesBarDistance: 30
                });
                </script>
            <script>/*RecyclingTrash Bar Chart*/
                new Chartist.Bar('#RT', {
                    labels: <%=chartLabelsB%>,
                    series: [
                     [ <%=chartDataB%>],
                     [ <%=chartDataBT%>]
                    ]
                }, {
                    seriesBarDistance: 30
                });
                </script>
             <script>/*Money Bar Chart*/
                 new Chartist.Bar('#money', {
                     labels: <%=chartLabelsM%>,
                    series: [
                     [ <%=chartDataM%>]
                    ]
                }, {
                    seriesBarDistance: 30
                });
                </script>
            <script>/*Pie Chart*/
                var data = {
                    labels: <%=chartLabels%>,
                    series: [<%=chartData%>]
                };

                var options = {
                    labelInterpolationFnc: function(value) {
                        return value[0]
                    },
                
                    plugins: [Chartist.plugins.tooltip()]
                    
                
                };

                var responsiveOptions = [
                  ['screen and (min-width: 640px)', {
                      chartPadding: 30,
                      labelOffset: 200,
                      labelDirection: 'explode',
                      labelInterpolationFnc: function(value) {
                          return value;
                      }
                  }],
                  ['screen and (min-width: 1024px)', {
                      labelOffset: 137,
                      chartPadding: 20
                  }]
                ];

                new Chartist.Pie('#matPie', data, options, responsiveOptions);

               
            </script>

        </div>
    </form>
</body>
</html>
