<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIns.aspx.cs" Inherits="Assigment2FaithLoredo.LogIns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
	        background-color: #80bfff;
        }

        Div {
	        border-top: solid 5px black;
	        Background-color:white;
	        display: block;
            margin-left: 15%;
            margin-right:15%
        }
        h1 {
	        font-family: Helvetica;
        }
        h2 {
	        font-family: Helvetica;
        }
        p {
	        font-family: helvetica;
            background-color:white;
        }
        li{
	        font-family: Helvetica;
        }
        a {
            color: darkcyan;
            font-family: Helvetica;
            font-size: 120%;
            text-decoration: none;
            text-align: center;
            font-size: 120%;
            margin-left:45%;
        }
        #Label1{
            font-family: Arial, Helvetica, sans-serif;
            margin-left:45%;
        }
        #Label2{
            font-family: Arial, Helvetica, sans-serif;
            margin-left:40%;
        }
        #Label3{
            font-family: Arial, Helvetica, sans-serif;
            margin-left:40%;
        }
        #error{
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <div>
    <form id="form1" runat="server">
        
            <asp:Image ID="Image1" runat="server" Height="25%" ImageUrl="~/Img/stock.jpg" Width="100%" ImageAlign="Middle" />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Log In"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="User name"></asp:Label>
&nbsp; &nbsp;&nbsp;<asp:TextBox ID="user" runat="server"></asp:TextBox>
&nbsp;&nbsp;

            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LogIn" runat="server" OnClick="LogIn_Click" Text="Log In" />
            <br />
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Skip log in</asp:LinkButton>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="error" runat="server"></asp:Label>
            <br />
            
        </form>
    </div>
    </body>
</html>
