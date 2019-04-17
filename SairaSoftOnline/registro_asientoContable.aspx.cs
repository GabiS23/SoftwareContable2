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
    public partial class registro_asientoContable : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
        DataTable ejemplo;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_comboTipoComprobante();
            cargar_comboTipoComprobante2();
            cargar_comboProyecto();
            cargar_comboMoneda();
            cargar_comboProveedor();
            cargar_comboClientes();
            cargar_comboCuentas();
            cargar_comboCuentas2();
            cargar_comboCuentasIngreso();
            
           

            if (!IsPostBack)
            {
                ejemplo = new DataTable();
                ejemplo.Columns.Add("codigo", typeof(string));
                ejemplo.Columns.Add("cuentas", typeof(string));
                ejemplo.Columns.Add("glosa", typeof(string));
                ejemplo.Columns.Add("debe", typeof(string));
                ejemplo.Columns.Add("haber", typeof(string));
                Session.Add("tabla", ejemplo);
            }
            
        }

       
        //combos
        private void cargar_comboMoneda()
        {
             try
            {
                ac_comboMoneda.Items.Add("Seleccione");

                string sql = "select DISTINCT sigla from moneda;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_comboMoneda.Items.Add(rdr[0].ToString());
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
                ac_comboProy.Items.Add("Seleccione");
                string sql = "select DISTINCT nombreproyecto from proyectos;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_comboProy.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboTipoComprobante()
        {
            try
            {
                
                ac_tipoComp.Items.Add("Seleccione");
                string sql = "select DISTINCT nombre from comprobante;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_tipoComp.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboTipoComprobante2()
        {
            try
            {
                ac_tipoComp2.Items.Add("Seleccione");
                string sql = "select DISTINCT nombre from comprobante;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_tipoComp2.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboProveedor()
        {
            try
            {
                ac_proveedor.Items.Add("Seleccione");
                string sql = "select DISTINCT nombre_comercial from proveedor;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_proveedor.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboClientes()
        {
            try
            {
                ac_comboClientes.Items.Add("Seleccione");
                string sql = "select DISTINCT nombre_comercial from cliente;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_comboClientes.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboCuentas()
        {
            try
            {
                ac_comboCuentas.Items.Add("Seleccione");
                string sql = "select DISTINCT concat(substring(nombre,24),'[',codigo,']') from plande_cuenta where (codigo like '1%' or codigo like '2%' or codigo like '6%' )  and length(codigo) = 11 order by codigo;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_comboCuentas.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboCuentas2()
        {
            try
            {
                ac_comboCuentas2.Items.Add("Seleccione");
                string sql = "select DISTINCT concat(substring(nombre,24),'[',codigo,']') from plande_cuenta where (codigo like '1%' or codigo like '2%' or codigo like '6%' )  and length(codigo) = 11 order by codigo;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_comboCuentas2.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        private void cargar_comboCuentasIngreso()
        {
            
               try
            {
                ac_cuentasIngreso.Items.Add("Seleccione");
                string sql = "select DISTINCT concat(substring(nombre,24),'[',codigo,']')  from plande_cuenta where codigo like '41101%';";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    ac_cuentasIngreso.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
        //modales
        protected void abrir_libroCompras_Click(object sender, EventArgs e)
        {
            
        }

        protected void abrir_libroVentas_Click(object sender, EventArgs e)
        {

        }

        //buttons
      
        private void cargar_asientoContable()
             {
                 try
                 {
                     string sql = "select  from registro_contable;";

                     MySqlConnection conn = new MySqlConnection(connStr);
                     conn.Open();
                     MySqlCommand cmd = new MySqlCommand(sql, conn);
                     MySqlDataReader rdr = cmd.ExecuteReader();

                     DataTable tab = new DataTable();
                     tab.Columns.Add("codigo", typeof(string));
                     tab.Columns.Add("cuentas", typeof(string));
                     tab.Columns.Add("glosa", typeof(string));
                     tab.Columns.Add("debe", typeof(string));
                     tab.Columns.Add("haber", typeof(string));

                     while (rdr.Read())
                     {
                         tab.Rows.Add(rdr[2], rdr[2], rdr[3], rdr[4], rdr[5]);

                     }
                     rdr.Close();
                     RepterDetails.DataSource = tab;
                     RepterDetails.DataBind();
                 }
                 catch (Exception ex)
                 {
                     ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
                 }
             }

        //libro de compras

        protected void facturaCompras_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar3("INSERT INTO libro_compra('nit', 'razon_social', 'numero_factura', 'numero_autor', 'fecha', 'codigo_control', 'total_bs', 'importe', 'descuentos', 'credito_fiscal') VALUES ('" + fc_nit.Text + "', '" + fc_razonS.Text + "', '" + fc_numFac.Text + "', '" + fc_numAut.Text + "', '" + fc_fecha.Value + "', '" + ac_codigo.Text + "', '" + fc_total.Text + "', '" + fv_importeBase.Text + "', '" + fc_descuento.Text + "', '" + fc_creditoFisc.Text + "');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar3(string sql, int ind)
        {
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();

            if (ind != 0)
            {
                while (rdr.Read())
                {
                    if (ind == 1)
                    {
                        fv_razonS.Text = (rdr[0].ToString());
                        fv_numAuto.Text = (rdr[1].ToString());

                    }
                    else
                        if (ind == 2)
                        {
                            fc_razonS.Text = (rdr[0].ToString());
                            fc_numAut.Text = (rdr[1].ToString());
                        }
                    //factura venta
                    if (ind == 3)
                    {
                        fv_codigoControl.Text = (rdr[6].ToString());
                        fv_estado.Text = (rdr[7].ToString());
                        fv_total.Text = (rdr[8].ToString());
                        fv_importe.Text = (rdr[9].ToString());
                        fv_exportaciones.Text = (rdr[10].ToString());
                        fv_vtasTasa.Text = (rdr[11].ToString());
                        fv_descuento.Text = (rdr[12].ToString());
                        fv_importeBase.Text = (rdr[13].ToString());
                        fv_debito.Text = (rdr[14].ToString());
                    }
                   
                    //factura compra 
                    if (ind == 5)
                    {
                        ac_codigo.Text = (rdr[4].ToString());
                        fc_total.Text = (rdr[7].ToString());
                        fc_importeICE.Text = (rdr[8].ToString());
                        fc_descuento.Text = (rdr[9].ToString());
                        fc_importeB.Text = (rdr[10].ToString());
                        fc_creditoFisc.Text = (rdr[11].ToString());
                    }
                    if (ind == 6)
                    {
                       ac_ufvs.Text=(rdr[2].ToString());
                       ac_tc.Text = (rdr[3].ToString());
                       
                    }

                   
                    
                }
                rdr.Close();
            }

        }

        protected void fc_nit_TextChanged(object sender, EventArgs e)
        {
            if (fc_nit.Text.Equals("1007039026"))
            {
                cargar3("select razon_social,numero_autor from libro_compra where nit='" + fc_nit.Text + "';", 2);
            }
        }

        protected void fc_numeroFact_TextChanged(object sender, EventArgs e)
        {
            if (fc_numFac.Text.Equals("717"))
            {
                cargar3("select LC.* from libro_compra LC, punto_venta PV where nit = '4411852019' and numero_autor  = '367401800000555' and fecha = '2018-06-04' and PV.idpunto_venta = LC.pv and  PV.punto_venta = 'central cocha saira' and numero_factura = '" + fc_numFac.Text + "'", 5);
            }
        }

        //libro de ventas
        protected void facturaVentas_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar3("insert into libro_venta('nit', 'razon_social', 'numero_factura', 'numero_autor', 'fecha', 'codigo', 'estado', 'total', 'importe', 'exportaciones', 'taza', 'descuentos', 'importe_base', 'devito_fiscal') values ('" + fv_nitCliente.Text + "', '" + fv_razonS.Text + "', '" + fv_numeroFact.Text + "', '" + fv_numAuto.Text + "', '" + fv_fechaFact.Value + "', '" + fv_codigoControl.Text + "', '" + fv_estado.Text + "', '" + fv_total.Text + "', '" + fv_importe.Text + "', '" + fv_exportaciones.Text + "', '" + fv_vtasTasa.Text + "', '" + fv_descuento.Text + "', '" + fv_importeBase.Text + "', '" + fv_debito.Text + "');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void fv_nit_TextChanged(object sender, EventArgs e)
        {
            if (fv_nitCliente.Text.Equals("251644025"))
            {
                cargar3("select razon_social,numero_autor from libro_venta where nit='" + fv_nitCliente.Text + "';", 1);
            }
        }

        protected void fv_numeroFact_TextChanged(object sender, EventArgs e)
        {
            
            if (fv_numeroFact.Text.Equals("331"))
            {
                cargar3("select LC.* from libro_venta LC, punto_venta PV where nit = '251644025' and numero_autor  = '118401800002368' and fecha = '2018-11-09' and PV.idpunto_venta = LC.pv and  PV.punto_venta = 'central cocha saira' and numero_factura = '" + fv_numeroFact.Text + "';", 3);
            }
        }
        //txt block

        protected void ac_debe_TextChanged(object sender, EventArgs e)
        {
            if (ac_debe.Text.Equals("0"))
                ac_haber.ReadOnly = false;
            else
            {
                ac_haber.Text = "0";
                ac_haber.ReadOnly = true;
            } 
        }

        protected void ac_haber_TextChanged(object sender, EventArgs e)
        {
            if (ac_haber.Text.Equals("0"))
                ac_debe.ReadOnly = false;
            else
            {
                ac_debe.Text = "0";
                ac_debe.ReadOnly = true;
            }
        }

        protected void btn_mostrar_Click(object sender, EventArgs e)
        {
            DateTime dt = Convert.ToDateTime(ac_fecha.Value);
            string f1 = dt.ToString("yyyy-MM-dd");

            if (ac_fecha.Value.Equals("11/11/2018"))
            {
                cargar3("select * from tipo_cambio where fecha = '" + f1 + "';", 6);
                cargar3("select * from tipo_cambio where fecha = '" + f1 + "';", 6);
              }
           }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                this.ac_comboProy.Enabled = true;
            }
            else
            {
                this.ac_comboProy.Enabled = false;
                this.ac_comboProy.Text = "-";
            }
        }

        protected void ejemplo_btnGuardar_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    if (!RepterDetails == 0)
            //        RepterDetails.Rows.Remove(RepterDetails.Rows(RepterDetails.RowCount - 1));
            //    int in1 = ComboBox6.Text.IndexOf("[") + 1;
            //    int in2 = ComboBox6.Text.IndexOf("]");
            //    DataGridView1.Rows.Add(ComboBox6.Text.Substring(in1, in2 - in1), ComboBox6.Text.Substring(0, in1 - 1), RichTextBox1.Text, double.Parse(cambiarpc(TextBox4.Text)), double.Parse(cambiarpc(TextBox5.Text)), "---");
            //    sumatoria();
            //    ac_comboCuentas.Text = "Seleccione";
            //    ac_debe.Text = "0";
            //    ac_haber.Text = "0";
            //}
            //catch (Exception ex)
            //{
            //    MsgBox("Seleccione un elemento valido", MsgBoxStyle.Exclamation);
            //}



            ejemplo = (DataTable)(Session["Tabla"]);
            ejemplo.Rows.Add(ac_codigo.Text, ac_comboCuentas.Text, ac_glosa.Text, ac_debe.Text, ac_haber.Text);

            RepterDetails.DataSource = ejemplo;
            RepterDetails.DataBind();

        }

        
       
    }
}