<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro_Facturas.aspx.cs" Inherits="SairaSoftOnline.Registro_Facturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Facturas</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Facturas</strong>
                        </li>
                    </ol>
                </div>
            </div>
 <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                      <div class="col-lg-6">
                        <!--registro de facturas de ventas-->
                       <div class="ibox ">
                            <div class="ibox-title text-info">
                                <h5>Registro, facturas de ventas</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                     <div class="col-md-4"><label class="col-form-label">NIT Cliente</label ><asp:TextBox ID="fv_nit"  runat="server" placeholder="Escribir" class="form-control" OnTextChanged="fv_nit_TextChanged" AutoPostBack="true"></asp:TextBox></div>
                                                     <div class="col-md-8"><label class="col-form-label">Nombre de razon social</label ><asp:TextBox ID="fv_razonS"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                            
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Número de autorización</label > <asp:TextBox ID="fv_numAuto" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                    
                                                </div>
                                            </div>
                                             <%--empiezo  2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                 <div class="hr-line-dashed"></div>
                                                <div class="row">
                                                      <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_2">
                                                     <label class="col-form-label">Fecha de la factura</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="fv_fechaFact" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6"><label class="col-form-label">Nº de factura</label ><asp:TextBox ID="fv_numeroFact"  runat="server" placeholder="Escribir" class="form-control"  AutoPostBack="true" OnTextChanged="fv_numeroFact_TextChanged" ></asp:TextBox></div>
                                                </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">Código de control</label ><asp:TextBox ID="fv_codigoControl"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                                    <!--ejemplo Combobox-->
                                                <div class="col-md-6">
                                                    <label class="col-form-label">Estado</label>
                                                    <asp:DropDownList ID="fv_estado" class="form-control m-b" runat="server">
                                                    <asp:ListItem Selected="True" Value="1">Seleccione </asp:ListItem>
                                                    <asp:ListItem Value="2"> [V] Válida</asp:ListItem>
                                                    <asp:ListItem Value="2"> [A] Anulada</asp:ListItem>
                                                    <asp:ListItem Value="3"> [E] Extraviada</asp:ListItem>
                                                    <asp:ListItem Value="4"> [N] No utilizada</asp:ListItem>
                                                    <asp:ListItem Value="5"> [C] Enviada por contingencia</asp:ListItem>
                                                    <asp:ListItem Value="6"> [L] Libre consignación</asp:ListItem>                                                    
                                                    </asp:DropDownList>
                                                    </div>
                                                    <!--fin de combobox-->

                                                </div>
                                                  </div>
                                            
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="hr-line-dashed"></div>
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Total Bs</label > <asp:TextBox ID="fv_total" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Importe ICE/IEMD/Tasas</label > <asp:TextBox ID="fv_importe" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                     </div>
                                            </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Exportaciones</label > <asp:TextBox ID="fv_exportaciones" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Vtas Tasa Cero</label > <asp:TextBox ID="fv_vtasTasa" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                                                                        
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Descuentos</label > <asp:TextBox ID="fv_descuento" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                                                                        
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">Importe Base Bs.</label > <asp:TextBox ID="fv_importeBase" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                        
                                                    <div class="col-md-6"><label class="col-form-label">Debito Fiscal Bs.</label > <asp:TextBox ID="fv_debito" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                                                                        
                                                </div>
                                            </div>
                                         

                                           <div class="col-sm-12" style="padding-top:10px">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="bnt_facturasVenta" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="facturaVentas_btnGuardar_Click"/>
                                                    </div>
                                                 </div>
                                            </div>
                                        </div>

                     
                               
                                          
                                   </div>
                           </div>
                       </div>
                      <div class="col-lg-6">
                        <!--registro de facturas de compras-->
                       <div class="ibox ">
                             
                            <div class="ibox-title text-info">
                                <h5>Registro, facturas de compras</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                     <div class="col-md-4"><label class="col-form-label">NIT Proveedor</label ><asp:TextBox ID="fc_nit"  runat="server" placeholder="Escribir" class="form-control" OnTextChanged="fc_nit_TextChanged" AutoPostBack="true"></asp:TextBox></div>
                                                     <div class="col-md-8"><label class="col-form-label">Nombre de razon social</label ><asp:TextBox ID="fc_razonS"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                             

                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Número de autorización</label > <asp:TextBox ID="fc_numAut" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                    
                                                </div>
                                            </div>
                                             <%--empiezo  2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                      <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_3">
                                                     <label class="col-form-label">Fecha de la factura</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="fc_fecha" type="text" class="form-control" value="03/04/2019" autocomplete="on">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6"><label class="col-form-label">Nº de factura</label ><asp:TextBox ID="fc_numFac"  runat="server" placeholder="Escribir" class="form-control" AutoPostBack="true" OnTextChanged="fc_numeroFact_TextChanged"></asp:TextBox></div>
                                                </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Código de control</label ><asp:TextBox ID="fc_codigoCntrl"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                                </div>
                                                  </div>
                                             <%--Fin--%> 
                              
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Total Bs</label > <asp:TextBox ID="fc_total" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Importe NO sujeto a crédito fiscal (ICE)</label > <asp:TextBox ID="fc_importeICE" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                     </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Descuentos</label > <asp:TextBox ID="fc_descuento" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                                                                        
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">Importe Base Bs.</label > <asp:TextBox ID="fc_importeB" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                        
                                                    <div class="col-md-6"><label class="col-form-label">Crédito Fiscal Bs.</label > <asp:TextBox ID="fc_creditoFisc" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                                                                        
                                                </div>
                                            </div>
                                         
                                           <div class="col-sm-12" style="padding-top:10px">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_facturasCompra" runat="server" Text="Aceptar" class="btn btn-primary btn-sm"  type="submit" OnClick="facturaCompras_btnGuardar_Click"/>
                                                    </div>
                                                 </div>
                                            </div>
                                        </div> 
                                   </div>
                           </div>
                        </div>    
                       <div class="col-lg-6">
                        <!--registro de facturas de importacionf-->
                       <div class="ibox ">
                             
                            <div class="ibox-title text-info">
                                <h5>Registro, Importaciones</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                     <div class="col-md-4"><label class="col-form-label">NIT</label ><asp:TextBox ID="i_nit"  runat="server" placeholder="Escribir" class="form-control"  AutoPostBack="true" OnTextChanged="i_nit_TextChanged"></asp:TextBox></div>
                                                     <div class="col-md-8"><label class="col-form-label">Nombre de razon social</label ><asp:TextBox ID="i_razonS"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                             

                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_4">
                                                     <label class="col-form-label">Fecha</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="i_fecha" type="text" class="form-control" value="03/04/2019" autocomplete="on">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                    <div class="col-md-6"><label class="col-form-label">Número de trámite</label > <asp:TextBox ID="i_numTramite" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                </div>
                                            </div>
                                             <%--empiezo  2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Código de aduana</label > <asp:TextBox ID="i_codigoAduana" runat="server" placeholder="Esbribir" class="form-control" AutoPostBack="true" OnTextChanged="i_numTramite_TextChanged"></asp:TextBox></div>                                                                                                                                                             
                                                </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <div class="col-md-6"><label class="col-form-label">Tipo de trámite</label ><asp:TextBox ID="i_tipoTramite"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                    <div class="col-md-6"><label class="col-form-label">Total DUI Bs</label ><asp:TextBox ID="i_totalDUI"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                                </div>
                                                  </div>
                                             <%--Fin--%> 
                              
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Total IVA Bs</label > <asp:TextBox ID="i_totalIVA" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Descuentos</label > <asp:TextBox ID="i_descuento" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                                                                        
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">Impuesto Base</label > <asp:TextBox ID="i_impuestoBase" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                        
                                                </div>
                                            </div>
                                         
                                           <div class="col-sm-12" style="padding-top:10px">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button1" runat="server" Text="Aceptar" class="btn btn-primary btn-sm"  type="submit" OnClick="Importacion_btnGuardar_Click"/>
                                                    </div>
                                                 </div>
                                            </div>
                                        </div>


<div class="col-md-6"><label class="col-form-label">valor 1</label > <asp:TextBox ID="txt_campo_1" runat="server"  class="monto form-control" onkeyup="sumar1();"></asp:TextBox></div>                                                                                                        


<br/>


<div class="col-md-6"><label class="col-form-label">valor 2</label > <asp:TextBox ID="txt_campo_2" runat="server"  class="monto form-control" onkeyup="sumar1();"></asp:TextBox></div>                                                                                                        

<br/>


<div class="col-md-6"><label class="col-form-label">valor 3</label > <asp:TextBox ID="txt_campo_3" runat="server"  class="monto form-control" onkeyup="sumar1();"></asp:TextBox></div>                                                                                                        


<br/>
<span>El resultado es: </span> <span id="spTotal"></span>                                                                                                         

                                                  

    <script>

        function sumar1() {

            var total = 0;
            var a;
            var b;
            var c;


            $(".monto").each(function () {
                //pc = total.toString().replace(/\./g, ',');

                if (isNaN(parseFloat($(this).val()))) {

                    total -= 0;

                } else {

                    total -= parseFloat($(this).val());
                    

                }


               


            });

            //alert(total);
             document.getElementById('spTotal').innerHTML = total;

        }
    </script>
    

                                   </div>
                           </div>
                        </div> 
                   
               </div>
</div>
                    
    </form>
</asp:Content>
