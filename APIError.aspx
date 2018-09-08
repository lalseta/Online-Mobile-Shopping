<%@ Page Language="c#" AutoEventWireup="false" CodeFile="APIError.aspx.cs" Inherits="APIError" %>
<html>
	<head>
		<title>PayPal - Error Page</title>
	</head>
	<body>
		
		<table class="api" id="Table1">
			<tr>
				<td class="field"></td>
				<td><%=Request.QueryString.Get("ErrorCode")%></td>
			</tr>
			
			<tr>
				<td class="field"></td>
				<td><%=Request.QueryString.Get("Desc")%></td>
			</tr>

		</table>
	</body>
</html>
