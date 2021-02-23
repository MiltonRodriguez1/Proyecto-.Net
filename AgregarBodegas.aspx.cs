using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ipc2_Fase3
{
    public partial class AgregarBodegas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
            Panel1.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                conexion.Open();
                String Cadena = "insert into Bodega(Codigo,Nombre,Descripcion,Direccion)" +
                    "Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "');";
                SqlCommand comando = new SqlCommand(Cadena, conexion);
                try
                {
                    comando.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    Response.Redirect("AgregarBodegas.aspx");

                }
                catch (Exception ex) { }
            }
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (CodigoBodega.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != ""
                 && TextBox10.Text != "" && TextBox11.Text != "" && TextBox12.Text != "" && TextBox13.Text != "" && TextBox14.Text != "" && TextBox15.Text != ""
                  && TextBox16.Text != "" && TextBox17.Text != "" && TextBox18.Text != "" && TextBox19.Text != "" && TextBox20.Text != "" && TextBox21.Text != "") {
                SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                conexion.Open();
                
                try
                {
                    

                        String Cadena4 = "insert into Pasillo(Codigo,Codigo_Bodega,Numero,Ancho)" +
                        "Values(" + TextBox5.Text + ",'" + CodigoBodega.Text + "'," + TextBox5.Text + "," + TextBox6.Text + ");";
                        SqlCommand comando4 = new SqlCommand(Cadena4, conexion);
                        comando4.ExecuteNonQuery();

                        String Cadena1 = "insert into Estante(letra,largo,ancho,altura,Codigo_Bodega,Numero_Pasillo,Numero_niveles)" +
                        "Values('" + TextBox7.Text + "'," + TextBox10.Text + "," + TextBox13.Text + "," + TextBox16.Text + ",'"+CodigoBodega.Text+"'," +
                        TextBox5.Text + ","+TextBox19.Text+");";
                        SqlCommand comando1 = new SqlCommand(Cadena1, conexion);
                        comando1.ExecuteNonQuery();
                    int limite1 = Int32.Parse(TextBox19.Text);
                        for (int i = 0; i < limite1; i++)
                        {
                        
                            String Cadena5 = "insert into Nivel(Numero_nivel,Numero_Pasillo,Codigo_Bodega,Letra_estante,largo,ancho)" +
                            "Values(" + (i+1) + "," + TextBox5.Text + ",'" + CodigoBodega.Text + "','" + TextBox7.Text + "'," + TextBox10.Text + "," + TextBox13.Text + ");";
                            SqlCommand comando5 = new SqlCommand(Cadena5, conexion);
                            comando5.ExecuteNonQuery();
                        }

                        String Cadena2 = "insert into Estante(letra,largo,ancho,altura,Codigo_Bodega,Numero_Pasillo,Numero_niveles)" +
                        "Values('" + TextBox8.Text + "'," + TextBox11.Text + "," + TextBox14.Text + "," + TextBox17.Text + ",'" + CodigoBodega.Text + "',"+
                        TextBox5.Text+ "," + TextBox20.Text + ");";
                        SqlCommand comando2 = new SqlCommand(Cadena2, conexion);
                        comando2.ExecuteNonQuery();
                    int limite2 = Int32.Parse(TextBox20.Text);
                    for (int i = 0; i <= limite2; i++)
                        {

                            String Cadena5 = "insert into Nivel(Numero_nivel,Numero_Pasillo,Codigo_Bodega,Letra_estante,largo,ancho)" +
                            "Values(" + (i + 1) + "," + TextBox5.Text + ",'" + CodigoBodega.Text + "','" + TextBox8.Text + "'," + TextBox11.Text + "," + TextBox14.Text + ");";
                            SqlCommand comando5 = new SqlCommand(Cadena5, conexion);
                            comando5.ExecuteNonQuery();
                        }

                        String Cadena3 = "insert into Estante(letra,largo,ancho,altura,Codigo_Bodega,Numero_Pasillo,Numero_niveles)" +
                        "Values('" + TextBox9.Text + "'," + TextBox12.Text + "," + TextBox15.Text + "," + TextBox18.Text + ",'" + CodigoBodega.Text + "'," +
                        TextBox5.Text + "," + TextBox21.Text + ");";
                        SqlCommand comando3 = new SqlCommand(Cadena3, conexion);
                        comando3.ExecuteNonQuery();
                    int limite3 = Int32.Parse(TextBox21.Text);
                    for (int i = 0; i <= limite3; i++)
                        {

                            String Cadena5 = "insert into Nivel(Numero_nivel,Numero_Pasillo,Codigo_Bodega,Letra_estante,largo,ancho)" +
                            "Values(" + (i + 1) + "," + TextBox5.Text + ",'" + CodigoBodega.Text + "','" + TextBox9.Text + "'," + TextBox12.Text + "," + TextBox15.Text + ");";
                            SqlCommand comando5 = new SqlCommand(Cadena5, conexion);
                            comando5.ExecuteNonQuery();
                        }



                        Response.Redirect("AgregarBodegas.aspx");
                    
                    

                }
                catch (Exception ex) { }

            }
            
        }
    }
}