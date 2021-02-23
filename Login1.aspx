<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Ipc2_Fase3.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Css/login1.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        #imagen {
            height: 45%;
            width: 60%;
        }
        body {
        background-color: #424242
        }
    </style>
</head>
<body style="height: 756px; width: 392px;">
    <form id="form1" runat="server">
        <div id ="Fondo">
            <img src="Imagenes/login1.png" alt="Alternate Text" id ="imagen"/>
        
       
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p id ="label1" class="label">
            Ingrese Su Nombre De Usuario:</p>
        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="355px" CssClass="TextBox"></asp:TextBox>
        <br />
        <br />
            <p id ="label2" class="label">
            Ingrese Su Contraseña:</p><br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="348px" CssClass="TextBox" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="57px" OnClick="Button1_Click" Text="Ingresar" Width="248px" />
       </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Regresar" />
    </form>
</body>
</html>
