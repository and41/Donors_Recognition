<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donors.aspx.cs" Inherits="Donors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donors</title>
    <link href="~/css/Donors.css" rel="stylesheet" type="text/css" />
    <link href="css/Donor_Accordian.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    
    <script src="Javascript/Donor_JS/Donor_JS.js"></script>
</head>
<body>
    <div id="accordion" runat="server">
    </div>
    <a href="Edit.aspx">Back to Donors</a>
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
</body>
</html>
