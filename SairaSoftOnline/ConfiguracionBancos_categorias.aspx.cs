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
    public partial class ConfiguracionBancos_categorias : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_bancos();
            cargar_UnidadesMedida();
            cargar_TipoMoneda();
            cargar_comboTipoMoneda();
        }
        
        protected void btnBancos_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into banco (nombre_banco,numero_cuenta,tipo_cuenta,observacione,idmoneda,idPC) values ('" + nom_banco.Text + "','" + num_cuenta.Text + "','" + tipoCuenta.Text + "','" + tipoMoneda.Text + "','" + observaciones.Text + "','" + GVtiposMoneda + "','PENDIENTE');";

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

        private void cargar_bancos()
        {
            try
            {
                string sql = "select * from banco;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre", typeof(string));
                tab.Columns.Add("Nº de cuenta", typeof(string));
                tab.Columns.Add("Tipo de cuenta", typeof(string));
                tab.Columns.Add("Tipo de moneda", typeof(string));
                tab.Columns.Add("Observaciones", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5]);

                }
                rdr.Close();
                GVbancos.DataSource = tab;
                GVbancos.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void BtnUnidadMedida_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into banco (nombre,abrev) values ('" + n_unmedida.Text + "','" + a_unmedida.Text + "');";

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

        private void cargar_UnidadesMedida()
        {
            try
            {
                string sql = "select * from categoria;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre", typeof(string));
                tab.Columns.Add("Abrevuatura", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2]);

                }
                rdr.Close();
                GvUnidadMedida.DataSource = tab;
                GvUnidadMedida.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void BtnTipoMoneda_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into moneda (nombre,sigla) values ('" + nom_moneda.Text + "','" + sigla_moneda.Text + "');";

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
        
        private void cargar_TipoMoneda()
        {
            try
            {
                string sql = "select * from moneda;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre", typeof(string));
                tab.Columns.Add("Sigla", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2]);

                }
                rdr.Close();
                GVtiposMoneda.DataSource = tab;
                GVtiposMoneda.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void cargar_comboTipoMoneda()
            {
                try
                {
                    string sql = "select * from moneda;";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();

                   

                    while (rdr.Read())
                    {
                        tipoMoneda.Items.Add(rdr[1].ToString());
                    }
                    rdr.Close();
                  
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
                }
            }

        protected void observaciones_TextChanged(object sender, EventArgs e)
        {
          
        }
    }
}