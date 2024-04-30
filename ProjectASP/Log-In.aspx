<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log-In.aspx.cs" Inherits="ProjectASP.Log_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <div style="background-color: #FFFFCC; width: 100%; height: 25px;"></div>
        <img src="img/img-login.png" height="50%" width="50%"/>
        <p>
            <asp:Label ID="Label1" runat="server" Text="MEMBER LOGIN" Font-Bold="True" Font-Italic="False" Font-Overline="True" Font-Size="40px" Font-Strikeout="False" Font-Underline="True"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtUsername" runat="server" Height="30px" Width="300px" placeholder="Username"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="300px" placeholder="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text=""></asp:Label>
        </p>
        <asp:Button ID="Btn1" runat="server" Text="Log In" Height="30px" Width="310px" OnClick="Btn1_Click" />
    </div>
        
    </form>
</body>
</html>
