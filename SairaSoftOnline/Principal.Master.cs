using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SairaSoftOnline
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Label1.Text = "Registrese";
                cerrar_sesion.InnerText = "Login";
            }
            else
            {
                Label1.Text = (Session["username"]).ToString();
                cerrar_sesion.InnerText = "Logout";                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("login.aspx");
            cerrar_sesion.InnerText = "Login";
        }

       
    }
}