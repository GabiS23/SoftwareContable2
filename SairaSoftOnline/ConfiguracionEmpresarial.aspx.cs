using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace SairaSoftOnline
{
    public partial class ConfiguracionEmpresarial : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_moneda();
            cargar_tipoCambio();
            cargar_tipoFactura();
            cargar_docificacion();

                cargar_comboboxSucursal();
                //cargar_comboboxpuntoDeVenta();
                //cargar_comboboxcargarFactura();
        }
        protected void tipoMoneda_Click(object sender, EventArgs e)
        {
            //private void cargar_comboboxpuntoDeVenta()
            //{
            //    throw new NotImplementedException();
            //}

            //private void cargar_comboboxcargarFactura()
            //{
            //    throw new NotImplementedException();
            //}
            try
            {
                string sql = "insert into moneda (nombre,sigla) values ('" + n_moneda.Text + "','" + s_moneda.Text + "');";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();
                rdr.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Datos guardados correctamente');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }  

        }

        protected void tipoCambio_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "CALL insertarTipoCambio('" + fechaDolar.Value + "','" + tc_Ufv.Text + "', '" + tc_dolar.Text + "')";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();
                rdr.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Datos guardados correctamente');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            } 
        }
        
        protected void ButtonFactura_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "CALL insertarFactura('" + n_factura.Text + "');";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();
                rdr.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Datos guardados correctamente');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void ButtonDocificacion_Click(object sender, EventArgs e)
        {
            //    If RadioButton1.Checked Then
            //    sql.CommandText = "CALL insertarDosificacion('" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + f1 + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "', 'Activo', '" + ComboBox3.Text + "', '" + ComboBox1.Text + "') ;"
            //Else
            //    sql.CommandText = "CALL insertarDosificacion('" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + f1 + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "', 'desactivo', '" + ComboBox3.Text + "', '" + ComboBox1.Text + "') ;"
        


            try
            {

                string sql = "CALL insertarDocificacion('" + pn_docificacion.Text + "','" + na_docificacion.Text + "','" + flde_docificacion.Value + "','" + lldc_docificacion.Text + "','" + ley_docificacion.Text + "','" + estado.Text + "','" + actvEmpresa_docificacion.Text + "','" + factura_docificacion.Text + "');";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();
                rdr.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Datos guardados correctamente');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        
        private void cargar_moneda()
        {
            try
            {
                string sql = "select * from moneda limit 10;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Numero", typeof(string));
                tab.Columns.Add("Nombre", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2]);

                }
                rdr.Close();
                GridViewMoneda.DataSource = tab;
                GridViewMoneda.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_tipoCambio()
        {
            try
            {
                string sql = "select * from tipo_cambio order by fecha desc limit 10;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Fecha", typeof(string));
                tab.Columns.Add("UFV", typeof(string));
                tab.Columns.Add("Dolar", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3]);

                }
                rdr.Close();
                GridViewTipoCambio.DataSource = tab;
                GridViewTipoCambio.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_tipoFactura()
        {
            try
            {
                string sql = "select * from tipo_factura limit 10;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Numero", typeof(string));
                tab.Columns.Add("Nombre", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2]);

                }
                rdr.Close();
                GridViewFacturas.DataSource = tab;
                GridViewFacturas.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_docificacion()
        {
            try
            {
                string sql = "select * from docificacion limit 10;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Numero de autorización", typeof(string));
                tab.Columns.Add("Tipo de facturación", typeof(string));
                tab.Columns.Add("Fecha limite", typeof(string));
                tab.Columns.Add("Activo", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[2], rdr[8], rdr[3], rdr[6]);

                }
                rdr.Close();
                GridViewDosificacion.DataSource = tab;
                GridViewDosificacion.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_comboboxSucursal()
        {
            try
            {
                string sql = "select * from sucursal;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1]);

                }
                rdr.Close();
                s_docificacion.DataSource = tab;
                s_docificacion.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }

        }

    }
}