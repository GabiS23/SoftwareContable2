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
    public partial class reporte_almacenes : System.Web.UI.Page
    {
        string connStr = "server=sql184.main-hosting.eu;port=3306;database=u218391235_ss;user= u218391235_test; password=sairasoft;";
        protected void Page_Load(object sender, EventArgs e)
        {
            kardex_inventario();
            Grupo_almacen();            
        }

        private void kardex_inventario()
        {     
            try
            {
                string sql = "CALL reporte_inventario_kardex('2013-1-1', '2019-3-21', 'SairaSoft', '-', '-', 'consolidado', 'Carne Simple', 'Almacen de Suministros de Cocina');";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Fecha", typeof(string));
                tab.Columns.Add("Detalle", typeof(string));
                tab.Columns.Add("Tipo_factura", typeof(string));
                tab.Columns.Add("Factura", typeof(string));
                tab.Columns.Add("Ingreso", typeof(string));
                tab.Columns.Add("Salida", typeof(string));
                tab.Columns.Add("Total Debe", typeof(string));


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[0], rdr[1], rdr[2], rdr[3], rdr[4], rdr[5], rdr[9]);

                }
                rdr.Close();
                GridView2.DataSource = tab;
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }

        private void Grupo_almacen()
        {
            try
            {
                string sql = "select A.nombre_almacen,II.nombre, IA.totalcantidad from almacen A, item_servicio IT, item_individual II, ingreso_almacen IA , empresa E, sucursal S, punto_venta PV " +
		                       "where II.itse = IT.iditem_servicio and IA.idalmacen = A.idalmacen and IA.iditem = IT.iditem_servicio" + 
		                        "and IA.iditemindi = II.iditinv and IA.totalcantidad >0 and IA.PV = PV.idpunto_venta and PV.idSucursal = S.idsucursal and S.idEmpresa = E.idempresa" +
		                        "and E.razon_social = 'SairaSoft' limit 10;";

                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                MySqlDataReader rdr = cmd.ExecuteReader();

                DataTable tab = new DataTable();
                tab.Columns.Add("Nombre de Almacen", typeof(string));
                tab.Columns.Add("Nombre", typeof(string));
                tab.Columns.Add("Total Cantidad", typeof(string));
                


                while (rdr.Read())
                {
                    tab.Rows.Add(rdr[0], rdr[1], rdr[2]);

                }
                rdr.Close();
                GridView1.DataSource = tab;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + (ex.Message) + "');", true);
            }
        }
    }
}