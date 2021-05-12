<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DbDisplay.aspx.cs" Inherits="Assigment2FaithLoredo.DbDisplay" %>

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
        }
        #Label1{
            font-family: Arial, Helvetica, sans-serif;
            margin-left:30%;
        }
        #Button1{
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
        #lable{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable1{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable2{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable3{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable4{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable5{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable6{
            font-family: Arial, Helvetica, sans-serif;
        }
        #lable7{
            font-family: Arial, Helvetica, sans-serif;
        }
        #error{
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Welcome "></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lable" runat="server" Text="UserID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable0" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbPass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable1" runat="server" Text="First Name"></asp:Label>
&nbsp;
            <asp:TextBox ID="tbFName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable2" runat="server" Text="Last Name"></asp:Label>
&nbsp;
            <asp:TextBox ID="tbLName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable7" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable6" runat="server" Text="Role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="roles" runat="server">
                <asp:ListItem Value="USER"></asp:ListItem>
                <asp:ListItem Value="ADMIN"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add User" />
            <br />
            <br />
            <asp:Label ID="lable3" runat="server" Text="MovieID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbMID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable4" runat="server" Text="Movie Name"></asp:Label>
&nbsp;
            <asp:TextBox ID="tbMovie" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lable5" runat="server" Text="Rating"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="rating" runat="server">
                <asp:ListItem Value="G"></asp:ListItem>
                <asp:ListItem Value="PG"></asp:ListItem>
                <asp:ListItem Value="R"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="addMovie" runat="server" OnClick="addMovie_Click" Text="Add Movie" />
            <br />
            <br />
            <asp:Label ID="lblresponse" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MovID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MovID" HeaderText="MovID" ReadOnly="True" SortExpression="MovID" />
                    <asp:BoundField DataField="Movie" HeaderText="Movie" SortExpression="Movie" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString %>" SelectCommand="SELECT [MovID], [Movie], [Rating] FROM [movies]" DeleteCommand="DELETE FROM [movies] WHERE [MovID] = @MovID" InsertCommand="INSERT INTO [movies] ([MovID], [Movie], [Rating]) VALUES (@MovID, @Movie, @Rating)" UpdateCommand="UPDATE [movies] SET [Movie] = @Movie, [Rating] = @Rating WHERE [MovID] = @MovID">
                <DeleteParameters>
                    <asp:Parameter Name="MovID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MovID" Type="Int32" />
                    <asp:Parameter Name="Movie" Type="String" />
                    <asp:Parameter Name="Rating" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Movie" Type="String" />
                    <asp:Parameter Name="Rating" Type="String" />
                    <asp:Parameter Name="MovID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaConnectionString %>" SelectCommand="SELECT [UserID], [password], [LastName], [FirstName], [Role], [Age] FROM [LogIns]" DeleteCommand="DELETE FROM [LogIns] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [LogIns] ([UserID], [password], [LastName], [FirstName], [Role], [Age]) VALUES (@UserID, @password, @LastName, @FirstName, @Role, @Age)" UpdateCommand="UPDATE [LogIns] SET [password] = @password, [LastName] = @LastName, [FirstName] = @FirstName, [Role] = @Role, [Age] = @Age WHERE [UserID] = @UserID">
                <DeleteParameters>
                    <asp:Parameter Name="UserID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserID" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="Role" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="Role" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="UserID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Refresh" runat="server" OnClick="Refresh_Click" Text="Go Back" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
