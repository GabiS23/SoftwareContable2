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
    public partial class configuracionRR_HH : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_feriados();
            cargar_sancionesHora();
            cargar_sancionesDias();
            cargar_bonos();
            cargar_Vacaciones();
            cargar_diaLaboral();
        }
         private void cargar_diaLaboral()
        {
            try
            {
                string sql = "select * from dia_trabajo;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Sueldo minimo", typeof(string));
                tab.Columns.Add("Lunes", typeof(string));
                tab.Columns.Add("Martes", typeof(string));
                tab.Columns.Add("Miercoles", typeof(string));
                tab.Columns.Add("Jueves", typeof(string));
                tab.Columns.Add("Viernes", typeof(string));
                tab.Columns.Add("Sabado", typeof(string));
                tab.Columns.Add("Domingo", typeof(string));
                tab.Columns.Add("Gestion", typeof(string));
                tab.Columns.Add("IDempresa", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8], rdr[9], rdr[10]);

                }
                rdr.Close();
                GVdiaLaboral.DataSource = tab;
                GVdiaLaboral.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_Vacaciones()
        {
            try
            {
                string sql = "select * from permisovacaciones;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Minimo minutos", typeof(string));
                tab.Columns.Add("Maximo minutos", typeof(string));
                tab.Columns.Add("Sancion minutos", typeof(string));
                tab.Columns.Add("Penalización", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4]);

                }
                rdr.Close();
                GVvacaciones.DataSource = tab;
                GVvacaciones.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void agregarFeriado_Click(object sender, EventArgs e)
        {
            try
            {
                string f1 = f_feriado.Value.Substring(6) + "-" + f_feriado.Value.Substring(0, 2) + "-" + f_feriado.Value.Substring(3, 2);
                string sql = "insert into feriado (nombre,fecha,observaciones) values ('" + n_feriado.Text + "','" + f1 + "','" + o_feriado.Text + "');";
                
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

        private void cargar_feriados()
        {
            try
            {
                string sql = "select * from feriado;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre", typeof(string));
                tab.Columns.Add("Fecha", typeof(string));
                tab.Columns.Add("Observaciones", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3]);

                }
                rdr.Close();
                GVferiados.DataSource = tab;
                GVferiados.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void sanciones_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into penalizacion_hora (limite_inferior,limite_superior,sancion,penalizacion) values ('" + min_minuto.Text + "','" + max_minuto.Text + "','" + san_minuto.Text + "','" + obs_minuto.Text + "');";

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

        private void cargar_sancionesHora()
        {
            try
            {
                string sql = "select * from penalizacion_hora;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Minimo minutos", typeof(string));
                tab.Columns.Add("Maximo minutos", typeof(string));
                tab.Columns.Add("Sancion minutos", typeof(string));
                tab.Columns.Add("Penalización", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4]);

                }
                rdr.Close();
                GViewSancionHora.DataSource = tab;
                GViewSancionHora.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void btnSancionDia_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into penalizacion_dia (limite_inferior,limite_superior,sancion,observaciones) values ('" + min_dias.Text + "','" + max_dias.Text + "','" + s_dias.Text + "','" + obs_dias.Text + "');";

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
        private void cargar_sancionesDias()
        {
            try
            {
                string sql = "select * from penalizacion_hora;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Minimo minutos", typeof(string));
                tab.Columns.Add("Maximo minutos", typeof(string));
                tab.Columns.Add("Sancion minutos", typeof(string));
                tab.Columns.Add("Observaciones", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4]);

                }
                rdr.Close();
                GViewSancionesDia.DataSource = tab;
                GViewSancionesDia.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void btnBonosAntiguedad_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into bono_antiguedad (limite_inferior,limite_superior,bono,observaciones) values ('" + a_min.Text + "','" + a_max.Text + "','" + a_bono.Text + "','" + a_obs.Text + "');";

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
        private void cargar_bonos()
        {
            try
            {
                string sql = "select * from bono_antiguedad;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Minimo minutos", typeof(string));
                tab.Columns.Add("Maximo minutos", typeof(string));
                tab.Columns.Add("Sancion minutos", typeof(string));
                tab.Columns.Add("Observaciones", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4]);

                }
                rdr.Close();
                GVbonos.DataSource = tab;
                GVbonos.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void btnVacaciones_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into permisovacaciones (numero_permiso,limite_superior,sancion,observaciones) values ('" + min_dias.Text + "','" + max_dias.Text + "','" + s_dias.Text + "','" + obs_dias.Text + "');";

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

        protected void btnDiasLaborales_Click(object sender, EventArgs e)
        {

        }
    }
}