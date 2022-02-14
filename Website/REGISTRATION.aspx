﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTRATION.aspx.cs" Inherits="Website.REGISTRATION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="SRC/css/bootstrap.min.css" >
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="SRC/css/style.css" rel='stylesheet' type='text/css' />
    <link href="SRC/css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="SRC/css/font.css" type="text/css"/>
    <link href="SRC/css/font-awesome.css" rel="stylesheet"> 
    <!-- //font-awesome icons -->
    <script src="SRC/js/jquery2.0.3.min.js"></script>
</head>
<body>

    <div class="reg-w3">
    <div class="w3layouts-main">
	    <h2>Register Now</h2>
		    <form id="form2" runat="server">
			    
                <asp:TextBox ID="TextBox1" runat="server" type="text" class="ggg" name="Name" placeholder="NAME" required=""></asp:TextBox>

			    
                <asp:TextBox ID="TextBox2" runat="server" type="email" class="ggg" name="Email" placeholder="E-MAIL" required=""></asp:TextBox>

			    
                <asp:TextBox ID="TextBox3" runat="server" type="text" class="ggg" name="Phone" placeholder="PHONE" required=""></asp:TextBox>

			    
                <asp:TextBox ID="TextBox4" runat="server" type="password" class="ggg" name="Password" placeholder="PASSWORD" required=""></asp:TextBox>

			    <h4><input type="checkbox" />I agree to the Terms of Service and Privacy Policy</h4>
			
				    <div class="clearfix"></div>

				    
                    <asp:Button ID="Button1" runat="server" Text="Submit" type="submit" name="register" />

		    </form>
		    <p>Already Registered.<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LOGIN.aspx">Login</asp:HyperLink></p>
        
    </div>
    </div>
    <script src="SRC/js/bootstrap.js"></script>
    <script src="SRC/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="SRC/js/scripts.js"></script>
    <script src="SRC/js/jquery.slimscroll.js"></script>
    <script src="SRC/js/jquery.nicescroll.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="SRC/js/flot-chart/excanvas.min.js"></script><![endif]-->
    <script src="SRC/js/jquery.scrollTo.js"></script>

    
</body>
</html>
