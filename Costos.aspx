<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Costos.aspx.cs" Inherits="Ipc2_Fase3.Costos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GEstion de Costos</title>
    <link href="Css/Gestion.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 843px; width: 1550px" id="Fondo">
            <h1>Gestion de Costos</h1>
            <p>
                <asp:Button ID="Button1" runat="server" CssClass="Button" Text="Saldos Y Lotes" OnClick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" CssClass="Button" runat="server" Text="Ver" OnClick="Button2_Click" />
            </p>
            <asp:Panel ID="Panel1" runat="server" Height="621px" Width="1523px" CssClass="Panel">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Codigo de Producto:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" CssClass="TextBox" runat="server" Width="297px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cantidad:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" CssClass="TextBox" runat="server" Width="289px"></asp:TextBox>
                <br />
&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Costo por Unidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Costo Promedio de Bodega:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" CssClass="TextBox" runat="server" Width="239px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" CssClass="TextBox" runat="server" Width="283px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Codigo de Bodega:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pasillo<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" CssClass="TextBox" runat="server" OnTextChanged="TextBox5_TextChanged" Width="231px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" CssClass="TextBox" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Codigo" DataValueField="Codigo" Height="24px" Width="282px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" SelectCommand="SELECT [Codigo] FROM [Pasillo] WHERE ([Codigo_Bodega] = @Codigo_Bodega)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox5" Name="Codigo_Bodega" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estante:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nivel:<br /> &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" CssClass="TextBox" runat="server" DataSourceID="SqlDataSource2" DataTextField="letra" DataValueField="letra" Height="16px" Width="257px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" CssClass="TextBox" runat="server" DataSourceID="SqlDataSource3" DataTextField="Numero_nivel" DataValueField="Numero_nivel" Height="22px" Width="268px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" SelectCommand="SELECT [Numero_nivel] FROM [Nivel] WHERE (([Codigo_Bodega] = @Codigo_Bodega) AND ([Numero_Pasillo] = @Numero_Pasillo) AND ([Letra_estante] = @Letra_estante))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox5" Name="Codigo_Bodega" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="Numero_Pasillo" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Letra_estante" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" SelectCommand="SELECT [letra] FROM [Estante] WHERE (([Numero_Pasillo] = @Numero_Pasillo) AND ([Codigo_Bodega] = @Codigo_Bodega))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Numero_Pasillo" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox5" Name="Codigo_Bodega" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button3" CssClass="Button" runat="server" Height="54px" Text="Guardar" Width="268px" OnClick="Button3_Click" style="position:absolute; left:5%;top:56%;"/>
                
                <asp:Button ID="Button5" CssClass="Button" runat="server" Height="43px" OnClick="Button5_Click" Text="+ Lote" Width="118px" style="position:absolute; left:30%;top:56%"/>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel2" runat="server" Style="position:absolute; top:10%; left:55%; height: 546px; width: 657px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Codigo de Lote:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" CssClass="TextBox" runat="server" Width="297px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Precio de Lote<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" CssClass="TextBox" runat="server" Width="297px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logica<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" CssClass="TextBox" runat="server" AutoPostBack="True" Height="16px" Width="294px">
                    <asp:ListItem Value="UEPS"></asp:ListItem>
                    <asp:ListItem Value="PEPS"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" CssClass="Button" runat="server" Height="37px" OnClick="Button4_Click" Text="Añadir Lote" Width="287px" />
                <br />
                &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ListBox ID="ListBox1" CssClass="TextBox" runat="server" Height="238px" Width="608px"></asp:ListBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" CssClass="Button" runat="server" Height="43px" OnClick="Button6_Click" Text="Todo Listo" Width="118px" />
            </asp:Panel>
            </asp:Panel>
            <br />
            
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="743px" Style="height:743px; overflow:auto;" CssClass="Panel" Visible="False">
                Saldos:<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4" EmptyDataText="No hay registros de datos para mostrar." Height="161px" Width="1519px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" DeleteCommand="DELETE FROM [Saldo] WHERE [id] = @id" InsertCommand="INSERT INTO [Saldo] ([Codigo_Producto], [Cantidad], [Costo_Unidad], [Costo_Total], [Costo_Promedio], [Codigo_Bodega], [Pasillo], [Estante], [Nivel]) VALUES (@Codigo_Producto, @Cantidad, @Costo_Unidad, @Costo_Total, @Costo_Promedio, @Codigo_Bodega, @Pasillo, @Estante, @Nivel)" ProviderName="<%$ ConnectionStrings:Fase2ConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [Codigo_Producto], [Cantidad], [Costo_Unidad], [Costo_Total], [Costo_Promedio], [Codigo_Bodega], [Pasillo], [Estante], [Nivel] FROM [Saldo]" UpdateCommand="UPDATE [Saldo] SET [Codigo_Producto] = @Codigo_Producto, [Cantidad] = @Cantidad, [Costo_Unidad] = @Costo_Unidad, [Costo_Total] = @Costo_Total, [Costo_Promedio] = @Costo_Promedio, [Codigo_Bodega] = @Codigo_Bodega, [Pasillo] = @Pasillo, [Estante] = @Estante, [Nivel] = @Nivel WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Codigo_Producto" Type="String" />
                        <asp:Parameter Name="Cantidad" Type="Int32" />
                        <asp:Parameter Name="Costo_Unidad" Type="Double" />
                        <asp:Parameter Name="Costo_Total" Type="Double" />
                        <asp:Parameter Name="Costo_Promedio" Type="Double" />
                        <asp:Parameter Name="Codigo_Bodega" Type="String" />
                        <asp:Parameter Name="Pasillo" Type="Int32" />
                        <asp:Parameter Name="Estante" Type="String" />
                        <asp:Parameter Name="Nivel" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Codigo_Producto" Type="String" />
                        <asp:Parameter Name="Cantidad" Type="Int32" />
                        <asp:Parameter Name="Costo_Unidad" Type="Double" />
                        <asp:Parameter Name="Costo_Total" Type="Double" />
                        <asp:Parameter Name="Costo_Promedio" Type="Double" />
                        <asp:Parameter Name="Codigo_Bodega" Type="String" />
                        <asp:Parameter Name="Pasillo" Type="Int32" />
                        <asp:Parameter Name="Estante" Type="String" />
                        <asp:Parameter Name="Nivel" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                Lotes:<br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource5" EmptyDataText="No hay registros de datos para mostrar." Width="373px">
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Logica" HeaderText="Logica" SortExpression="Logica" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" DeleteCommand="DELETE FROM [Lote] WHERE [Codigo] = @Codigo" InsertCommand="INSERT INTO [Lote] ([Codigo], [Precio], [Logica]) VALUES (@Codigo, @Precio, @Logica)" ProviderName="<%$ ConnectionStrings:Fase2ConnectionString1.ProviderName %>" SelectCommand="SELECT [Codigo], [Precio], [Logica] FROM [Lote]" UpdateCommand="UPDATE [Lote] SET [Precio] = @Precio, [Logica] = @Logica WHERE [Codigo] = @Codigo">
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
                <br />
                Productos en Lotes:<br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource6" EmptyDataText="No hay registros de datos para mostrar." Width="1526px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="id_Producto" HeaderText="id_Producto" SortExpression="id_Producto" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Codigo_Bodega" HeaderText="Codigo_Bodega" SortExpression="Codigo_Bodega" />
                        <asp:BoundField DataField="Pasillo" HeaderText="Pasillo" SortExpression="Pasillo" />
                        <asp:BoundField DataField="Estante" HeaderText="Estante" SortExpression="Estante" />
                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
                        <asp:BoundField DataField="id_lote" HeaderText="id_lote" SortExpression="id_lote" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2ConnectionString1 %>" DeleteCommand="DELETE FROM [ElementoLote] WHERE [id] = @id" InsertCommand="INSERT INTO [ElementoLote] ([id_Producto], [Cantidad], [Codigo_Bodega], [Pasillo], [Estante], [Nivel], [id_lote]) VALUES (@id_Producto, @Cantidad, @Codigo_Bodega, @Pasillo, @Estante, @Nivel, @id_lote)" ProviderName="<%$ ConnectionStrings:Fase2ConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [id_Producto], [Cantidad], [Codigo_Bodega], [Pasillo], [Estante], [Nivel], [id_lote] FROM [ElementoLote]" UpdateCommand="UPDATE [ElementoLote] SET [id_Producto] = @id_Producto, [Cantidad] = @Cantidad, [Codigo_Bodega] = @Codigo_Bodega, [Pasillo] = @Pasillo, [Estante] = @Estante, [Nivel] = @Nivel, [id_lote] = @id_lote WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_Producto" Type="String" />
                        <asp:Parameter Name="Cantidad" Type="Int32" />
                        <asp:Parameter Name="Codigo_Bodega" Type="String" />
                        <asp:Parameter Name="Pasillo" Type="Int32" />
                        <asp:Parameter Name="Estante" Type="String" />
                        <asp:Parameter Name="Nivel" Type="Int32" />
                        <asp:Parameter Name="id_lote" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_Producto" Type="String" />
                        <asp:Parameter Name="Cantidad" Type="Int32" />
                        <asp:Parameter Name="Codigo_Bodega" Type="String" />
                        <asp:Parameter Name="Pasillo" Type="Int32" />
                        <asp:Parameter Name="Estante" Type="String" />
                        <asp:Parameter Name="Nivel" Type="Int32" />
                        <asp:Parameter Name="id_lote" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <asp:Button ID="Regresar" CssClass="Button" runat="server" OnClick="Button7_Click" Text="&lt;&lt; Regresar" />
        </div>
    </form>
</body>
</html>
