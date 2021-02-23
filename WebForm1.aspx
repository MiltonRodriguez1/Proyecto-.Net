<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ipc2_Fase3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
<link href="Css/Principal.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        #Fondo {
            height: 540px;
            width: 535px;
            
        }
        body {
        background-color: #424242
        }
        
    
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id ="Fondo"> 
            <h1 style="height: 49px; width: 241px" id ="menu">Menu</h1>
            <br />
            <br />
            <br />
            
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Text="Modulo Administrativo" Height="115px" Width="440px" CssClass="Button" OnClick="Button1_Click"/>
                <br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="115px" Text="Tienda" CssClass="Button" Width="440px" OnClick="Button2_Click"/>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Height="115px" Text="Modulo Default" CssClass="Button" Width="440px" OnClick="Button3_Click" />
            
        </div>
        
    </form>
</body>
</html>
