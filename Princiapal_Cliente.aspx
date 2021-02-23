<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Princiapal_Cliente.aspx.cs" Inherits="Ipc2_Fase3.Princiapal_Cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
        background-color: #2E2E2E;
        }
#titulo{

	font-family: 'Aclonica', serif;
	font-size: 350%;
	color:#0174DF;
	text-shadow: -10px 10px 10px rgba(0,0,0, 0.3);
	
	position:absolute;
	left: 10%

	

}
#Button1{
position: absolute;
	top: 120px;
	left: 12%;
}
        .Button {
            text-decoration: none;
            padding: 3px;
            padding-left: 10px;
            padding-right: 10px;
            background-color: #6E6E6E;
            border-radius: 15px;
            border: 3px double #0174DF;
            cursor: hand;
        }
  #Button2{
position: absolute;
	top: 221px;
		left: 11%;
}
   #Button3{
position: absolute;
	top: 420px;
		left: 40%;
}
#Transferencia{
position: absolute;
	top: 330px;
		left: 12%;
}
        #Fondo {
            position: absolute;
            left: 37%;
            top: 13%;
            background-color: #585858;
            border-radius: 35px 35px 35px 35px;
            -moz-border-radius: 35px 35px 35px 35px;
            -webkit-border-radius: 35px 35px 35px 35px;
            border: 0px solid #000000;
            background-color: #424242;
            width: 28%;
            height: 74%;
        }
  
    </style>
</head>
<body style="width: 407px">
    <form id="form1" runat="server">
        <div id ="Fondo">
            <h1 id ="titulo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cliente</h1>
                <asp:Button ID="Button1" runat="server" Height="86px" OnClick="Button1_Click" Text="Transferencia por Bodegas" Width="324px" class="Button"/>
                <asp:Button ID="Button2" runat="server" Height="86px" Text="Gestion de Costos" Width="324px" class ="Button" OnClick="Button2_Click"/>
        </div>
        <p>
                <asp:Button ID="Button3" runat="server" Height="86px" Text="TRansferencia Entre Bodegas" Width="324px" class ="Button" OnClick="Button3_Click"/>
        
       <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="&lt;&lt; Regresar" />
        
        
        </p>
    </form>
</body>
</html>
