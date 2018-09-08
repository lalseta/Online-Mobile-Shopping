<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <table border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
            <td>
                <b>Enter Value</b>
                <asp:textbox runat="server" id="txtRangeValidator" 
                    ontextchanged="txtRangeValidator_TextChanged">
            </asp:textbox></td>
            
        </tr>
        <tr>
            <td>
                <asp:rangevalidator ID="Rangevalidator2" errormessage="Please enter value between 10-20." forecolor="Red" controltovalidate="txtRangeValidator" minimumvalue="10" maximumvalue="20" runat="server">
            </asp:rangevalidator></td>
        </tr>
    </tbody></table>
        <br />
    
    </div>
    </form>
</body>
</html>
