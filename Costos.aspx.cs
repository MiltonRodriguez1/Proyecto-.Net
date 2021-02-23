using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ipc2_Fase3
{
    public partial class Costos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            DropDownList1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" 
                && DropDownList1.SelectedValue != "" && DropDownList2.SelectedValue != "" && DropDownList3.SelectedValue != "")
            {
                float v1 = float.Parse(TextBox2.Text);
                float v2 = float.Parse(TextBox3.Text);
                float r = v1 * v2;
                SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                conexion.Open();
                String Cadena = "insert into Saldo(Codigo_Producto,Cantidad,Costo_Unidad,Costo_Total,Costo_Promedio,Codigo_Bodega,Pasillo,Estante,Nivel)" +
                    "Values('" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text + "," + r + ","+TextBox4.Text+",'"+TextBox5.Text+
                    "',"+DropDownList1.SelectedValue+",'"+DropDownList2.SelectedValue+"',"+DropDownList3.SelectedValue+");";
                SqlCommand comando = new SqlCommand(Cadena, conexion);

                String Cadena1 = "insert into Productos(id_Producto,Codigo_Bodega)" +
                    "Values('" + TextBox1.Text + "','" + TextBox5.Text + "');";

                SqlCommand comando1 = new SqlCommand(Cadena1, conexion);
                try
                {
                    comando.ExecuteNonQuery();
                    comando1.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    
                    Response.Redirect("Costos.aspx");

                }
                catch (Exception ex) { }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text != "" && TextBox7.Text != "") {

                SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                conexion.Open();
                String Cadena = "Insert into Lote(Codigo,Precio,Logica)" +
                    "Values('" + TextBox6.Text + "'," + TextBox7.Text + ",'" + DropDownList4.SelectedValue + "');";
                SqlCommand comando = new SqlCommand(Cadena, conexion);
                try
                {
                    comando.ExecuteNonQuery();
                    

                }
                catch (Exception ex) { }
            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Costos.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox5.Text != "" && DropDownList1.SelectedValue != "")
            {

                SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                conexion.Open();
                String Cadena = "insert into ElementoLote(id_Producto,Cantidad,Codigo_Bodega,Pasillo,Estante,Nivel,id_lote)" +
                    "Values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox5.Text + "'," + DropDownList1.SelectedValue + "," +
                    "'" + DropDownList2.SelectedValue + "'," + DropDownList3.Text + ",'" + TextBox6.Text + "');";
                SqlCommand comando = new SqlCommand(Cadena, conexion);
                String Cadena1 = "insert into Productos(id_Producto,Codigo_Bodega)" +
                    "Values('" + TextBox1.Text + "','" + TextBox5.Text + "');";

                SqlCommand comando1 = new SqlCommand(Cadena1, conexion);
                try
                {
                    comando1.ExecuteNonQuery();
                    comando.ExecuteNonQuery();
                    ListBox1.Items.Add(TextBox1.Text);
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox5.Text = "";


                }
                catch (Exception ex) { }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible= true;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador.aspx");
        }
    }
}