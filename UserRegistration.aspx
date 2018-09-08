<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="Shortcut Icon" type="image/icon" href="Logo/favicon.ico"/>

    <style type="text/css">
              
        .style11
        {
            width: 148px;
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
            width: 159px;
        }
        .style18
        {
            width: 160px;
        }

        .style24
        {
            width: 216px;
        }
        .style25
        {
            width: 216px;
        }
        .style26
        {
            width: 217px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
  <%--  <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
   <p class="lbl"> Create An Account</p>
    <hr />
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >    
    <ContentTemplate>
   <p class="lbl">  Login Information </p>
    <hr />


        <table class="lbl">
            <tr>
                <td class="style16">
                    User Name:</td>
                <td class="style24">
                    <asp:TextBox ID="txt_username" runat="server" 
                        ontextchanged="txt_username_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="usernamereq" runat="server" 
                        ControlToValidate="txt_username"  
                        ErrorMessage="Username not empty" ForeColor="Red" ValidationGroup="reg" Display="None" ></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="usernamereq_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="usernamereq">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style24">
                    <%--<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>--%>
                    <div id="checkusername" runat="server"  Visible="false">
                    <asp:Image ID="imgstatus" runat="server" Width="17px" Height="17px"/>
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    </div>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Password:</td>
                <td class="style24">
                    <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="passreq" runat="server" 
                        ControlToValidate="txt_pass"  ErrorMessage="password not empty" 
                        ForeColor="Red" ValidationGroup="reg" Display="None" ></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="passreq_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="passreq">
                    </asp:ValidatorCalloutExtender>
                    <br />
                    <asp:RegularExpressionValidator ID="passreg" runat="server" 
                        ControlToValidate="txt_pass"  
                        ErrorMessage="must contain 8 or more character" ForeColor="Red" 
                        ValidationExpression="^.*(?=.{8,})(?=.*[a-z]).*$" ValidationGroup="reg" Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="passreg_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="passreg">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Confirm Password:</td>
                <td class="style24">
                    <asp:TextBox ID="txt_cpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="cpasscomp" runat="server" ControlToCompare="txt_pass" 
                        ControlToValidate="txt_cpass" 
                        ErrorMessage="Password does not match" ForeColor="Red" 
                        ValidationGroup="reg" Display="None"></asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="cpasscomp_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="cpasscomp">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
        </table>
        <hr />

         <p class="lbl">Personal Information</p>
        <hr />


        <table class="lbl">
            <tr>
                <td class="style18" >
                    First Name:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="fnamereq" runat="server" 
                        ControlToValidate="txt_fname"  
                        ErrorMessage="First name Not empty" ForeColor="Red" ValidationGroup="reg" Display="None"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="fnamereq_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="fnamereq">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style18" >
                    Last Name:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="lnamereq" runat="server" 
                        ControlToValidate="txt_lname"  ErrorMessage="Last name not empty" 
                        ForeColor="Red" ValidationGroup="reg" Display="None" ></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="lnamereq_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="lnamereq">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style18" >
                    Address:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_add" runat="server" Height="51px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18" >
                    City:</td>
                <td class="style26">
                    <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18" >
                    State:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_state" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    Pincode:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_pin" runat="server"></asp:TextBox>
                </td>
                <td>
                    <span>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txt_pin" Display="Dynamic" ErrorMessage="Must Be 6 Digit" 
                        ForeColor="Red" ValidationExpression="([0-9]{6}|[0-9]{3}\s[0-9]{3})" 
                        ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style18" >
                    Country:</td>
                <td class="style25">
                    <asp:DropDownList ID="ddl_country" runat="server">
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18" >
                    Gender:</td>
                <td class="style25">
                    <asp:RadioButtonList ID="rb_gender" runat="server">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rbreq" runat="server" 
                        ControlToValidate="rb_gender" Display="Dynamic" ErrorMessage="required" 
                        ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style18" >
                    DOB:</td>
                <td class="style25" style="margin-left: 40px">
                    <asp:DropDownList ID="ddl_date" runat="server">
                        <asp:ListItem>Date</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="ddl_month" runat="server">
                        <asp:ListItem>Month</asp:ListItem>
                        <asp:ListItem>Jan</asp:ListItem>
                        <asp:ListItem>Feb</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>Jun</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>Aug</asp:ListItem>
                        <asp:ListItem>Sep</asp:ListItem>
                        <asp:ListItem>Oct</asp:ListItem>
                        <asp:ListItem>Nov</asp:ListItem>
                        <asp:ListItem>Dec</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="ddl_year" runat="server">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18" >
                    Email Id:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_eid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="eidreg1" runat="server" 
                        ErrorMessage="Email Address Required" ControlToValidate="txt_eid" 
                        ForeColor="Red"  ValidationGroup="reg" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="eidreg" runat="server" 
                        ControlToValidate="txt_eid" ErrorMessage="Must Enter Valid Email Address 
                        Ex:kadia@gmail.com " 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="reg" Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="eidreg_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="eidreg">
                    </asp:ValidatorCalloutExtender>
                     <asp:ValidatorCalloutExtender ID="eidreg1_ValidatorCalloutExtender1" 
                        runat="server" Enabled="True" TargetControlID="eidreg1">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style18" >
                    Mobile No:</td>
                <td class="style25">
                    <asp:TextBox ID="txt_mno" runat="server"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txt_mno_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txt_mno">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="mnoreg" runat="server" 
                        ControlToValidate="txt_mno"  ErrorMessage="at least 10 digit" 
                        ForeColor="Red" 
                        ValidationExpression="([0-9]{10}|[0-9]{5}\s[0-9]{5})" 
                        ValidationGroup="reg" Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="mnoreg_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="mnoreg">
                    </asp:ValidatorCalloutExtender>
                    <br />
                </td>
            </tr>
        </table>
       
          </ContentTemplate>
    </asp:UpdatePanel>
     <asp:Button ID="btn_signup" runat="server" onclick="btn_signup_Click1" 
            style="height: 26px" Text="Sign Up now!" ValidationGroup="reg"  CssClass="btn"/>
     
</asp:Content>


