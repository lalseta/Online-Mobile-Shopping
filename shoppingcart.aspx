<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="shoppingcart.aspx.cs" Inherits="shoppingcart" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 34px;
        }
       
        .style15
        {
            width: 133px;
        }
        
        .style17
        {
        	font-family:Verdana;
            height: 29px;
        }
        .style19
        {
            text-decoration: underline;
        }
    .style20
    {
            width: 469px;
        }
     .table
       {
          font-weight:bold;
           color:#626262; 
            font-weight:bold; 
            font-size:10px;
             text-transform:uppercase;
	   font-size:9pt;
           
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

        .style21
        {
            color: #404040;
        }
        .style22
        {
            text-decoration: underline;
            color: #404040;
        }

    </style> 
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
  <%--  <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <table class="table" >
        <tr>
            <td class="style17" >
                
                <u>Shopping Cart</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_checkout" runat="server" Text="CheckOut" 
                    onclick="btn_checkout_Click" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Noitem" runat="server" Text="There Is No Item In Your Cart." 
                    Visible="False" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
   &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gv_shoppingcart" runat="server" AutoGenerateColumns="False" 
                    Width="700px" DataKeyNames="productid" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onrowupdating="GridView1_RowUpdating" BackColor="White" BorderColor="#404040" 
                    BorderStyle="None" BorderWidth="3px" CellPadding="0" ForeColor="#404040" 
                    GridLines="Vertical" CssClass="lbl">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                       <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td class="style12">
                                           
                                        </td>
                                        <td class="style12">
                                         <center>   <asp:Image ID="Image2" runat="server" 
                                                ImageUrl='<%#Eval("productimage","~/Admin/Image/50x70/{0}") %>' /> </center>
                                        </td>
                                        <td>
                                           <b> <asp:Label ID="Label2" runat="server" Text='<%#Eval("productname") %>'></asp:Label></b>
                                            <br />
                                            Product Code: <asp:Label ID="Label3" runat="server" Text='<%#Eval("productid") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style12">
                                            &nbsp;</td>
                                        <td class="style12">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                &nbsp;&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                               <center> &nbsp;$. <asp:Label ID="price" runat="server" Text='<%# Bind("price") %>'></asp:Label></center>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">                          
                            <ItemTemplate>
                                <center>
                                    <asp:TextBox ID="txt_qty" runat="server"  Text='<%#Eval("quantity") %>'
                                    Width="25px"></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
                                    Display="None" ControlToValidate="txt_qty"  MinimumValue="1" MaximumValue="10" Type="Integer"></asp:RangeValidator>
                                     
                                   <%-- <asp:MaskedEditExtender ID="txt_qty_MaskedEditExtender" runat="server" 
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                        CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                        InputDirection="RightToLeft" Mask="99" TargetControlID="txt_qty">
                                    </asp:MaskedEditExtender>--%>
                                  
                                     
                                </center>
                                <center>
                                    <asp:LinkButton ID="LinkButton8" runat="server" style="margin-bottom: 0px" 
                                    Width="50px" CommandName="Update" ForeColor="Black">Update</asp:LinkButton></center>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                          <center> $. <asp:Label ID="total" runat="server" Text='<%# Bind("total") %>'></asp:Label></center>
                            </ItemTemplate>                           
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Remove" ShowHeader="False">
                            <ItemTemplate>
                             <center>   <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="~/Logo/gif.gif"/></center>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                   <%-- <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />--%>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <table class="lbl">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style22" colspan="2">
                            <strong class="lbl">Order Summary:</strong></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style15">
                            <span class="style21">Total:</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            &#8377;<asp:Label ID="ototal" runat="server" Text="00.00" Font-Size="11pt" ></asp:Label>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style15">
                            <span class="style21">Ship:</td>
                        <td>
                            &nbsp;&nbsp;&nbsp; 
                             &#8377;<asp:Label ID="ship" runat="server" Text="00.00" Font-Size="11pt" ></asp:Label>
                            &nbsp;</span></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style15">
                            <span class="style21">Tax:(10.33%)s</td>
                        <td>
                            &nbsp;&nbsp;&nbsp; &#8377;<asp:Label ID="tax" runat="server" Text="00.00" Font-Size="11pt"></asp:Label>
                            &nbsp;</span></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style15">
                            <span class="style21">Discount:(10.00%)</td>
                        <td>
                            &nbsp;&nbsp;&nbsp; &#8377;<asp:Label ID="disc" runat="server" Text="00.00" Font-Size="11pt"></asp:Label>
                            &nbsp;</span></td>
                    </tr>
                    
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style16" colspan="2">
                            <span class="style21">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                                class="style19"><strong>Net Amount:</strong></span></td>
                        <td>
                            &nbsp;&nbsp;&nbsp; &#8377;<asp:Label ID="gndtotal" runat="server" Text="00.00" Font-Size="11pt"></asp:Label>
                            </span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_cnt" runat="server" onclick="btn_cnt_Click" 
                    style="height: 26px; margin-right: 0px;" Text="Continue Shopping" CssClass="btn" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btn_ckh" runat="server" Text="Checkout" 
                    onclick="btn_checkout_Click"  CssClass="btn"/>
            </td>
        </tr>
    </table>
    
</asp:Content>


