<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="jccc_sustainability1.WebForms.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="keywords" content="jccc sustainability" />
	<meta name="description" content="JCCC Sustainability" /> 
<link rel="stylesheet" href="../css/Styles.css" />
    <title>JCCC Sustainability</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         
        <div id="container">
		<header>
			<img src="../img/JCCCAppLogo.png" alt="Composting and Recycling JCCC" class="studiojLeft"/>
             <br /> <br /> <br />
			<hgroup>
				<h1>Johnson County Community College</h1>
				<h2>Composting &amp; Recycling</h2>
			</hgroup>
				
				<nav>
					<ul>
						<li><asp:LinkButton ID="Home" runat="server"  Text="Home" OnClick="Home_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="Composting" runat="server"  Text="Composting" OnClick="Composting_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="Recycling" runat="server"  Text="Recycling" OnClick="Recycling_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="Data" runat="server"  Text="Data" OnClick="Data_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="About" runat="server"  Text="About" OnClick="About_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="ContactUs" runat="server"  Text="Contact Us" OnClick="ContactUs_Click"></asp:LinkButton></li>
                        <li><asp:LinkButton ID="Login" runat="server"  Text="Login" OnClick="Login_Click"></asp:LinkButton></li>
					</ul>
                   
				</nav>
			
		</header>
			
			<!--div id="banner">
				<p><img src="img/studioJ.png" alt="" />
					</a>
				</p>
			</div-->
			
			<div id="content">
				
				<article>
					<h3>Site Under Construction</h3>
				</article>
				
				<article>
					<div id="coin-slider"> 
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/1.jpg' /> <span> Some Text 1</span></a> 
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/2.jpg' /> <span> Some Text 2 </span></a>
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/3.jpg' /> <span> Some Text 3 </span> </a> 
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/4.jpg' /> <span> Some Text 4 </span> </a>
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/5.jpg' /> <span> Some Text 5 </span></a>
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/6.jpg' /><span> Some Text 6 </span> </a> 				
					</div>
				</article>
				
			</div>
			
			<div id="sidebar">
				
				<aside id="brief">
                    <h3>NEWS: </h3>
			
				</aside>
				
				<aside id="recent">
					<h3>Follow Us</h3>
					<img src="../img/social.jpg" title="Facebook and Twitter" border="0"  id="socialI"/></>
				</aside>
				
			</div>
			
			<footer>
			
				<nav>
					<ul>
						<li><asp:LinkButton ID="Home2" runat="server"  Text="Home" OnClick="Home_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="Composting2" runat="server"  Text="Composting" OnClick="Composting_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="Recycling2" runat="server"  Text="Recycling" OnClick="Recycling_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="Data2" runat="server"  Text="Data" OnClick="Data_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="About2" runat="server"  Text="About" OnClick="About_Click"></asp:LinkButton></li>
						<li><asp:LinkButton ID="ContactUs2" runat="server"  Text="Contact Us" OnClick="ContactUs_Click"></asp:LinkButton></li>
                        <li><asp:LinkButton ID="Login2" runat="server"  Text="Login" OnClick="Login_Click"></asp:LinkButton></li>
					</ul>
				</nav>
				
				<p>&copy; Copyright 2015. All Rights Reserved Group 1</p>
			
			</footer>
		</div>

		
	 <script type="text/javascript">
	     $(document).ready(function () {
	         $('#coin-slider').coinslider();
	     });
	</script>
	<!--[if lte IE 7]><script type="text/javascript" src="site/imgSizer.js"></script>
	<script type="text/javascript">
		window.onload = function() {
		imgSizer.collate();
		}
	</script><![endif]-->
	<!--[if lte IE 6]><script type="text/javascript" src="share/ddpng.js"></script>
	<script type="text/javascript">
		DD_belatedPNG.fix('body, #page, h1, h1 img, ul.nav, ul.nav a, .main h2, .main h2 b, .footer');
	</script><![endif]-->
    </div>
    </form>
		
	</body>
</html>
