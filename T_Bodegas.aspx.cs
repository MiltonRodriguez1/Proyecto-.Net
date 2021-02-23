using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Ipc2_Fase3
{
    public partial class T_Bodegas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Saldo_Click(object sender, EventArgs e)
        {
            DropDownList1.Visible = true;
            DropDownList2.Visible = false;
            Saldo.BackColor = System.Drawing.Color.Green;
            Lote.BackColor = System.Drawing.Color.White;
        }

        protected void Lote_Click(object sender, EventArgs e)
        {
            DropDownList2.Visible = true;
            DropDownList1.Visible = false;
            Lote.BackColor = System.Drawing.Color.Green;
            Saldo.BackColor = System.Drawing.Color.White;
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox5.Text != "")
            {
                String tipo = "";
                String id = "";
                if (DropDownList1.Visible == true)
                {
                    tipo = "Saldo"; id = DropDownList1.SelectedValue;

                    SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion.Open();
                    String Cadena = "UPDATE ElementoLote SET Codigo_Bodega = '" + TextBox5.Text + "'  WHERE id_lote = '" + id + "';";
                    SqlCommand comando = new SqlCommand(Cadena, conexion);
                    try
                    {
                        comando.ExecuteNonQuery();


                    }
                    catch (Exception ex) { }
                }
                else if (DropDownList2.Visible == true)
                {
                    tipo = "Lote"; id = DropDownList2.SelectedValue;
                    SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion.Open();
                    String Cadena = "UPDATE Saldo SET Codigo_Bodega = '" + TextBox5.Text + "'  WHERE Codigo_Producto = '" + id + "';";
                    SqlCommand comando = new SqlCommand(Cadena, conexion);
                    try
                    {
                        comando.ExecuteNonQuery();


                    }
                    catch (Exception ex) { }
                }
                if (tipo != "" && id != "")
                {
                    SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion.Open();
                    String Cadena = "insert into Transferencia(Nombre_Proveedor,Tipo_Producto,id_Producto,Codigo_Bodega,Pasillo,estante,Nivel)" +
                        "Values('" + TextBox1.Text + "','" + tipo + "','" + id + "','" + TextBox5.Text + "'," + DropDownList4.SelectedValue +
                        ",'" + DropDownList5.SelectedValue + "'," + DropDownList3.SelectedValue + ");";
                    SqlCommand comando = new SqlCommand(Cadena, conexion);
                    try
                    {
                        comando.ExecuteNonQuery();

                        Response.Redirect("T_Bodegas.aspx");

                    }
                    catch (Exception ex) { }
                }

            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            DropDownList4.DataBind();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList5.DataBind();
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Princiapal_Cliente.aspx");
        }
    }
}