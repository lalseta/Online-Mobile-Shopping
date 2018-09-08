<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="ForgotPwd.aspx.cs" Inherits="ForgotPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 181px;
            font-family:Verdana;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td colspan="3">
                <div style="background-color: #D7D7D7; height:25px;" class="lbl">
                     Forgot Password</div></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
              <asp:Panel ID="pnl_invalid" runat="server" CssClass="lbl">
                    <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Logo/NotAvailable.jpg" Width="15px" />
                    &nbsp;Invalid Email ID.</asp:Panel></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Enter Your Email ID:</td>
            <td>
                <asp:TextBox ID="txtfpwd" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfpwd" ErrorMessage="EmailId Req." ForeColor="Red" 
                    ValidationGroup="fpwd" CssClass="lbl"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtfpwd" ErrorMessage="Plz Enter Valid Email Id." 
                    ForeColor="Red" ValidationGroup="fpwd" CssClass="lbl" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btnpwd" runat="server" Text="Send" CssClass="btn" 
                    onclick="btnpwd_Click" ValidationGroup="fpwd" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="pnl_valid" runat="server" CssClass="lbl" >
                    <asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Logo/Icon_Available.gif" />
                    &nbsp;Your Password Have Been Successfully Send To your Email id.</asp:Panel></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


