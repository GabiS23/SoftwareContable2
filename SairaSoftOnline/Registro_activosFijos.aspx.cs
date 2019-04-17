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
    public partial class Registro_activosFijos : System.Web.UI.Page
    {
        private string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";

        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_comboTipoMoneda();
            cargar_comboGrupoActivosFijos();
            cargar_comboGrupoDepereciacionAcum();
            cargar_comboNombreResponsable();
            cargar_listaActivosFijos();
        }
        protected void af_btnGuardar_Click(object sender, EventArgs e)
        {
            int in1  = af_comboListaActFijo.Text.IndexOf("[") + 1;
            int in2 = af_comboListaActFijo.Text.IndexOf("]");
            int in3  = af_comboGrupoDepreAcum.Text.IndexOf("[") + 1;
            int in4 = af_comboGrupoDepreAcum.Text.IndexOf("]");
            int in5  = af_comboBox_responsable.Text.IndexOf("[") + 1;
            int in6 = af_comboBox_responsable.Text.IndexOf("]");
            try
            {
            cargar(null, "call insertaractivofijo('" + af_nom.Text + "','" + af_comboListaActFijo.Text.Substring(in1, in2 - in1) + "', '" + af_comboGrupoDepreAcum.Text.Substring(in3, in4 - in3) + "', '" + af_marca.Text + "', '" + af_codigo.Text + "', '" + af_combotipoMoneda.Text + "' , '" + af_fechaIncorporacion.Value + "', '" + af_valorInicial.Text + "' ,'" + af_porcentajeDepresiable.Text + "', '" + af_DepAcum.Text + "', '" + af_descrip.Text + "', '" + af_comboBox_responsable.Text.Substring(in5, in6 - in5) + "', 'Central Cocha Saira ')", 0);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }   
        }

        private void cargar_listaActivosFijos()
        {
            //try
            //{
            //    cargar(af_gridView, "select (concat(substring(PC1.nombre,24),'[',PC1.codigo,']')),  concat(RH.nombres,' ',RH.apellidos,'[',RH.ci,']'), D.nombre_departamento, C.nombrecargo,(concat(substring(PC2.nombre,24),'[',PC2.codigo,']')), M.sigla   from activo_fijo AF, plande_cuenta PC1, plande_cuenta PC2, moneda M, punto_venta PV, recurso_humano RH, departamento D, cargos C  where AF.pcpert = PC1.idplande_cuenta And AF.pcdepre = PC2.idplande_cuenta And AF.moneda = M.idmoneda and AF.idrh = RH.idrecurso_humano and AF.pv = PV.idpunto_venta and RH.idcar =C.idcargos and RH.iddep = D.iddepartamento and PV.punto_venta = 'Central Cocha Saira ';", 2);
            //}
            //catch (Exception ex)
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            //}     
            try
            {
                string sql = "select * from activo_fijo;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre activo fijo", typeof(string));
                tab.Columns.Add("pcpert", typeof(string));
                tab.Columns.Add("nose1", typeof(string));
                tab.Columns.Add("Marca", typeof(string));
                tab.Columns.Add("nose2", typeof(string));
                tab.Columns.Add("Valor_inicial", typeof(string));
                tab.Columns.Add("Fecha", typeof(string));
                tab.Columns.Add("Porcentaje", typeof(string));
                tab.Columns.Add("Depreciación", typeof(string));
                tab.Columns.Add("Descripción", typeof(string));
                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[6], rdr[7], rdr[8], rdr[9], rdr[10]);

                }
                rdr.Close();
                af_gridView.DataSource = tab;
                af_gridView.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void cargar_comboNombreResponsable()
        {
            try
            {
                af_comboBox_responsable.Items.Add("Seleccione");
                cargar(af_comboBox_responsable, "select  concat(RH.nombres,' ',RH.apellidos,'[',RH.ci,']') from recurso_humano RH, punto_venta PV where RH.idpv = PV.idpunto_venta and PV.punto_venta = 'Central Cocha Saira'", 1);

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }        
        }

        private void cargar_comboGrupoDepereciacionAcum()
        {
            try
            {
                af_comboGrupoDepreAcum.Items.Add("Seleccione");
                cargar(af_comboGrupoDepreAcum, "select  concat(substring(nombre,24),'[',codigo,']') from plande_cuenta where codigo like '1210102%' and length(codigo) =11", 1);

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }   
        }

        private void cargar_comboGrupoActivosFijos()
        {
            try
            {
                af_comboListaActFijo.Items.Add("Seleccione");
                cargar(af_comboListaActFijo, "select  concat(substring(nombre,24),'[',codigo,']') from plande_cuenta where codigo like '1210101%' and length(codigo) =11", 1);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }   
        }

        private void cargar_comboTipoMoneda()
        {
            try
                {
                    //af_combotipoMoneda.Enabled = false;
                    af_combotipoMoneda.Items.Add("Seleccione");
                    string sql = "select * from moneda;";

                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();

                   

                    while (rdr.Read())
                    {
                        af_combotipoMoneda.Items.Add(rdr[1].ToString());
                    }
                    rdr.Close();
                  
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
                }
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

        private void ejemplo()
        {
            int in1  = af_comboListaActFijo.Text.IndexOf("[") + 1;
            int in2 = af_comboListaActFijo.Text.IndexOf("]");
            int in3  = af_comboGrupoDepreAcum.Text.IndexOf("[") + 1;
            int in4 = af_comboGrupoDepreAcum.Text.IndexOf("]");
            int in5  = af_comboBox_responsable.Text.IndexOf("[") + 1;
            int in6 = af_comboBox_responsable.Text.IndexOf("]");

            cargar(null, "call insertaractivofijo('" + af_nom.Text + "','" + af_comboListaActFijo.Text.Substring(in1, in2 - in1) + "', '" + af_comboGrupoDepreAcum.Text.Substring(in3, in4 - in3) + "', '" + af_marca.Text + "', '" + af_codigo.Text + "', '" + af_combotipoMoneda.Text + "' , '" + af_fechaIncorporacion.Value + "', '" + af_valorInicial.Text + "' ,'" + af_porcentajeDepresiable.Text + "', '" + af_DepAcum.Text + "', '" + af_descrip.Text + "', '" + af_comboBox_responsable.Text.Substring(in5, in6 - in5) + "', 'Central Cocha Saira ')", 0);
        }

    }
}