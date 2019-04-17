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
    public partial class registrar_clientesYproveddores : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_clientes();
            cargar_proveedores();
            cargarComboBox_cuentaContableCliente();
            cargarComboBox_cntaContableProveedor();
            cargar_claveCliente();
        }

        private void cargar_claveCliente()
        {           
             try
                {
                    string sql = "select max(ncliente) +1 from cliente;";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        clave_cliente.Text = rdr[0].ToString(); 
                    }
                    rdr.Close();
                  
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
                }
        }

        private void cargarComboBox_cuentaContableCliente()
        {
                try
                {
                    string sql = "select concat((substring(nombre,24)),'[',codigo,']') from plande_cuenta where (codigo like '1120101%' or codigo like '1120102%' ) and length(codigo) = 11;";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        combocntaContableCliente.Items.Add(rdr[0].ToString());
                    }
                    rdr.Close();
                  
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
                }
            }
        private void cargarComboBox_cntaContableProveedor()
        {
            try
            {
                string sql = "select concat((substring(nombre,24)),'[',codigo,']') from plande_cuenta where (codigo like '1120101%' or codigo like '1120102%' ) and length(codigo) = 11;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    combocntaContableProv.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_proveedores()
        {
            try
            {
                string sql = "select * from proveedor limit 4;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre comercial", typeof(string));
                tab.Columns.Add("NIT", typeof(string));
                tab.Columns.Add("Dirección", typeof(string));
                tab.Columns.Add("Nombre del cliente", typeof(string));
                tab.Columns.Add("Teléfono fijo", typeof(string));
                tab.Columns.Add("Teléfono celular", typeof(string));
                tab.Columns.Add("Correo", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7]);

                }
                rdr.Close();
                Gvproveedores.DataSource = tab;
                Gvproveedores.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);

            }
        }

        private void cargar_clientes()
        {
            try
            {
                string sql = "select * from cliente limit 4;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre comercial", typeof(string));
                tab.Columns.Add("NIT", typeof(string));
                tab.Columns.Add("Dirección", typeof(string));
                tab.Columns.Add("Nombre del cliente", typeof(string));
                tab.Columns.Add("Teléfono fijo", typeof(string));
                tab.Columns.Add("Teléfono celular", typeof(string));
                tab.Columns.Add("Correo", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7]);

                }
                rdr.Close();
                GVclientes.DataSource = tab;
                GVclientes.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
        }
    }

        protected void BtnAgregarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into cliente (nombre_comercial,razon_social,nit,direccion,nombre_proveedor,fijo,movil,correo,saldo,cuenta_contable,razon_social,pv,ncliente) values ('" + cl_nomComercial.Text + "','" + cl_nit.Text + "','" + cl_direccion.Text + "','" + cl_nom.Text + "','" + cl_fijo.Text + "','" + cl_movil.Text + "','" + cl_correo.Text + "','" + combocntaContableCliente.Text + "');";

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

        protected void BtnAgregarProveedores_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into proveedor (nombre_comercial,nit,direccion,nombre_proveedor,fijo,movil,correo,kardex,cuenta_contable,razon_social,pv,saldo) values ('" + cl_nomComercial.Text + "','" + cl_nit.Text + "','" + cl_direccion.Text + "','" + cl_nom.Text + "','" + cl_fijo.Text + "','" + cl_movil.Text + "','" + cl_correo.Text + "','" +combocntaContableProv.Text + "');";

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

        
    }
}