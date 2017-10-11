<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="home_page.aspx.cs" Inherits="Visitors_home_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 <style type="text/css">
        .btnstyle
        {
            margin-top: 25px;
            color: #fff;
            font-size: 12px;
            line-height: 20px;
            display: inline-block;
            padding: 4px 17px 5px;
            background-color: #60bf93;
        }
        
        .btnstyle:hover
        {
            background-color: #E14F42;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/thumbs.css">
    <link rel="stylesheet" href="css/slider.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js" type="text/jscript"></script>
    <script src="js/jquery-migrate-1.2.1.js" type="text/jscript"></script>
    <script src="js/script.js" type="text/jscript"></script>
    <script src="js/superfish.js" type="text/jscript"></script>
    <script src="js/sForm.js" type="text/jscript"></script>
    <script src="js/jquery.ui.totop.js" type="text/jscript"></script>
    <script src="js/jquery.equalheights.js" type="text/jscript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/jscript"></script>
    <script src="js/jquery.iosslider.min.js" type="text/jscript"></script>
    <script>
        $(document).ready(function () {
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    </script>
    <script>
        document.getElementById("li6").className = "current";
    </script>
    <div class="fluidHeight container_12">
        <div class="sliderContainer">
            <div class="iosSlider">
                <div class="slider">
                    <div class="item item1">
                        <div class="inner">
                            <div class="text1">
                                <span>Join our campaigns and give
                                    <br>
                                    hope to homeless people</span></div>
                        </div>
                    </div>
                    <div class="item item2">
                        <div class="inner">
                            <div class="text1">
                                <span>Make the right choice!
                                    <br>
                                    Help those who are in need.</span></div>
                        </div>
                    </div>
                    <div class="item item3">
                        <div class="inner">
                            <div class="text1">
                                <span>Our mission is to engage more people in the fight
                                    <br>
                                    for better life of needy people</span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slideSelectors">
                <div class="item selected">
                </div>
                <div class="item">
                </div>
                <div class="item">
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="ic">
            March 24, 2014!</div>
        <div class="container_12">

        <div class="grid_5 prefix_1">
                <h2>
                    Our Mission</h2>
                <div class="rel1">
                    <p>
                        Ensuring our country is your safe and secure best home is our mission. </p>
                 
           To do this  the Ministry of Home Affairs’ departments and statutory boards are united as partners
            of one team.


                       <%-- <p>
                          Ensuring our country is your safe and secure best home is our mission. To do this
            the Ministry of Home Affairs’ departments and statutory boards are united as partners
            of one team.
                        </p>--%>



                </div>
                <a href="about_us.aspx" class="btn">Learn More</a>
            </div>

            <div class="grid_6">
              <h2>
                   User Login</h2>
                  
                    <table width="100%">
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                <td>
                    User name :
                </td>
                <td>
                    <asp:TextBox ID="txt_user_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_user_name"
                        Display="None" ErrorMessage="please insert user name"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator4">
                    </asp:ValidatorCalloutExtender>
                    
                </td>
            </tr>
            <tr>
                <td>
                    password :
                </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_password"
                        Display="None" ErrorMessage="please insert password"></asp:RequiredFieldValidator>
                   <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                    
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                  <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000066" NavigateUrl="forgetpwd.aspx">Forget Password</asp:HyperLink><br />
                    <asp:Button ID="btn_login" CssClass="btnstyle" runat="server" Text="Login" 
                        onclick="btn_login_Click" />
                 
                </td>
               
            </tr>
            <tr>
            <td>
            </td>
            <td>
              <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            </tr>
        </table>





                   
                                   <%--<h2>
                    Meet Our Team</h2>
                <img src="images/re3.jpg" alt="" width="220" height="153" class="img_inner fleft">
                <div class="extra_wrapper">
                    <p class="col2">
                        <a href="#">Cras facilisis, nulla vel viverra tor, leo magna sodales felis, quis
                        </a>
                    </p>
                    Proin pharetra luctus diamer scelerisque eros convallisa
                    <br>
                    <a href="#" class="btn">Learn More</a>
                </div>--%>



                <div class="clear">
                </div>
            </div>
            
        </div>
        <div class="hor">
        </div>
        <div class="container_12">
            <div class="grid_3">
                <h2>
                    Latest News</h2>
                <asp:DataList runat="server" ID="ddl_news" Width="710" RepeatColumns="1" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <ul class="list">
                            <li><a href='<%# "news_details.aspx?id="+Eval("int_news_id") %>'>
                               <time datetime=""> <%# Eval("date_date","{0:dd}")%><span><%# Eval("date_date","{0:MM}")%></span></time>
                                   
                                       
                                 <%--   <time datetime="2014-01-01">29<span>Jan</span></time>--%>
                               
                                <div class="extra_wrapper">
                                    <div class="title col2">
                                        <h4>
                                            <%# Eval("str_news_title")%></h4>
                                    </div>
                                    <%# Eval("str_short_desc")%>
                                </div>
                            </a></li>
                        </ul>
                    </ItemTemplate>
                </asp:DataList>
                <%--<h2>Latest News</h2>
					<ul class="list">
						<li>
							<time datetime="2014-01-01">29<span>Jan</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Vivamuagna</a></div>
								amus at magn
								malesuada fauc
							</div>
						</li>
						<li>
							<time datetime="2014-01-01">02<span>Feb</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Dereamuagne</a></div>
								amus at magn
								malesuada faut
							</div>
						</li>
						<li>
							<time datetime="2014-01-01">20<span>Feb</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Hovamuagrt</a></div>
								emus at mago malesuada fau
							</div>
						</li>
						<li>
							<time datetime="2014-01-01">05<span>Mar</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Meloamuar</a></div>
								ferus at magne malesuada faui
							</div>
						</li>
					</ul>--%>






                    
                                   <%--<h2>
                    Meet Our Team</h2>
                <img src="images/re3.jpg" alt="" width="220" height="153" class="img_inner fleft">
                <div class="extra_wrapper">
                    <p class="col2">
                        <a href="#">Cras facilisis, nulla vel viverra tor, leo magna sodales felis, quis
                        </a>
                    </p>
                    Proin pharetra luctus diamer scelerisque eros convallisa
                    <br>
                    <a href="#" class="btn">Learn More</a>
                </div>--%>



               <%-- <blockquote class="bq1">
                    <div class="title">
                       Meet Our Team </div>
                         <img src="images/re3.jpg" alt="" width="220" height="153" class="img_inner fleft">
                 cilisis, nulla vel viverra tor, leo magna sodales felis, quis
                        Proin pharetra luctus diamer scelerisque eros convallisa
                   
                   
                </blockquote>--%>

                <blockquote class="bq1">
						<div class="title"> Meet Our Team</div>
                           <img src="images/re3.jpg" alt="" width="220" height="153" class="img_inner fleft">
						 <p >
                             Our volunteers</p>
                   <%-- </p><center>
                    Proin pharetra luctus diamer scelerisque eros convallisa
					</center>--%>
					</blockquote>


            </div>
            <div class="grid_9">
                <h2>
                    Disaster
                </h2>
                <asp:DataList runat="server" ID="ddl_place" Width="710" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <ul id="da-thumbs" class="da-thumbs">
                            <li><a href='<%# "disaster_details.aspx?id="+Eval("int_disaster_id") %>'>
                                <img src='<%# "../upload/disaster/"+Eval("str_img") %>' width="204" height="160"
                                    alt="">
                                <%--    <h4>
                                    <%# Eval("str_disaster_name")%></h4>--%>
                            </a></li>
                        </ul>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
