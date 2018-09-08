 <%@ Page Title="Change Password" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="ChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
        }
        .style14
        {
        	font-family:Verdana;
        }
        .style15
        {
            width: 151px;
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
    contentplaceholderid="ContentPlaceHolder2" >
    <table class="style1">
        <tr valign="top">
            <td colspan="3" valign="top">
                 <div style="background-color: #D7D7D7; height:25px;" class="lbl">
                     Change Password</div></td>
        </tr>
        <tr>
            <td colspan="3">
               <asp:Panel ID="pnl_invalid" runat="server" CssClass="lbl">
                    <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Logo/NotAvailable.jpg" Width="15px" />
                    &nbsp;Invalid Password.</asp:Panel>
               </td>
        </tr>
        <tr>
            <td class="style14">
                Old Password:</td>
            <td class="style15">
                <asp:TextBox ID="txt_oldpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="req_oldpwd" runat="server" 
                    ControlToValidate="txt_oldpwd" ErrorMessage="Old Password Req." 
                    ForeColor="Red" ValidationGroup="required" CssClass="lbl"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                New Password:</td>
            <td class="style15">
                <asp:TextBox ID="txt_newpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_newpwd" ErrorMessage="Must contain 8 or more character" 
                    ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*[a-z]).*&#8377;" 
                    ValidationGroup="required" CssClass="lbl"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="req_newpwd" runat="server" 
                    ControlToValidate="txt_newpwd" ErrorMessage="New Password Req." 
                    ForeColor="Red" ValidationGroup="required" CssClass="lbl"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Confirm Password:</td>
            <td class="style15">
                <asp:TextBox ID="txt_cnfpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_newpwd" ControlToValidate="txt_cnfpwd" 
                    ErrorMessage="Password Does Not Match." ForeColor="Red" 
                    ValidationGroup="required" CssClass="lbl"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="req_conpwd" runat="server" 
                    ControlToValidate="txt_cnfpwd" ErrorMessage="Confirm Password Req." 
                    ForeColor="Red" ValidationGroup="required" CssClass="lbl"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_changepwd" runat="server" Text="Change Password" 
                    onclick="btn_changepwd_Click" ValidationGroup="required"  CssClass="btn"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" colspan="3">
               <asp:Panel ID="pnl_valid" runat="server" CssClass="lbl">
                    <asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Logo/Icon_Available.gif" />
                    &nbsp;Your Password Have Been Successfully Updated.</asp:Panel>
                    </td>
        </tr>
        <tr>
            <td class="style14">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
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


