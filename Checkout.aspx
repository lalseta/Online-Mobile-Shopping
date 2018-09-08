<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true"
    CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style12
        {
            width: 511px;
        }
    </style>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        
        
        .style11
        {
            width: 30px;
        }
        .style14
        {
            width: 266px;
        }
        .style15
        {
            width: 256px;
        }
        .style16
        {
            width: 266px;
            height: 23px;
        }
        .style17
        {
            width: 39px;
            height: 23px;
        }
        .style18
        {
            width: 256px;
            height: 23px;
        }
    </style>
    <style type="text/css">
        .accordion
        {
            width: 400px;
        }
        
        .accordionHeader
        {
            border: 1px solid #2F4F4F;
            color: Black;
            background-color: White;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }
        
        .accordionHeaderSelected
        {
            border: 1px solid #2F4F4F;
            color: Black;
            background-color: White;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }
        
        .accordionContent
        {
            background-color: White;
            border: 1px dashed #2F4F4F;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
        }
        
        
        
        .style19
        {
        }
        .style21
        {
            width: 511px;
        }
        
        
        
        .style22
        {
            text-decoration: underline;
        }
        .style23
        {
            width: 100%;
        }
        .style28
        {
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
.accordionfont
{
	font-family:Verdana;
	font-weight:lighter;
	font-size:15px;
	
}

    </style>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   <%-- <asp:UpdatePanel ID="update" runat="server">
        <ContentTemplate>--%>
          <%-- <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>--%>
            <table class="style1">
                <tr>
                    <td class="style12">
                        <strong class="accordionfont">Checkout Process:</strong>
                    </td>
                    <td class="style19">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        
                                <asp:Accordion ID="Accordion1" runat="server" SelectedIndex="0" HeaderCssClass="accordionHeader"
                                    HeaderSelectedCssClass="accordionHeaderSelected " ContentCssClass="accordionContent"
                                    RequireOpenedPane="false" TransitionDuration="250" FadeTransitions="true" FramesPerSecond="40"
                                    Style="margin-top: 0px" Width="500px" CssClass="accordionfont">
                                    <Panes>
                                        <asp:AccordionPane ID="AccordionPane1" runat="server">
                                            <Header>
                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Logo/1.png" ImageAlign="AbsMiddle" />
                                                Billing Information:
                                            </Header>
                                            <Content>
                                                <table class="style1" cellspacing="1">
                                                    <tr>
                                                        <td class="style14">
                                                            First Name:
                                                        </td>
                                                        <td style="width: 3px;">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            Last Name:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txt_fname" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:TextBox ID="txt_lname" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_Fname" runat="server" ControlToValidate="txt_fname"
                                                                Display="Dynamic" ErrorMessage="First Name Required" ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:RequiredFieldValidator ID="Req_Lname" runat="server" ControlToValidate="txt_lname"
                                                                Display="Dynamic" ErrorMessage="Last Name Required" ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3" colspan="3">
                                                            Address:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style7" colspan="3">
                                                            <asp:TextBox ID="txt_add1" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_Address" runat="server" ControlToValidate="txt_add1"
                                                                Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            City:
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            State:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txt_city" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:TextBox ID="txt_state" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_City" runat="server" ControlToValidate="txt_city"
                                                                Display="Dynamic" ErrorMessage="City must be Required" ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:RequiredFieldValidator ID="Req_State" runat="server" ControlToValidate="txt_state"
                                                                Display="Dynamic" ErrorMessage="State must be Required" ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Pincode:
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            Country:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txt_pin" runat="server" Width="100%"></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="txt_pin_FilteredTextBoxExtender" runat="server"
                                                                Enabled="True" FilterType="Numbers" TargetControlID="txt_pin">
                                                            </asp:FilteredTextBoxExtender>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:DropDownList ID="ddl_country" runat="server" Width="100%">
                                                                <asp:ListItem>India</asp:ListItem>
                                                                <asp:ListItem>USA</asp:ListItem>
                                                                <asp:ListItem>Australia</asp:ListItem>
                                                                <asp:ListItem>New York</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style16">
                                                            <asp:RequiredFieldValidator ID="Req_Pin" runat="server" ControlToValidate="txt_pin"
                                                                Display="Dynamic" ErrorMessage="Pincode Must Be Required" ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="Reg_Pin" runat="server" ControlToValidate="txt_pin"
                                                                Display="Dynamic" ErrorMessage="Must Be 6 Digit" ForeColor="Red" ValidationExpression="([0-9]{6}|[0-9]{3}\s[0-9]{3})"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td class="style17">
                                                        </td>
                                                        <td class="style18">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Mobile No:
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txt_mno" runat="server" Width="100%"></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="txt_mno_FilteredTextBoxExtender" runat="server"
                                                                Enabled="True" FilterType="Numbers" TargetControlID="txt_mno">
                                                            </asp:FilteredTextBoxExtender>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_Mno" runat="server" ControlToValidate="txt_mno"
                                                                Display="Dynamic" ErrorMessage="Mobile Number Req.." ForeColor="Red" ValidationGroup="Bill"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="Reg_Mno" runat="server" ControlToValidate="txt_mno"
                                                                Display="Dynamic" ErrorMessage="Must be 10 Digit" ForeColor="Red" ValidationExpression="([0-9]{10}|[0-9]{5}\s[0-9]{5})"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:CheckBox ID="ckb_ship" runat="server" Text="Change Shipping." AutoPostBack="true" OnCheckedChanged="ckb_ship_CheckedChanged" />
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15" align="right">
                                                            <asp:Button ID="btn_cnt" runat="server" Text="Proceed To Checkout" OnClick="btn_cnt_Click" ValidationGroup="Bill" CssClass="btn"/>
                                                        </td>
                                                        <tr>
                                                        <td>
                                                        <td>
                                                        <td>
                                                        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="EX7KEUAF6CYJ2">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>
</td>
</td>
</td>
</tr>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </Content>
                                        </asp:AccordionPane>
                                        <asp:AccordionPane ID="AccordionPane2" runat="server">
                                            <Header>
                                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Logo/2.png" ImageAlign="AbsMiddle" />
                                                Shipping Information:
                                            </Header>
                                            <Content>
                                                <table class="style1" cellspacing="1">
                                                    <tr>
                                                        <td class="style14">
                                                            First Name:
                                                        </td>
                                                        <td style="width: 3px;">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            Last Name:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txtship_fname" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:TextBox ID="txtship_lname" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_ShipFname" runat="server" ControlToValidate="txtship_fname"
                                                                Display="Dynamic" ErrorMessage="First Name Required" ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:RequiredFieldValidator ID="Req_ShipLname" runat="server" ControlToValidate="txtship_lname"
                                                                Display="Dynamic" ErrorMessage="Last Name Required" ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3" colspan="3">
                                                            Address:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style7" colspan="3">
                                                            <asp:TextBox ID="txtship_add1" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_ShipAddress" runat="server" ControlToValidate="txtship_add1"
                                                                Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            City:
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            State:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txtship_city" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:TextBox ID="txtship_state" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_ShipCity" runat="server" ControlToValidate="txtship_city"
                                                                Display="Dynamic" ErrorMessage="City must be Required" ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:RequiredFieldValidator ID="Req_ShipState" runat="server" ControlToValidate="txtship_state"
                                                                Display="Dynamic" ErrorMessage="State must be Required" ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Pincode:
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            Country:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txtship_pin" runat="server" Width="100%"></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True"
                                                                FilterType="Numbers" TargetControlID="txtship_pin">
                                                            </asp:FilteredTextBoxExtender>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:DropDownList ID="ddlship_country" runat="server" Width="100%">
                                                                <asp:ListItem>India</asp:ListItem>
                                                                <asp:ListItem>USA</asp:ListItem>
                                                                <asp:ListItem>Australia</asp:ListItem>
                                                                <asp:ListItem>New York</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style16">
                                                            <asp:RequiredFieldValidator ID="Req_ShipPin" runat="server" ControlToValidate="txtship_pin"
                                                                Display="Dynamic" ErrorMessage="Pincode Must Be Required" ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="Reg_ShipPin" runat="server" ControlToValidate="txtship_pin"
                                                                Display="Dynamic" ErrorMessage="Must Be 6 Digit" ForeColor="Red" ValidationExpression="([0-9]{6}|[0-9]{3}\s[0-9]{3})"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td class="style17">
                                                        </td>
                                                        <td class="style18">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            Mobile No:
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style14">
                                                            Gift Message:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txtship_mno" runat="server" Width="100%"></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="True"
                                                                FilterType="Numbers" TargetControlID="txtship_mno">
                                                            </asp:FilteredTextBoxExtender>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style14">
                                                            <asp:TextBox ID="txt_giftmsg" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            <asp:RequiredFieldValidator ID="Req_ShipMno" runat="server" ControlToValidate="txtship_mno"
                                                                Display="Dynamic" ErrorMessage="Mobile Number Req.." ForeColor="Red" ValidationGroup="Ship"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="Reg_Shipmno" runat="server" ControlToValidate="txtship_mno"
                                                                Display="Dynamic" ErrorMessage="Must be 10 Digit" ForeColor="Red" ValidationExpression="([0-9]{10}|[0-9]{5}\s[0-9]{5})"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style15">
                                                            <asp:CheckBox ID="ckb_gft" runat="server" Text="Gift Wrape" />
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style14">
                                                            &nbsp;
                                                        </td>
                                                        <td class="style11">
                                                            &nbsp;
                                                        </td>
                                                        <%--<td class="style15" align="right">                                                
                                                              <asp:Button ID="btn_checkout" runat="server" Text="Proceed To Checkout" ValidationGroup="Ship" onclick="btn_cnt_Click"  CssClass="btn"/>
                                                        
                                                        </td>--%>
                                                        <td>
                                                        Click to go to paypal

</td>
                                                    </tr>

                                                    <tr>
                                                        <td class="style14">
                                                          
                                                        </td>
                                                        <td class="style11">
                                                     
                                                           
                                                        </td>
                                                        <td class="style15">
                                                           
                                                        </td>
                                                        <td>
                                                      
                                                        </td>
                                                        <td>
                                                        
                                                        
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </Content>
                                        </asp:AccordionPane>
                                    </Panes>
                                </asp:Accordion>
                      
                    </td>
                    <td class="style19" colspan="2" rowspan="2" valign="top">
                   
                        <div class="lbl">
                         
                            <span class="style22"><strong>Your CheckoutProcess:</strong></span><hr />
                            <strong>Billing Information:</strong><hr />
                            <asp:FormView ID="frm_bill" runat="server">
                                <ItemTemplate>
                                    <table class="style23">
                                        <tr>
                                            <td>
                                                <b>
                                                    <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label></b>
                                                &nbsp; <b>
                                                    <asp:Label ID="lbl_lname" runat="server" Text='<%#Eval("LastName") %>'></asp:Label></b>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_add" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style28">
                                                <asp:Label ID="lbl_state" runat="server" Text='<%#Eval("State") %>'></asp:Label>
                                                &nbsp;,
                                                <asp:Label ID="lbl_country" runat="server" Text='<%#Eval("Country") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style28">
                                                <asp:Label ID="lbl_city" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                                &nbsp;-
                                                <asp:Label ID="lbl_pin" runat="server" Text='<%#Eval("Pincode") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style28">
                                                M NO:
                                                <asp:Label ID="lbl_mno" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                            <hr />
                            <strong>Shippin Information: </strong>
                            <hr />
                            <asp:FormView ID="frm_ship" runat="server">
                                <ItemTemplate>
                                    <table class="style23">
                                        <tr>
                                            <td>
                                                <b>
                                                    <asp:Label ID="lblship_fname" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label></b>
                                                &nbsp; <b>
                                                    <asp:Label ID="lblship_lname" runat="server" Text='<%#Eval("LastName") %>'></asp:Label></b>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblship_add" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style28">
                                                <asp:Label ID="lblship_state" runat="server" Text='<%#Eval("State") %>'></asp:Label>
                                                &nbsp;,
                                                <asp:Label ID="lblship_country" runat="server" Text='<%#Eval("Country") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style28">
                                                <asp:Label ID="lblship_city" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                                &nbsp;-
                                                <asp:Label ID="lblship_pin" runat="server" Text='<%#Eval("Pincode") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style28">
                                                M NO:
                                                <asp:Label ID="lblship_mno" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                            
                        </div>
                    </td>
                          
                </tr>
            </table>
          <%--  <asp:Button ID="btn_checkout1" runat="server" Text="Proceed To Checkout" 
        ValidationGroup="Ship" onclick="btn_checkout1_Click" />--%>
 <%--       </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
   
</asp:Content>
