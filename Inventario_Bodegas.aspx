<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventario_Bodegas.aspx.cs" Inherits="Ipc2_Fase3.Inventario_Bodegas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inventario de Bodegas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Inventario de Bodegas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
       <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="&lt;&lt; Regresar" />
        
        
            </h1>
            <p>&nbsp;</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingrese El Codigo de Bodega:
                <asp:TextBox ID="TextBox1" runat="server" Width="265px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Exportar" OnClick="Button2_Click" />
            </p>
            <p>Saldos</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." Height="185px" Width="1531px">
                    <Columns>
                        <asp:BoundField DataField="Codigo_Producto" HeaderText="Codigo_Producto" SortExpression="Codigo_Producto" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Costo_Unidad" HeaderText="Costo_Unidad" SortExpression="Costo_Unidad" />
                        <asp:BoundField DataField="Costo_Total" HeaderText="Costo_Total" SortExpression="Costo_Total" />
                        <asp:BoundField DataField="Costo_Promedio" HeaderText="Costo_Promedio" SortExpression="Costo_Promedio" />
                        <asp:BoundField DataField="Codigo_Bodega" HeaderText="Codigo_Bodega" SortExpression="Codigo_Bodega" />
                        <asp:BoundField DataField="Pasillo" HeaderText="Pasillo" SortExpression="Pasillo" />
                        <asp:BoundField DataField="Estante" HeaderText="Estante" SortExpression="Estante" />
                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" SelectCommand="SELECT [Codigo_Producto], [Cantidad], [Costo_Unidad], [Costo_Total], [Costo_Promedio], [Codigo_Bodega], [Pasillo], [Estante], [Nivel] FROM [Saldo] WHERE ([Codigo_Bodega] = @Codigo_Bodega)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Codigo_Bodega" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>Lotes:</p>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." Width="1507px">
                    <Columns>
                        <asp:BoundField DataField="id_Producto" HeaderText="id_Producto" SortExpression="id_Producto" />
                        <asp:BoundField DataField="Codigo_Bodega" HeaderText="Codigo_Bodega" SortExpression="Codigo_Bodega" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Pasillo" HeaderText="Pasillo" SortExpression="Pasillo" />
                        <asp:BoundField DataField="Estante" HeaderText="Estante" SortExpression="Estante" />
                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" DeleteCommand="DELETE FROM [Lote] WHERE [Codigo] = @Codigo" InsertCommand="INSERT INTO [Lote] ([Codigo], [Precio], [Logica]) VALUES (@Codigo, @Precio, @Logica)" SelectCommand="if (Select Logica from Lote where Codigo = @Codigo_Bodega) = 'UEPS' 
SELECT ElementoLote.id_Producto, ElementoLote.Codigo_Bodega, ElementoLote.Cantidad, Lote.Precio, ElementoLote.Pasillo, ElementoLote.Estante, ElementoLote.Nivel FROM ElementoLote INNER JOIN Lote ON Lote.Codigo = ElementoLote.id_lote WHERE ([Codigo_Bodega] = @Codigo_Bodega) order by ElementoLote.id DESC
else
SELECT ElementoLote.id_Producto, ElementoLote.Codigo_Bodega, ElementoLote.Cantidad, Lote.Precio, ElementoLote.Pasillo, ElementoLote.Estante, ElementoLote.Nivel FROM ElementoLote INNER JOIN Lote ON Lote.Codigo = ElementoLote.id_lote WHERE ([Codigo_Bodega] = @Codigo_Bodega) order by ElementoLote.id ASC" UpdateCommand="UPDATE [Lote] SET [Precio] = @Precio, [Logica] = @Logica WHERE [Codigo] = @Codigo">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Codigo_Bodega" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="Codigo" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Codigo" Type="String" />
                        <asp:Parameter Name="Precio" Type="Double" />
                        <asp:Parameter Name="Logica" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Precio" Type="Double" />
                        <asp:Parameter Name="Logica" Type="String" />
                        <asp:Parameter Name="Codigo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>

        </div>
    </form>
</body>
</html>
