using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ipc2_Fase3
{
    public partial class Transferencia : System.Web.UI.Page
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

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            DropDownList4.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList5.DataBind();
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.DataBind();
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox5.Text != "")
            {
                String tipo = "";
                String id = "";
                if (DropDownList1.Visible == true) { tipo = "Saldo"; id = DropDownList1.SelectedValue;
                   
                    SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion.Open(); 
                    String Cadena = "UPDATE ElementoLote SET Codigo_Bodega = '" +TextBox5.Text+ "'  WHERE id_lote = '"+id+"';";
                    SqlCommand comando = new SqlCommand(Cadena, conexion);
                    try
                    {
                        comando.ExecuteNonQuery();


                    }
                    catch (Exception ex) { }
                }
                else if (DropDownList2.Visible == true) { tipo = "Lote"; id = DropDownList2.SelectedValue;
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
                if (tipo != "" && id != "") {
                    SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion.Open();
                    String Cadena = "insert into Transferencia(Nombre_Proveedor,Tipo_Producto,id_Producto,Codigo_Bodega,Pasillo,estante,Nivel)" +
                        "Values('" + TextBox1.Text + "','" + tipo + "','" + id + "','" + TextBox5.Text + "'," + DropDownList4.SelectedValue +
                        ",'" + DropDownList5.SelectedValue + "'," + DropDownList3.SelectedValue + ");";
                    SqlCommand comando = new SqlCommand(Cadena, conexion);
                    try
                    {
                        comando.ExecuteNonQuery();

                        Response.Redirect("Transferencia.aspx");

                    }
                    catch (Exception ex) { }
                }
                
            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Saldo0_Click(object sender, EventArgs e)
        {
            DropDownList6.Visible = true;
            DropDownList8.Visible = false;
            Saldo0.BackColor = System.Drawing.Color.Green;
            Lote0.BackColor = System.Drawing.Color.White;
            GridView2.Visible = true;
            GridView1.Visible = false;
            Button4.Visible = true;
            Panel3.Visible = false;
        }

        protected void Lote0_Click(object sender, EventArgs e)
        {
            DropDownList8.Visible = true;
            DropDownList6.Visible = false;
            Lote0.BackColor = System.Drawing.Color.Green;
            Saldo0.BackColor = System.Drawing.Color.White;
            GridView1.Visible = true;
            GridView2.Visible = false;
            Button4.Visible = false;
            Panel3.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            GridView2.DataBind();
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            String Cadena = "Select Precio from Lote where Codigo='" + DropDownList8.SelectedValue + "';";
            SqlCommand comando = new SqlCommand(Cadena, conexion);

            String Cadena1 = "Select Costo_Total from Saldo where Codigo_Producto ='" + DropDownList6.SelectedValue + "';";
            SqlCommand comando1 = new SqlCommand(Cadena1, conexion);

            try
            {
                SqlDataReader lector = comando.ExecuteReader();

                
                    Button5.Text = lector.GetValue(0).ToString();
                
                SqlDataReader lector1 = comando1.ExecuteReader();

                
                    Button4.Text = lector1.GetValue(0).ToString();
                


            }
            catch (Exception ex) { }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            String Cadena = "Select Precio from Lote where Codigo='"+DropDownList8.SelectedValue+"';";
            SqlCommand comando = new SqlCommand(Cadena, conexion);

            String Cadena1 = "Select Costo_Total from Saldo where Codigo_Producto ='" + DropDownList6.SelectedValue + "';";
            SqlCommand comando1 = new SqlCommand(Cadena1, conexion);

            try
            {
                SqlDataReader lector = comando.ExecuteReader();

                
                    Button5.Text = lector.GetValue(0).ToString();
                
                SqlDataReader lector1 = comando1.ExecuteReader();

                
                    Button4.Text = lector1.GetValue(0).ToString();
                


            }
            catch (Exception ex) { }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try { 
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            String Cadena = "Delete from Lote where Codigo = '"+DropDownList8.SelectedValue+"'";
            SqlCommand comando = new SqlCommand(Cadena, conexion);
            String Cadena1 = "Delete from ElementoLote where id_lote = '" + DropDownList8.SelectedValue + "'";
            SqlCommand comando1 = new SqlCommand(Cadena1, conexion);
           
                String Cadena3 = "insert into Salida(Nombre_Comprador,id_Bodega,id_Producto,fecha,Cantidad,Total)" +
                   "Values('" + TextBox7.Text + "','" + TextBox6.Text + "','" + DropDownList8.SelectedValue + "','" + Label2.Text + "',1,1000);";
                SqlCommand comando3 = new SqlCommand(Cadena3, conexion);
                comando3.ExecuteNonQuery();
                comando1.ExecuteNonQuery();
                comando.ExecuteNonQuery();

                Response.Redirect("Transferencia.aspx");
            }
            catch (Exception ex) { }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion1.Open();
            SqlConnection conexion2 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion2.Open();
            String Cadena = "Delete from Saldo where Codigo_Producto = '" + DropDownList6.SelectedValue + "'";
            SqlCommand comando = new SqlCommand(Cadena, conexion);
            String Cadena1 = "select Costo_Total,Cantidad from Saldo  where Codigo_Producto = '" + DropDownList6.SelectedValue + "'";
            SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);


            try { 
                SqlDataReader lector = comando1.ExecuteReader();
                Double Precio = 100;
                int Cantidad = 1;
                while (lector.Read()) {
                    Precio = lector.GetDouble(0);
                    Cantidad = lector.GetInt32(1);
                }
                comando1.Cancel();
                String Cadena2 = "insert into Salida(Nombre_Comprador,id_Bodega,id_Producto,fecha,Cantidad,Total)" +
                    "Values('"+TextBox7.Text+"','"+TextBox6.Text+"','"+ DropDownList6.SelectedValue + "','"+Label2.Text+"',"+Cantidad+","+Precio+");";
                SqlCommand comando2 = new SqlCommand(Cadena2, conexion2);
                comando2.ExecuteNonQuery();

                comando.ExecuteNonQuery();

                Response.Redirect("Transferencia.aspx");
            }
            catch (Exception ex) { }



        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion1.Open();
            SqlConnection conexion2 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion2.Open();
            String id_Producto= "";
            String Cadena3 = "if (Select Logica from Lote where Codigo ='"+DropDownList8.SelectedValue+"') = 'UEPS' " +
                "Select id_Producto from ElementoLote where id_lote ='" + DropDownList8.SelectedValue + "' order by id DESC " +
                "else " +
                "Select id_Producto from ElementoLote where id_lote ='" + DropDownList8.SelectedValue + "' order by id ASC ";
            SqlCommand comando3 = new SqlCommand(Cadena3, conexion2);
            
                SqlDataReader le = comando3.ExecuteReader();
            Boolean a = true;
            while (le.Read()) {
                if (a == true) {
                    id_Producto = le.GetString(0);
                    a = false;
                }
                
            }
               

           
            String Cadena = "Select Precio from Lote where Codigo='" + DropDownList8.SelectedValue + "'";
            SqlCommand comando = new SqlCommand(Cadena, conexion);

            String Cadena1 = "Select Cantidad from ElementoLote where id_Producto ='" + id_Producto + "'";
            SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);
            int valor = 0;
            String valor1="";

            try { 

                SqlDataReader lector = comando.ExecuteReader();
                SqlDataReader lector2 = comando1.ExecuteReader();


                
                while (lector2.Read())
                {
                valor = lector2.GetInt32(0);
            }



            int c1, c2;
                c1 = valor;
                c2 = Int32.Parse(TextBox9.Text);
                String resultado = "";
                if (c1 < c2)
                {
                    resultado = "No hay Unidades Suficientes";
                }
                else
                {
                    valor = c1;
                double c3 = 0;
                while (lector.Read())
                {
                     c3 = lector.GetDouble(0);
                }
                    Double val = Int32.Parse(TextBox9.Text);
                    double z = val * c3;
                   
                    resultado = "" + z;
                }
                
                    Label1.Text = resultado;

            }
            catch (Exception ex) { }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion1.Open();
            SqlConnection conexion2 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion2.Open();
            String id_Producto = "";
            String Cadena3 = "if (Select Logica from Lote where Codigo ='" + DropDownList8.SelectedValue + "') = 'UEPS' " +
                "Select id_Producto from ElementoLote where id_lote ='" + DropDownList8.SelectedValue + "' order by id DESC " +
                "else " +
                "Select id_Producto from ElementoLote where id_lote ='" + DropDownList8.SelectedValue + "' order by id ASC ";
            SqlCommand comando3 = new SqlCommand(Cadena3, conexion2);

            SqlDataReader le = comando3.ExecuteReader();
            Boolean a = true;
            while (le.Read())
            {
                if (a == true)
                {
                    id_Producto = le.GetString(0);
                    a = false;
                }

            }



            String Cadena = "Select Precio from Lote where Codigo='" + DropDownList8.SelectedValue + "'";
            SqlCommand comando = new SqlCommand(Cadena, conexion);

            String Cadena1 = "Select Cantidad from ElementoLote where id_Producto ='" + id_Producto + "'";
            SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);
            int valor = 0;
            String valor1 = "";

            try
            {

                SqlDataReader lector = comando.ExecuteReader();
                SqlDataReader lector2 = comando1.ExecuteReader();



                while (lector2.Read())
                {
                    valor = lector2.GetInt32(0);
                }



                int c1, c2;
                c1 = valor;
                c2 = Int32.Parse(TextBox9.Text);
                String resultado = "";
                if (c1 < c2)
                {
                    resultado = "No hay Unidades Suficientes";
                }
                else
                {
                    if (c1 == c2)
                    {
                        valor = c1;
                        double c3 = 0;
                        while (lector.Read())
                        {
                            c3 = lector.GetDouble(0);
                        }
                        Double val = Int32.Parse(TextBox9.Text);
                        double z = val * c3;
                        SqlConnection conexion6 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                        conexion6.Open();
                        String Cadena6 = "Delete from ElementoLote where id_Producto = '" + id_Producto + "'";
                        SqlCommand comando6 = new SqlCommand(Cadena6, conexion6);


                        String Cadena7 = "insert into Salida(Nombre_Comprador,id_Bodega,id_Producto,fecha,Cantidad,Total)" +
                       "Values('" + TextBox7.Text + "','" + TextBox6.Text + "','" + DropDownList8.SelectedValue + "','" + Label2.Text + "',"+c2+","+z+");";
                        SqlCommand comando7 = new SqlCommand(Cadena7, conexion6);
                        comando7.ExecuteNonQuery();


                        comando6.ExecuteNonQuery();
                        Response.Redirect("Transferencia.aspx");

                    }
                    else {
                        valor = c1;
                        double c3 = 0;
                        while (lector.Read())
                        {
                            c3 = lector.GetDouble(0);
                        }
                        Double val = Int32.Parse(TextBox9.Text);
                        double z = val * c3;

                        SqlConnection conexion5 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                        conexion5.Open();
                        String Cadena5 = "UPDATE ElementoLote SET Cantidad = Cantidad -" + TextBox9.Text + " where id_Producto ='" + id_Producto + "'";
                        SqlCommand comando5 = new SqlCommand(Cadena5, conexion5);

                        try
                        {
                            String Cadena7 = "insert into Salida(Nombre_Comprador,id_Bodega,id_Producto,fecha,Cantidad,Total)" +
                            "Values('" + TextBox7.Text + "','" + TextBox6.Text + "','" + DropDownList8.SelectedValue + "','" + Label2.Text + "'," + c2 + "," + z + ");";
                            SqlCommand comando7 = new SqlCommand(Cadena7, conexion5);
                            comando7.ExecuteNonQuery();
                            comando5.ExecuteNonQuery();
                            Response.Redirect("Transferencia.aspx");

                        }
                        catch (Exception ex) { }
                       
                    }
                    
                }

                Label1.Text = resultado;

            }
            catch (Exception ex) { }


            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("Princiapal_Cliente.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            String tama = Calendar1.SelectedDate + "";
            String fecha = "";
            Boolean a = true;
            for (int i = 0; i < tama.Length; i++) {
                if (a) {
                    String letra = tama.ToCharArray()[i] + "";
                    if (letra.Equals(" "))
                    {
                        a = false;
                    }
                    else {
                        fecha = fecha + letra;
                    }
                }
                
            }
            Label2.Text = fecha + "";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            String Cadena = "Select Logica from Lote where Codigo ='"+DropDownList2.SelectedValue+"'";
            SqlCommand comando = new SqlCommand(Cadena, conexion);

            try
            {

                SqlDataReader leer =  comando.ExecuteReader();
                String dato = "";
                while (leer.Read()) {
                    dato = leer.GetString(0);
                }
                if (dato.Equals("UEPS"))
                {
                    SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion1.Open();
                    String Cadena1 = "Select * from ElementoLote where id_lote ='" + DropDownList2.SelectedValue + "' order by id DESC";
                    SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);
                    comando1.ExecuteNonQuery();
                }
                else {
                    SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion1.Open();
                    String Cadena1 = "Select * from ElementoLote where id_lote ='" + DropDownList2.SelectedValue + "' order by id ASC";
                    SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);
                    comando1.ExecuteNonQuery();
                }
                Response.Redirect("Transferencia.aspx");

            }
            catch (Exception ex) { }
        }

        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
            conexion.Open();
            String Cadena = "Select Logica from Lote where Codigo ='" + DropDownList8.SelectedValue + "'";
            SqlCommand comando = new SqlCommand(Cadena, conexion);

            try
            {

                SqlDataReader leer = comando.ExecuteReader();
                String dato = "";
                while (leer.Read())
                {
                    dato = leer.GetString(0);
                }
                if (dato.Equals("UEPS"))
                {
                    SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion1.Open();
                    String Cadena1 = "Select * from ElementoLote where id_lote ='" + DropDownList8.SelectedValue + "' order by id DESC";
                    SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);
                    comando1.ExecuteNonQuery();
                }
                else
                {
                    SqlConnection conexion1 = new SqlConnection("Data Source=DESKTOP-IH9506Q;Initial Catalog=Fase2;Integrated Security=True");
                    conexion1.Open();
                    String Cadena1 = "Select * from ElementoLote where id_lote ='" + DropDownList8.SelectedValue + "' order by id ASC";
                    SqlCommand comando1 = new SqlCommand(Cadena1, conexion1);
                    comando1.ExecuteNonQuery();
                }
                Response.Redirect("Transferencia.aspx");

            }
            catch (Exception ex) { }
        }
    }
}