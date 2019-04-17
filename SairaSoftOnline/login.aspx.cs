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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

            try
            {
                string sql = "select count(*), concat(DU.nombre, ' ', DU.apellido) from usuario US, dato_usuario DU where DU.usuario_idusuario = US.idusuario and cuenta = '" + text_login.Text + "' and contrasena = '" + text_login_pass.Text + "' and estado = 'Activo'";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    string res = rdr[0] + "";
                    if (res.Equals("1"))
                    {
                        Session["username"] = rdr[1].ToString();
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Nombre de usuario o Contraseña INCORRECTO');", true);
                    }


                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }     
        }
    }
}