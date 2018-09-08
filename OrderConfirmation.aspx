<%@ Page Title="Order Confirmation" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="OrderConfirmation.aspx.cs" Inherits="OrderConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr valign="top">
            <td colspan="4" valign="top">
                <div style="background-color: #DADADA" class="lbl">
                    Order Confirmation:</div>
                 </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
            <asp:Image ID="Image1" runat="server"   ImageUrl="~/Logo/Icon_Available.gif" />
                &nbsp;<asp:Label ID="lblmsg" runat="server" 
                    Text="Your Order Has been successfully Placed...and Your Transaction ID is:" 
                    ForeColor="#333333" CssClass="lbl"></asp:Label>
                &nbsp;<asp:Label ID="lbl_tranid" runat="server" Text="TransactionID" 
                    ForeColor="#990000" CssClass="lbl"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


