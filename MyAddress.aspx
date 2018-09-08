<%@ Page Title="My Address" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="MyAddress.aspx.cs" Inherits="MyAddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
        }
        .style13
        {
        }
        .style14
        {
            width: 137px;
        }
        
.btn 
{
	cursor:pointer;
	-moz-box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	-webkit-box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	background-color:#79bbff;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
	border:1px solid #84bbf3;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	font-weight:bold;
	padding:3px 18px;
	text-decoration:none;
	text-shadow:0px 0px 0px #528ecc;
}.btn:hover {
	background-color:#378de5;
}.btn:active {
	position:relative;
	top:1px;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <table class="style1">
        <tr valign="top">
            <td>
                <div style="background-color: #DADADA" class="lbl">
                My Account
                </div>
            </td>
        </tr>
        <tr>
        <td>
        <div class="nav-container">
                <ul class="nav">
                        <li class="li">
                            <a href="MyProfile.aspx">My Profile</a>
                        </li>
                         <li class="li">
                            <a  href="MyOrder.aspx">My Orders</a>
                        </li>
                         <li class="li">
                            <a href="MyAddress.aspx">Address</a>
                        </li>
                         <li class="li">
                            <a href="ChangePwd.aspx">Change Password</a>
                        </li>
                </ul>
        </div>
        </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
     
    <table class="style1">
        <tr>
            <td colspan="4" valign="top">
             <div style="background-color: #DADADA">
                 My Address</div>
             </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                First Name:</td>
            <td>
                <asp:TextBox ID="txt_fname" runat="server" Text='<%#Eval("firstname") %>'></asp:TextBox>
            &nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Last Name:</td>
            <td>
                <asp:TextBox ID="txt_lname" runat="server" Text='<%#Eval("lastname") %>'></asp:TextBox>
            &nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Address:</td>
            <td>
                <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" Text='<%#Eval("address") %>'></asp:TextBox>
            &nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                City:</td>
            <td>
                <asp:TextBox ID="txt_city" runat="server" Text='<%#Eval("city") %>'></asp:TextBox>
            &nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Pincode:</td>
            <td>
                <asp:TextBox ID="txt_pin" runat="server" Text='<%#Eval("pincode") %>'></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                State:</td>
            <td>
                <asp:TextBox ID="txt_state" runat="server" Text='<%#Eval("state") %>'></asp:TextBox>
            &nbsp;
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Country:</td>
            <td>
                <asp:DropDownList ID="ddl_country" runat="server">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA </asp:ListItem>
                </asp:DropDownList>
            &nbsp;
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btn_save" runat="server" Text="Save Changes" 
                    onclick="btn_save_Click" CssClass="btn" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Logo/Icon_Available.gif" />
                    &nbsp;Your Address Have Been Successfully Updated.</asp:Panel>
             </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    
</asp:Content>


