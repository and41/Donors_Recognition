<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Leadership.aspx.cs" Inherits="Leadership" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/css/Leadership.css" rel="stylesheet" type="text/css" />
    <link href="css/LeadershipFund.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate><table id="viewTable"><caption>Special Endowed Funds</caption></HeaderTemplate>
            <ItemTemplate>
                <div>
                        <tr class="<%# Container.ItemIndex % 2 == 0 ? "rowOdd" : "rowEven" %>">
                <td><asp:Label ID="donorFund" Text='<%# Eval("donorFund") %>' runat="server"></asp:Label></td>
                <td><asp:Label ID="establishedBy" Text='<%# Eval("establishedBy") %>' runat="server"></asp:Label></td>
                        </tr>
                </div>
            </ItemTemplate>
            <FooterTemplate></table></FooterTemplate>
        </asp:Repeater>
        </form>






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
