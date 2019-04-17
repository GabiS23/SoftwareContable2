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
    public partial class registrar_presupuestos : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_presupuestos();
            cargar_comboTipoMoneda();
            cargar_comboSucursal();
            cargar_comboProyecto();
            cargar_comboCuentaApresupuestar();
        }
        protected void btnPresupuesto_Click(object sender, EventArgs e)
        {
            string nombre = "";
            try
            {
                if (comboSucursalPresup.Text == "Seleccione")
                {
                    nombre = "Sairasoft";
                }
                else
                {
                    if (comboPuntoVentaP.Text == "Seleccione")
                    {
                        nombre = comboSucursalPresup.Text;
                    }
                    else
                    {
                        nombre = comboPuntoVentaP.Text;
                    }

                }

                string sql = "insert into presupuestos (cuentapresupuesto,tipomoneda,gestion,enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre,nombreproyecto) values ('" + DDcuentaApresupuestar.Text + "','" + tipoMonedaPresupuest.Text + "','" + gestion.Value + "','" + en.Text + "','" + febr.Text + "','" + mzo.Text + "','" + abr.Text + "','" + my.Text + "','" + jun.Text + "','" + jul.Text + "','" + ag.Text + "','" + sept.Text + "','" + oct.Text + "','" + nov.Text + "','" + dic.Text + "','" + DropDownNomProyecto.Text + "');";
                //,numerocomprobante,tipocomprobante,nombre,idpc,idproy,empr
                //,'" + numCompr.Text + "','" + tipoCompr.Text + "','" + nombre.Text + "','" + idPlanCnta.Text + "','" + idProy.Text + "','" + empresa.Text + "'

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
        private void cargar_comboCuentaApresupuestar() 
        {
            try
            {
                string sql = "select * from plande_cuenta;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    DDcuentaApresupuestar.Items.Add(rdr[2].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboProyecto()
        {
            try
            {
                string sql = "select * from proyectos;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    DropDownNomProyecto.Items.Add(rdr[1].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_presupuestos()
        {
            try
            {
                string sql = "select * from presupuestos limit 6;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Cuenta presupuestada", typeof(string));
                tab.Columns.Add("Tipo de moneda", typeof(string));
                tab.Columns.Add("Gestión", typeof(string));
                tab.Columns.Add("Enero", typeof(string));
                tab.Columns.Add("Febrero", typeof(string));
                tab.Columns.Add("Marzo", typeof(string));
                tab.Columns.Add("Abril", typeof(string));
                tab.Columns.Add("Mayo", typeof(string));
                tab.Columns.Add("Junio", typeof(string));
                tab.Columns.Add("Julio", typeof(string));
                tab.Columns.Add("Agosto", typeof(string));
                tab.Columns.Add("Septiembre", typeof(string));
                tab.Columns.Add("Octubre", typeof(string));
                tab.Columns.Add("Noviembre", typeof(string));
                tab.Columns.Add("Diciembre", typeof(string));
                tab.Columns.Add("Nombre del proyecto relacionado", typeof(string));
                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8], rdr[9], rdr[10], rdr[11], rdr[12], rdr[13], rdr[14], rdr[15], rdr[16]);
                }
                rdr.Close();
                GVPresupuestos.DataSource = tab;
                GVPresupuestos.DataBind();
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
                    tipoMonedaPresupuest.Items.Add(rdr[2].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboSucursal()
        {
           
            try
            {
                // placeholder seleccione
                comboSucursalPresup.Items.Add("Seleccione");
                if (comboSucursalPresup.Items.Count < 2)
                {
                    string sql = "select * from sucursal group by nombre_sucursal;";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        comboSucursalPresup.Items.Add(rdr[1].ToString());
                    }
                    rdr.Close();
                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboPuntoVenta(string suc)
        {  
            try
            {
                // placeholder seleccione
                comboPuntoVentaP.Items.Add("Seleccione");
                if (comboPuntoVentaP.Items.Count < 2)
                {
                    string sql = "select PV.punto_venta from punto_venta PV, sucursal S where PV.idSucursal=S.idsucursal and S.nombre_sucursal= '" + suc + "';";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        comboPuntoVentaP.Items.Add(rdr[0].ToString());
                    }
                    rdr.Close();
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        protected void DropDPuntoVenta_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboPuntoVentaP.Items.Clear();
            cargar_comboPuntoVenta(comboSucursalPresup.Text);
        }


    }
}