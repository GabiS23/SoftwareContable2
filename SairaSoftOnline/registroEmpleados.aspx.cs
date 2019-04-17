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
    public partial class registroEmpleados : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_departamento();
            cargar_empleado();
            cargar_puntoVenta();
            cargar_Horario();
            cargar_cargo();
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "CALL insertarrecursohumano('" + e_CI.Text + "', '" + e_apellidos.Text + "', '" + e_nombres.Text + "', '" + calendarioFechaNaci.Value + "', '" + calendarioFechaIngreso.Value + "', '" + e_telefono.Text + "', '" + e_correo.Text + "','" + eGradoEstudio.Text + "','" + g_nombre.Text + "','" + g_apellido.Text + "', '" + eNacionalidad.Text + "', '" + eEstadoCivil.Text + "', '" + e_sueldo.Text + "','" + eAfp.Text + "','" + eGenero.Text + "','" + e_licenciaConducir.Text + "','" + eCategoriaLicencia.Text + "','" + e_contraseña.Text + "','" + edepartamento.Text + "','" + pVenta.Text + "','" + eCargo.Text + "','" + eHorario.Text + "', '" + e_direccion.Text + "');";
                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                rdr.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('datos registrados');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }   

        }



        protected void cargar_departamento()
        {
            try
            {
                string sql = "select nombre_departamento from departamento;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[0]);
                }
                rdr.Close();
                edepartamento.DataSource = tab;
                edepartamento.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            } 
        }
        protected void cargar_cargo()
        {
            try
            {
                string sql = "select nombrecargo from cargos ('" + eCargo.Text + "');";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[0]);
                }
                rdr.Close();
                eCargo.DataSource = tab;
                eCargo.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_empleado()
        {
            try
            {
                string sql = "select * from recurso_humano;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("CI", typeof(string));
                tab.Columns.Add("Apellidos", typeof(string));
                tab.Columns.Add("Nombres", typeof(string));
                tab.Columns.Add("Fecha de Nacimiento", typeof(string));
                tab.Columns.Add("Fecha de ingreso", typeof(string));
                tab.Columns.Add("Telefono", typeof(string));
                tab.Columns.Add("Correo", typeof(string));
                tab.Columns.Add("Grado de estudio", typeof(string));
                tab.Columns.Add("9", typeof(string));
                tab.Columns.Add("10", typeof(string));
                tab.Columns.Add("11", typeof(string));
                tab.Columns.Add("12", typeof(string));
                tab.Columns.Add("13", typeof(string));
                tab.Columns.Add("14", typeof(string));
                tab.Columns.Add("15", typeof(string));
                tab.Columns.Add("16", typeof(string));
                tab.Columns.Add("17", typeof(string));
                tab.Columns.Add("18", typeof(string));
                tab.Columns.Add("19", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8], rdr[9], rdr[10], rdr[11], rdr[12], rdr[13], rdr[14], rdr[15], rdr[16], rdr[17], rdr[18], rdr[19]);

                }
                rdr.Close();
                GridViewEmpleados.DataSource = tab;
                GridViewEmpleados.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_puntoVenta()
        {
            try
            {
                string sql = "select punto_venta from punto_venta;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Numero", typeof(string));
                while (rdr.Read())
                {
                    pVenta.Items.Add(rdr[0].ToString());
                }
                rdr.Close();
                pVenta.DataSource = tab;
                pVenta.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_Horario()
        {
            try
            {
                string sql = "select nombre_grupo from hora_trabajo;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("horario", typeof(string));

                while (rdr.Read())
                {
                    eHorario.Items.Add(rdr[0].ToString());
                }
                rdr.Close();
                eHorario.DataSource = tab;
                eHorario.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        

    }
}