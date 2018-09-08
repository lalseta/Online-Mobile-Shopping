<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style8
        {
            width: 192px;
        }
        .style9
        {
            width: 192px;
            height: 24px;
        }
        .style11
        {
            width: 115px;
        }
        .style12
        {
            height: 24px;
            width: 115px;
        }
        .style13
        {
    }
        .style14
        {
            height: 23px;
        }
        .style16
        {
            height: 23px;
            width: 315px;
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

        .style18
        {
            width: 315px;
        }
        .style19
        {
            width: 130px;
        }
        .style20
        {
            height: 24px;
            width: 130px;
            font-size: small;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2" >
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <p class="lbl"> Create an account or Login</p>
    <table class="lbl">
        <tr>
            <td class="style8">
                New Customer</td>
            <td class="style19">
                &nbsp;</td>
            <td rowspan="5">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <div>
                        <table class="style1">
                            <tr>
                                <td class="style18">
                                    Registered Customers</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13" colspan="2">
                                    <asp:Label ID="lblerror" runat="server" ForeColor="Red" 
                                        Text="Invalid UserName or Password." Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    UserName:</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="usernamereq" runat="server" 
                                        ErrorMessage="Username Cannot Empty" ForeColor="Red" 
                                        ControlToValidate="txt_username" Display="None" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="usernamereq_ValidatorCalloutExtender" 
                                        runat="server" Enabled="True" TargetControlID="usernamereq" BehaviorID="btn_login">
                                    </asp:ValidatorCalloutExtender>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    Password:</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="passwordreq" runat="server" 
                                        ControlToValidate="txt_pass" ErrorMessage="Password must not empty" 
                                        ForeColor="Red" Display="None" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="passwordreq_ValidatorCalloutExtender" 
                                        runat="server" Enabled="True" TargetControlID="passwordreq">
                                    </asp:ValidatorCalloutExtender>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style16">
                                    &nbsp;</td>
                                <td class="style14">
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:LinkButton ID="forgotpwd" runat="server" CausesValidation="False" 
                                        onclick="forgotpwd_Click" ForeColor="#404040">Forgot Password!</asp:LinkButton>
                                    &nbsp;<asp:Button ID="btn_login" runat="server" Text="Login" 
                                        onclick="btn_login_Click1" ValidationGroup="login" CssClass="btn"/>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            </div>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                If U dont have an account then</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                plz click on create account!</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Button ID="btn_create" runat="server" Text="Create An Account!" 
                    onclick="btn_create_Click1" CausesValidation="False"  CssClass="btn"/>
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>

</asp:Content>


