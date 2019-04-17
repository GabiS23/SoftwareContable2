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
    public partial class CrearEmpresa : System.Web.UI.Page
    {
       private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "CALL crear_empresa('" + ID_rComercial.Text + "', '" + ID_rSocial.Text + "', '" + ID_nit.Text + "', '" + periodoCierre.Text + "', '" + ID_pais.Text + "', '" + ID_perActividad.Text + "', '" + ID_actPrincipal.Text + "','" + ID_ciudadSucursal.Text + "','" + ID_nPatronalSucursal.Text + "','" + ID_nombrePV.Text + "', '" + ID_direccionPV.Text + "', '" + ID_telefonoPV.Text + "', 'Activo', '" + ID_correoPV.Text + "','" + calendarioEmpresa.Value + "','Activo','2011-1-1','2030-1-1')";
                
                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();               
                rdr.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('empresa creada correctamente');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }   
        }

      

        protected void periodoCierre_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (periodoCierre.Text == "31 diciembre")
                ID_perActividad.Text = "Enero - Diciembre";
            if (periodoCierre.Text == "31 Marzo")
                ID_perActividad.Text = "Abril - Marzo";
            if (periodoCierre.Text == "30 Junio")
                ID_perActividad.Text = "Julio - Junio";
            if (periodoCierre.Text == "30 Septiembre")
                ID_perActividad.Text = "Octubre - Septiembre";
        }

       

       
    }
}