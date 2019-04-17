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
    public partial class registroProyectos : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_proyectos();
            cargar_comboTipoMoneda();
            cargar_comboSucursal();
        }
        private void cargar_proyectos()
        {
            try
            {
                string sql = "select * from proyectos;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre del proyecto", typeof(string));
                tab.Columns.Add("importe", typeof(string));
                tab.Columns.Add("Tipo de moneda", typeof(string));
                tab.Columns.Add("Fecha inicio", typeof(string));
                tab.Columns.Add("Fecha fin", typeof(string));
                tab.Columns.Add("ID Punto de venta", typeof(string));
                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6]);
                }
                rdr.Close();
                GVProyectos.DataSource = tab;
                GVProyectos.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void btnProyectos_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into proyectos (nombreproyecto,importe,moneda,fechainicio,fechafin,idpv) values ('" + nom_proyect.Text + "','" + import_proyect.Text + "','" + tipoMonedarProyect.Text + "','" + fecha_inicio.Value + "','" + fecha_fin.Value + "','" + DropDPuntoVenta.Text + "');";

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
                    tipoMonedarProyect.Items.Add(rdr[2].ToString());
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
                if (DropDownSucursal.Items.Count < 1)
                {
                    string sql = "select * from sucursal group by nombre_sucursal;";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();



                    while (rdr.Read())
                    {
                        DropDownSucursal.Items.Add(rdr[1].ToString());
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

                if (DropDPuntoVenta.Items.Count < 1)
                {
                    string sql = "select PV.punto_venta from punto_venta PV, sucursal S where PV.idSucursal=S.idsucursal and S.nombre_sucursal= '" + suc + "';";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        DropDPuntoVenta.Items.Add(rdr[0].ToString());
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
            DropDPuntoVenta.Items.Clear();
            cargar_comboPuntoVenta(DropDownSucursal.Text);
        }

    }
}