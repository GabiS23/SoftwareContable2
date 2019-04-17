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
    public partial class Registro_Facturas : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void facturaVentas_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar("insert into libro_venta('nit', 'razon_social', 'numero_factura', 'numero_autor', 'fecha', 'codigo', 'estado', 'total', 'importe', 'exportaciones', 'taza', 'descuentos', 'importe_base', 'devito_fiscal') values ('" + fv_nit.Text + "', '" + fv_razonS.Text + "', '" + fv_numeroFact.Text + "', '" + fv_numAuto.Text + "', '" + fv_fechaFact.Value + "', '" + fv_codigoControl.Text + "', '" + fv_estado.Text + "', '" + fv_total.Text + "', '" + fv_importe.Text + "', '" + fv_exportaciones.Text + "', '" + fv_vtasTasa.Text + "', '" + fv_descuento.Text + "', '" + fv_importeBase.Text + "', '" + fv_debito.Text + "');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void facturaCompras_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar("INSERT INTO libro_compra('nit', 'razon_social', 'numero_factura', 'numero_autor', 'fecha', 'codigo_control', 'total_bs', 'importe', 'descuentos', 'credito_fiscal') VALUES ('" + fc_nit.Text + "', '" + fc_razonS.Text + "', '" + fc_numFac.Text + "', '" + fc_numAut.Text + "', '" + fc_fecha.Value + "', '" + fc_codigoCntrl.Text + "', '" + fc_total.Text + "', '" + fv_importeBase.Text+"', '" + fc_descuento.Text+"', '" + fc_creditoFisc.Text +"');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        protected void Importacion_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar("INSERT INTO importacionf('nit', 'razon_social', 'tramite', 'aduana', 'fecha`, 'tipo_tramite', 'dui', 'iva', 'descuentos', 'base') VALUES ('" + i_nit.Text + "', '" + i_razonS.Text + "', '" + i_numTramite.Text + "', '" + i_codigoAduana.Text + "', '" + i_fecha.Value + "', '" + i_tipoTramite.Text + "', '" + i_totalDUI.Text + "', '" + i_totalIVA.Text + "', '" + i_descuento.Text + "', '" + i_impuestoBase.Text + "');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar(string sql,int ind)
        {
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();

            if (ind !=0)
            {
             while (rdr.Read())
             {
                 if (ind ==1)
                {
                    fv_razonS.Text = (rdr[0].ToString());
                    fv_numAuto.Text = (rdr[1].ToString());
                     
                }
                 else  
                 if(ind == 2)
                 {
                      fc_razonS.Text = (rdr[0].ToString());
                       fc_numAut.Text = (rdr[1].ToString());
                 }
                 //factura venta
                 if(ind == 3)
                 {
                     fv_codigoControl.Text = (rdr[6].ToString());
                     fv_estado.Text        = (rdr[7].ToString());
                     fv_total.Text         = (rdr[8].ToString());
                     fv_importe.Text       = (rdr[9].ToString());
                     fv_exportaciones.Text = (rdr[10].ToString());
                     fv_vtasTasa.Text      = (rdr[11].ToString());
                     fv_descuento.Text     = (rdr[12].ToString());
                     fv_importeBase.Text = (rdr[13].ToString());
                     fv_debito.Text = (rdr[14].ToString());
                 }
                 if(ind == 4)
                 {
                     i_razonS.Text = (rdr[0].ToString());
                 }
                 //factura compra 
                 if (ind == 5)
                 {
                     fc_codigoCntrl.Text = (rdr[4].ToString());
                     fc_total.Text       = (rdr[7].ToString());
                     fc_importeICE.Text  = (rdr[8].ToString());
                     fc_descuento.Text   = (rdr[9].ToString());
                     fc_importeB.Text    = (rdr[10].ToString());
                     fc_creditoFisc.Text = (rdr[11].ToString());
                 }
                 //factura importacion
                 if (ind == 6)
                 {
                     i_tipoTramite.Text = (rdr[4].ToString());
                     i_totalDUI.Text = (rdr[7].ToString());
                     i_totalIVA.Text = (rdr[8].ToString());
                     i_descuento.Text = (rdr[9].ToString());
                     i_impuestoBase.Text = (rdr[10].ToString());
                 }
             }
             rdr.Close();
            }

        }

        protected void fv_nit_TextChanged(object sender, EventArgs e)
        {
            if (fv_nit.Text.Equals("251644025"))
            {
                cargar("select razon_social,numero_autor from libro_venta where nit='" + fv_nit.Text + "';", 1);
            }
        }

        protected void i_nit_TextChanged(object sender, EventArgs e)
        {
            if (i_nit.Text.Equals("753429"))
            {
                cargar("select razon_social from importacionf where nit= '" + i_nit.Text + "';",4);
            }
        }

        protected void fv_numeroFact_TextChanged(object sender, EventArgs e)
        {
            if (fv_numeroFact.Text.Equals("331"))
            {
                cargar("select LC.* from libro_venta LC, punto_venta PV where nit = '251644025' and numero_autor  = '118401800002368' and fecha = '2018-11-09' and PV.idpunto_venta = LC.pv and  PV.punto_venta = 'central cocha saira' and numero_factura = '" + fv_numeroFact.Text + "';", 3);
            }
        }

        protected void fc_nit_TextChanged(object sender, EventArgs e)
        {
            if (fc_nit.Text.Equals("1007039026"))
            {
                cargar("select razon_social,numero_autor from libro_compra where nit='" + fc_nit.Text + "';", 2);
            }
        }

        protected void fc_numeroFact_TextChanged(object sender, EventArgs e)
        {
            if (fc_numFac.Text.Equals("717"))
            {
                cargar("select LC.* from libro_compra LC, punto_venta PV where nit = '4411852019' and numero_autor  = '367401800000555' and fecha = '2018-06-04' and PV.idpunto_venta = LC.pv and  PV.punto_venta = 'central cocha saira' and numero_factura = '" + fc_numFac.Text + "'", 5);
            }
        }

        protected void i_numTramite_TextChanged(object sender, EventArgs e)
        {
            if (i_numTramite.Text.Equals("56"))
            {
                cargar("select I.* from importacionf I,punto_venta PV where nit = '753429' and aduana = 'oruro'and fecha = '2018-12-18' and PV.idpunto_venta = I.pv and  PV.punto_venta = 'central cocha saira' and tramite  = '"+i_numTramite.Text+"'", 6);
            }
        }

   
        //private void calcular()
        // {
        //  if (!TextBox8.Text.Equals(""))
        //   {
        //    TextBox13.Text = (double.Parse(cambiarpc(TextBox8.Text)) - double.Parse(cambiarpc(TextBox9.Text)) - double.Parse(cambiarpc(TextBox10.Text)) - double.Parse(cambiarpc(TextBox11.Text)) - double.Parse(cambiarpc(TextBox12.Text))).ToString("N2");
        //    TextBox14.Text = (double.Parse(cambiarpc(TextBox13.Text)) * 0.13).ToString("N2");
        //   }
        // }

       

  }
}