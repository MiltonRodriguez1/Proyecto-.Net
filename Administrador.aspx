<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Ipc2_Fase3.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrador</title>
    <link href="Css/administrador.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        
        body {
        background-color: #2E2E2E;
        }
    </style>
</head>
<body style="width: 407px">
    <form id="form1" runat="server">

        <div id="Fondo">
            <h1 id ="titulo">Administrador</h1>
            <p>
                <asp:Button ID="Button1" runat="server" Height="86px" OnClick="Button1_Click" Text="Crear Bodegas" Width="324px" class="Button"/>
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" Height="86px" Text="Gestion de Costos" Width="324px" class ="Button" OnClick="Button2_Click"/>
            </p>
            <p>
                <asp:Button ID="Transferencia" runat="server" Height="86px" Text="Transferencia Por Bodegas" Width="324px" class ="Button" Style="position: absolute;top: 320px;left: 12%;" OnClick="Button3_Click"/>
            </p>
            <p>
                <asp:Button ID="Transferencia0" runat="server" Height="86px" Text="Inventario de Bodegas" Width="324px" class ="Button" Style="position: absolute;top: 420px;left: 12%;" OnClick="Button4_Click"/>
            </p>
            <asp:Button ID="Transferencia1" runat="server" Height="86px" Text="Inventario de Bodegas" Width="324px" class ="Button" Style="position: absolute;top: 520px;left: 12%;" OnClick="Button5_Click"/>
        </div>
        
       <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="&lt;&lt; Regresar" />
        
        
    </form>
</body>
</html>
