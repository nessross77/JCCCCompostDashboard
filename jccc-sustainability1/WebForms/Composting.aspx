<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Composting.aspx.cs" Inherits="jccc_sustainability1.WebForms.Composting" %>

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
					<h3><strong>Purpose</strong></h3>
                    <p>Johnson County Community College&#8217;s (JCCC) compost initiative was launched in June 2011 under the vision and direction of&#160;<a href="mailto:mrea@jccc.edu" title="Email Michael">Michael Rea</a>, Recycling and Waste Minimization Coordinator with the JCCC Center for Sustainability, and in partnership with Dining Services and the&#160;<a href="../campus-farm.html" title="Campus Farm web page">Campus Farm</a><a href="http://blogs.jccc.edu/sustainability/projects-programs/jccc-campus-farm/" title="JCCC Campus Farm"></a>. At JCCC, composting is about more than simply waste diversion and pollution mitigation, though that is a large part of it; it is also about conserving a valuable resource that can be reused on our campus farm, which returns fresh, seasonal produce to Dining Services for use in facilities on campus.</p>
                    <h3><strong>How JCCC&#8217;s Composting System Works</strong></h3>
                    <iframe align="right" frameborder="0" height="225" src="http://www.youtube.com/embed/7BTiNx-GoNA?rel=0" width="400"></iframe> 
                    <p>Each day, 400 pounds of food waste is collected in bins by Dining Services. Work study students employed by the Center for Sustainability transport the food to our 6-cubic-yard in-vessel composter, where it is mixed with reclaimed sawdust from JCCC woodworking projects and local mills and churned by an auger before thoroughly breaking down in the machine for two weeks.After curing in piles for 4-6 weeks the compost is transported to the farm for distribution on its 2.5 acres of produce plants. The farm is a classroom for our sustainable agriculture certificate program, in which students learn farm to market skills, plant and harvest the entire acreage devoted to agriculture on the northwest corner of campus. The fruits of their labor are then sold back to Dining Services for preparation for our student diners and catering events; to our culinary department for practice working with fresh, seasonal produce; to a local CSA or Community Supported Agriculture program; and to our own students, staff and faculty in a seasonal Friday market in conjunction with the pastry sale.</p>
                    <h3><strong>In-vessel composting</strong></h3>
                    <p><img align="left" alt="In-Vessel composter" hspace="8" src="../img/in-vessel-composting.jpg"/>In-vessel composting is an industrial form of composting biodegradable waste that occurs in enclosed reactors. These generally consist of metal or plastic tanks or concrete bunkers in which air flow and temperature can be controlled, using the principles of a &#8220;bioreactor&#8221;, with temperature and moisture conditions monitored using probes in the mass to allow maintenance of optimum aerobic decomposition conditions.</p>
                    <h3><strong>Benefits</strong></h3>
                    <p>One measurable effect has been the reduction in food waste being sent to landfill. By collecting pre-consumer waste from all of our campus dining and catering kitchens; our culinary student learning labs; as well as post-consumer waste at the end of a shift and from certain controlled facilities on campus we have decreased the amount of landfill waste by an average of 2000 pounds every week, for a total of nearly 17 tons of diverted and reused waste in the project&#8217;s first 6 months alone.</p>
                    <p>One of the tangible benefits of the that food waste diversion has been a cost reduction in&#160;waste hauling fees&#160;at the rate of $86 per ton diverted. Composting has also saved water and wastewater costs by reducing the use of the kitchen&#8217;s garbage disposals. Daily use of these disposals for dumping prepared and post-consumer leftovers has decreased significantly since the compost program began, not only saving water but also preventing increased biochemical oxygen demand from food waste entering the watershed; the later causing depletion of dissolved oxygen, loss of river life and decreased water quality should it perpetuate. Intangible benefits include the elimination of methane &#8211; a greenhouse gas 23 times more potent than CO2 &#8211; emissions that would have been produced by the 17 tons of land-filled food had we not diverted it to our composter. Thus the compost initiative not only furthers our provision of highest-quality service to our students, but also promotes the college&#8217;s responsible stewardship of natural resources in Johnson County and our commitment to champion sustainability in the campus operations and infrastructure.</p>
                    <p>The benefits of this initiative have been plentiful, including: costs savings, improved waste reduction and landfill diversion, pollution prevention, valuable campus partnerships, excellent service to and work opportunities for our students, and educational experiences for they as well as faculty and staff. See below for a few specific examples.</p>
                    <ul>
                        <li>The program will serve as a learning lab for environmental science and sustainable agriculture students.</li>
                        <li>$5,000 savings from diverted grounds waste per year.</li>
                        <li>By diverting pre-consumer food waste from the landfill, JCCC currently saves an estimated $3,000 per year in waste hauling fees.</li>
                        <li>JCCC will produce 22,200 lbs of compost per year, which replaces the need for $20,000 worth of natural fertilizers each year for the&#160;Campus Farm. (The compost JCCC produces each year has an estimated market value of&#160;$5,700.)</li>
                        <li>Diversion of 6 tons of CO2 from the atmosphere per week.</li>
                        <li>Diversion of 3.3 tons of methane gas from the atmosphere annually.&#160; (Methane gas is 21 times as potent as the better known greenhouse gas, CO2.)</li>
                        <li>Be sure to check out our&#160;<a href="composting-dashboard.html" title="Interactive display of JCCC composting statistics">Composting System Dashboard</a>&#160;for all of our current composting data including how much food waste we&#8217;ve processed as well as current temperatures, pH levels, and more!</li>
                    </ul>
                    <h4><strong>Student Produced Video About the JCCC Composting Program:</strong></h4>
                    <iframe frameborder="0" height="225" src="http://www.youtube.com/embed/FSZPuGM7BW0?rel=0" width="400"></iframe> 
                    <p>A backpack journalism project about sustainability at JCCC created by reporter Teresa Taylor and videographers Amy Follmer and Brittney Spearman</p>
                </article>
				
				<!--article>
					<div id="coin-slider"> 
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/1.jpg' /> <span> Some Text 1</span></a> 
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/2.jpg' /> <span> Some Text 2 </span></a>
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/3.jpg' /> <span> Some Text 3 </span> </a> 
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/4.jpg' /> <span> Some Text 4 </span> </a>
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/5.jpg' /> <span> Some Text 5 </span></a>
						<a href="http://www.jccc.edu/sustainability/index.html" target="_blank"> <img src='coin-slider/images/6.jpg' /><span> Some Text 6 </span> </a> 				
					</div>
				</article-->
				
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