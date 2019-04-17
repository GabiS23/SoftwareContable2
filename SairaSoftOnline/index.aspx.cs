using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SairaSoftOnline
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {                
                user_name.InnerText = "Bienvenido Desconocido";
            }
            else
            {
                user_name.InnerText = "Bienvenido " + Session["username"].ToString();
            }
        }
    }
}