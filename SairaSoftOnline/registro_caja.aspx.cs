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
    public partial class registro_caja : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                i_comboBanco.Items.Add("Seleccione");
                cargar_comboBanco();
            }
        }

        //private void cargar_listaGastos()
        //{
        //    try
        //    {
        //        string sql = "select *from salida_caja limit 5;";

        //        MySqlConnection conn = new MySqlConnection(connStr);
        //        conn.Open();
        //        MySqlCommand cmd = new MySqlCommand(sql, conn);
        //        MySqlDataReader rdr = cmd.ExecuteReader();

        //        DataTable tab = new DataTable();
        //        tab.Columns.Add("Número de NIT", typeof(string));
        //        tab.Columns.Add("Número de factura", typeof(string));
        //        tab.Columns.Add("Fecha", typeof(string));
        //        tab.Columns.Add("Detalle", typeof(string));
        //        tab.Columns.Add("Tipo de pago", typeof(string));
        //        tab.Columns.Add("Total", typeof(string));
        //        tab.Columns.Add("Importe cheque", typeof(string));
        //        tab.Columns.Add("Nombre banco", typeof(string));
        //        tab.Columns.Add("Número de cheque", typeof(string));
        //        tab.Columns.Add("Fecha de cheque", typeof(string));
        //        while (rdr.Read())
        //        {
        //            tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8], rdr[9], rdr[10]);

        //        }
        //        rdr.Close();
        //        cgastos_gridView.DataSource = tab;
        //        cgastos_gridView.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
        //    }
        //}

        //private void cargar_listaIngresos()
        //{
        //    try
        //    {
        //        string sql = "select * from ingreso_caja limit 5;";

        //        MySqlConnection conn = new MySqlConnection(connStr);
        //        conn.Open();
        //        MySqlCommand cmd = new MySqlCommand(sql, conn);
        //        MySqlDataReader rdr = cmd.ExecuteReader();

        //        DataTable tab = new DataTable();
        //        tab.Columns.Add("Número comprobante", typeof(string));
        //        tab.Columns.Add("Número de factura", typeof(string));
        //        tab.Columns.Add("Fecha", typeof(string));
        //        tab.Columns.Add("Detalle", typeof(string));
        //        tab.Columns.Add("Tipo de pago", typeof(string));
        //        tab.Columns.Add("Total", typeof(string));
        //        tab.Columns.Add("Número cuenta cheque", typeof(string));
        //        tab.Columns.Add("Nombre banco", typeof(string));
        //        tab.Columns.Add("Número de cheque", typeof(string));
        //        tab.Columns.Add("Fecha de cheque", typeof(string));
        //        while (rdr.Read())
        //        {
        //            tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8], rdr[9], rdr[10]);

        //        }
        //        rdr.Close();
        //        c_GVingresos.DataSource = tab;
        //        c_GVingresos.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
        //    }
        //}

        //incompleto
       
        protected void c_nit_TextChanged(object sender, EventArgs e)
        {
            //if (c_nit.Text.Equals("6543447"))
            //{
            //    cargar(c_nomClient,"select * from recurso_humano where ci='c_nit'",1);
            //}
        }
        protected void cajaGastos_nit_TextChanged(object sender, EventArgs e)
        {
            //if (c_nit.Text.Equals("6543447"))
            //{
            //    cargar(c_nomClient,"select * from recurso_humano where ci='c_nit'",1);
            //}
        }
      
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //if (CheckBox1.Checked)
            //{
            //    CheckBox2.Checked = false;
            //    //...... enable
            //}
            //else 
            //{
            //    CheckBox1.Checked = false;
            //    //...
            //}
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            //if (CheckBox2.Checked)
            //{
            //    CheckBox1.Checked = false;
            //    c_nomBanco.Enabled = false;
            //    TextBox2.Enabled = false;
            //}
            //else
            //{
            //    CheckBox2.Checked = false;
            //    //...
            //}
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            //if(CheckBox3.Checked){
            //    CheckBox4.Checked = false;
            //}
            //else
            //{
            //    CheckBox3.Checked = false;
            //}
            

        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            //if (CheckBox4.Checked)
            //{
            //    CheckBox3.Checked = false;
            //    //...... enable
            //}
            //else
            //{
            //    CheckBox4.Checked = false;
            //    //...
            //}
        }

        private void cargartxt(TextBox tex, string sql, int ind) //ind   0=guardar algo (combo = null).............1=recibir algo
        {
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            if (ind != 0)
            {
                tex.Text = (rdr[2].ToString());

            }
            rdr.Close();
        }
        private void cargar(DropDownList combo,string sql, int ind) //ind   0=guardar algo (combo = null).............1=recibir algo
        {
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            if (ind !=0)
            {
                while (rdr.Read())
                {
                    combo.Items.Add(rdr[0].ToString());
                }
            }
            rdr.Close();
        }

        protected void ingresosEfectivo_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar(null, "insert into ingreso_caja ('numero_comprobante','numero_factura','fecha', LEFT('detalle', 256), 'tipo_pago','total',  'numero_cuenta_cheque',  'importe_cheque',  'nombre_banco',  'numero_cheque',  'fecha_cheque',  'idcliente',  'central cocha saira',  'bancarizar') values ('" + i_nit.Text + "','" + i_numFactura.Text + "','" + i_fechaRegistro.Value + "','" + i_detalle.Text + "','efectivo','" + i_importeTotalEfectivo.Text + "','---','---','---','---','---','" + i_nomCliente.Text + "','central cocha saira','no');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }   
        }

        protected void ingresosCheque_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar(null, "insert into ingreso_caja ('numero_comprobante','numero_factura','fecha', LEFT('detalle', 256), 'tipo_pago','total',  'numero_cuenta_cheque',  'importe_cheque',  'nombre_banco',  'numero_cheque',  'fecha_cheque',  'idcliente',  'central cocha saira',  'bancarizar') values ('" + i_nit.Text + "','" + i_numFactura.Text + "','" + i_fechaRegistro.Value + "','" + i_detalle.Text + "','cheque','---','" + i_comboNumCuenta.Text + "','" + i_importeTotalCheque + "','" + i_comboBanco.Text + "','" + i_numCheque.Text + "','" + i_fechaEmision.Value + "','" + i_nomCliente.Text + "','central cocha saira','no');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }  
        }

        protected void gastosEfectivo_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar(null, "insert into salida_caja ('numero_comprobante','numero_factura','fecha', LEFT('detalle', 256), 'tipo_pago','total',  'numero_cuenta_cheque',  'importe_cheque',  'nombre_banco',  'numero_cheque',  'fecha_cheque',  'idproveedor',  'central cocha saira', 'totaldeudaporpagar', 'bancarizar') values ('" + g_nit.Text + "','" + g_numFactura.Text + "','" + g_fechaRegistro.Value + "','" + g_detalle.Text + "','efectivo','" + g_importeTotalEfectivo.Text + "','---','---','---','---','---','" + g_nomProveedor.Text + "','central cocha saira','" + g_totalDeudaProvedor.Text + "','no');", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            } 
        }

        protected void gastosCheque_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar(null, "insert into salida_caja ('numero_comprobante','numero_factura','fecha', LEFT('detalle', 256), 'tipo_pago','total',  'numero_cuenta_cheque',  'importe_cheque',  'nombre_banco',  'numero_cheque',  'fecha_cheque',  'idcliente',  'central cocha saira', 'totaldeudaporpagar', 'bancarizar') values ('" + g_nit.Text + "','" + g_numFactura.Text + "','" + g_fechaRegistro.Value + "','" + g_detalle.Text + "','cheque','---','" + g_comboNumCuenta.Text + "','" + g_importeCheque + "','" + g_comboBanco.Text + "','" + g_numCheque.Text + "','" + g_fechaEmision.Value + "','" + g_nomProveedor.Text + "','central cocha saira','" + g_totalDeudaProvedor.Text + "','no',);", 20);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            } 
        }

        protected void adelanto_btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cargar(null, "insert into anticipo ( LEFT('numero_comprobante', 256),  LEFT('concepto', 256),  'tipo_adelanto',  'fecha',  'importe',  'idrrhh',  'pv') values ('" + a_nit.Text + "','" + a_detalle.Text + "','Anticipo','" + a_fechaRegistro.Value + "','" + a_importe.Text + "','1','Central cocha saira');", 20); 
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            } 
        }
        private void cargar_comboBanco()
        {
            try
            {
                //af_combotipoMoneda.Enabled = false;
                
                string sql = "select DISTINCT nombre_banco from banco;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    i_comboBanco.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_comboNumCuenta()
        {
            try
            {
                //af_combotipoMoneda.Enabled = false;
                i_comboNumCuenta.Items.Add("Seleccione");
                string sql = "select DISTINCT numero_cuenta from banco where nombre_banco= '" + i_comboBanco.Text + "';";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();



                while (rdr.Read())
                {
                    i_comboNumCuenta.Items.Add(rdr[0].ToString());
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        protected void i_comboBanco_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargar_comboNumCuenta();
        }
    }
}