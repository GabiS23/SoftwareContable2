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
    public partial class calculadora_tributaria : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
        double ufvpago, ufvPresentacion;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_listaCalculadoraTributaria();
        }

        private void cargar_listaCalculadoraTributaria()
        {
            try
            {
                string sql = "select * from calculadora_tributaria;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Periodo Mes de la D.T.", typeof(string));
                tab.Columns.Add("Año", typeof(string));
                tab.Columns.Add("Fecha de preesentación", typeof(string));
                tab.Columns.Add("Fecha de Pago", typeof(string));
                tab.Columns.Add("UFV Presentación", typeof(string));
                tab.Columns.Add("UFV Pago", typeof(string));
                tab.Columns.Add("Tiempo_mora", typeof(string));
                tab.Columns.Add("Tipo de impuesto", typeof(string));

                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8]);

                }
                rdr.Close();
                GVcalculadoraTributaria.DataSource = tab;
                GVcalculadoraTributaria.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);

            }
        }

        protected void BtnGuardarCalculadoraTrib_Click(object sender, EventArgs e)
        {
            double manVal = (ufvpago / (ufvPresentacion * (Convert.ToDouble(deuda_tributaria.Text)))) - (Convert.ToDouble(deuda_tributaria.Text));
            //double interes = ((Convert.ToDouble(deuda_tributaria.Text)) + manVal) * (1 + ((Convert.ToDouble( DDtazaInteresDT.Text.Substring(0,2)))/100)/360)^();
            
        }
        private double cargar( string sql)
        {
            double resultado=0;
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                resultado= Convert.ToDouble( rdr[0].ToString());

            }
            rdr.Close();
            return resultado;
        }
        private void fecha_presentacion()
        {
            ufvPresentacion = cargar("select UFV from tipo_cambio where fecha = '" + f_presentacion.Value + "';");
            ufv_presnt.Text = ufvPresentacion.ToString();
        }
        private void fecha_pago()
        {
            ufvpago = cargar("select UFV from tipo_cambio where fecha = '" + f_pago.Value + "';");
            ufv_pago.Text = ufvpago.ToString();
        }

    }
}