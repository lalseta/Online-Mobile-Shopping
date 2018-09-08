<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

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
            width: 526px;
        }
        .style15
        {
            width: 133px;
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

        .style16
        {
            width: 139px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
   
    <table class="lbl">
        <tr>
            <td colspan="5" valign="top">
                <div style="background-color: #D7D7D7; height:25px;" class="lbl">
                    My Profile</div>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                First Name:</td>
            <td class="style15">
                <asp:TextBox ID="txt_fname" runat="server" CssClass="lbl"></asp:TextBox>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                Last Name:</td>
            <td class="style15">
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                Email ID:</td>
            <td class="style15">
                <asp:TextBox ID="txt_emailid" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_emailid" ErrorMessage="Email Id Req." ForeColor="Red" CssClass="lbl"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_emailid" ErrorMessage="Email Id Not Valid." 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="lbl"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                Mobile Number:</td>
            <td class="style15">
                <asp:TextBox ID="txt_mno" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txt_mno" ErrorMessage="10 Digit Req." ForeColor="Red" 
                    ValidationExpression="([0-9]{10}|[0-9]{5}\s[0-9]{5})" CssClass="lbl"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btn_save" runat="server" onclick="btn_save_Click" 
                    Text="Save Changes" CssClass="btn"/>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="3">
                <asp:Panel ID="Panel1" runat="server" CssClass="lbl">
                    <asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Logo/Icon_Available.gif" />
                    &nbsp;Your Profile Have Been Successfully Updated.</asp:Panel>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder4" >
    <table class="style1">
        <tr valign="top">
            <td>
                <div style="background-color: #DADADA">
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


