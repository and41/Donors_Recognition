<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html> <!-- xmlns="http://www.w3.org/1999/xhtml" -->
<head runat="server">
    <title>Home</title>
    <link href="~/css/Home.css" rel="stylesheet" type="text/css" />
    <link href="~/css/Swiper_Css/swiper.min.css" rel="stylesheet" type="text/css" />
    <!--Keep Swiper_Css Here at end, else will mess with Swiper in Page-->
    <link href="css/Swiper_Css/Home_Swiper.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <script type="text/javascript" src="Javascript/Swiper/swiper.min.js"></script>
    
    <div class="swiper-container" style="position: fixed; margin-top: -50px;">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/1)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/2)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/3)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/4)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/5)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/6)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/7)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/8)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/9)"></div>
            <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/10)"></div>
        </div>

        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
    <footer>
        <div class="footer">
        <a href="Home.aspx"><div class="menubar one">
            <img src="Images/Home_Assets/Icons/Home_Icon.png" alt="" class="icon" />
            <p class="label">Home</p>
        </div></a>
        <a href="Donors.aspx"><div class="menubar two">
            <img src="Images/Home_Assets/Icons/Donor_Icon.png" alt="" class="icon" />
            <p class="label">Donors</p>
        </div></a>
        <a href="Leadership.aspx"><div class="menubar three">
            <img src="Images/Home_Assets/Icons/Leadership_Icon.png" alt="" class="icon" />
            <p class="label">Leadership</p>
        </div></a>
        <a href="History.aspx"><div class="menubar four">
            <img src="Images/Home_Assets/Icons/History_Icon.png" alt="" class="icon" />
            <p class="label">History</p>
        </div></a>
        <a href="Gallery.aspx"><div class="menubar five">
            <img src="Images/Home_Assets/Icons/Gallery_Icon.png" alt="" class="icon" />
            <p class="label">Gallery</p>
        </div></a>
        </div>
    </footer>

    <!-- Keep Line of Script Reference at End, Else will mess with Swiper in Page-->
    <script type="text/javascript" src="Javascript/Swiper/Home_Swiper.js"></script>
</body>
</html>
