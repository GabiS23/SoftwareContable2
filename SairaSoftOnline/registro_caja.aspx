<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registro_caja.aspx.cs" Inherits="SairaSoftOnline.registro_caja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Caja</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Caja</strong>
                        </li>
                    </ol>
                </div>
            </div>
 <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                      <div class="col-lg-6">
                        <!--registro de ingresos-->
                       <div class="ibox ">
                             
                            <div class="ibox-title text-info">
                                <h5>Registro de Ingresos a caja</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">NIT</label > <asp:TextBox ID="i_nit" runat="server" placeholder="Esbribir" class="form-control" OnTextChanged="c_nit_TextChanged"></asp:TextBox></div>
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_2">
                                                     <label class="col-form-label">Fecha de registro de ingreso</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="i_fechaRegistro" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                        
                                                   </div>  
                                             </div>  
                                             <%--Fin--%> 
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Nombre del cliente</label > <asp:TextBox ID="i_nomCliente" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                   
                                                </div>
                                            </div>
                                             <%--empiezo  2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <div class="col-md-12"><label class="col-form-label">Detalle de Ingreso (Concepto de la factura o documento)</label ><asp:TextBox ID="i_detalle"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">Nº de factura o Comprovante.</label ><asp:TextBox ID="i_numFactura"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                                </div>
                                                  </div>
                                             <%--Fin--%> 
                                             <!--empiezo TEXTO -->
                                             <div class="col-sm-12" style="padding-top: 10px">
                                                         <div class="row">
                                                             <div class="title  col-md-3" style="padding-top: 10px" >
                                                                <p class="text-info">Tipo de pago:</p>
                                                             </div>
                                                           </div>
                                                  </div>  
                                             <%--fin--%>
                     <!--inicio tab-->
                      <div class="col-lg-12">
                    <div class="tabs-container">
                        <ul class="nav nav-tabs" role="tablist">
                            <li><a class="nav-link active" data-toggle="tab" href="#tab-1"> Efectivo</a></li>
                            <li><a class="nav-link" data-toggle="tab" href="#tab-2">Cheque</a></li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" id="tab-1" class="tab-pane active">
                                <div class="panel-body">
                                    <div class="col-sm-12 style="padding-top: 10px"">
                                        <div class="row">
                                   <div class="col-md-6"><label class="col-form-label">Total Bs</label > <asp:TextBox ID="i_importeTotalEfectivo" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                   <div class="col-md-2"><label class="col-form-label">Bancarizar:</label > <button ID="i_bancarizarEfectivo" class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>
                                       </div>
                                        </div>
                                    <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_ingresosEfectivo" runat="server" Text="Guardar pago en efectivo" class="btn btn-primary btn-sm"  type="submit" OnClick="ingresosEfectivo_btnGuardar_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <div role="tabpanel" id="tab-2" class="tab-pane">
                                <div class="panel-body">
                                     <%--empiezo--%>
                                             <div class="col-md-12" style="padding-top:10px">
                                                      <div class="row"> 
                                                        <!--Combobox-->
                                                        <div class="col-md-12">
                                                        <label class="col-form-label">Nombre del banco</label>
                                                        <asp:DropDownList ID="i_comboBanco" class="form-control m-b" runat="server" AutoPostBack="true" OnSelectedIndexChanged="i_comboBanco_SelectedIndexChanged">
                                                          
                                                        </asp:DropDownList>
                                                        </div>
                                                    <!--fin de combobox-->
                                                     <!--Combobox-->
                                                        <div class="col-md-12">
                                                        <label class="col-form-label">Nº Cuenta de banco</label>
                                                        <asp:DropDownList ID="i_comboNumCuenta" class="form-control m-b" runat="server" AutoPostBack="true">
                                                          
                                                        </asp:DropDownList>
                                                        </div>
                                                    <!--fin de combobox-->
                                                    <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_3">
                                                     <label class="col-form-label">Fecha de emisión</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="i_fechaEmision" type="text" class="form-control" value="03/04/2019">
                                                       </div>
                                                         </div>
                                                     <!--fin CALENDARIO-->
                                                          <div class="col-md-6"><label class="col-form-label">Nº de Cheque</label > <asp:TextBox ID="i_numCheque" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>
                                            
                                                     </div>
                                     <!--inicio 6-->            
                                             <div class="col-md-12" style="padding-top: 10px">
                                                    <div class="row">
                                                     <div class="col-md-6"><label class="col-form-label">Importe total en Bs</label > <asp:TextBox ID="i_importeTotalCheque" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>
                                                     <div class="col-md-2"><label class="col-form-label">Bancarizar:</label > <button  ID="i_bancarizarCheque" class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>                                                     
                                                    </div>
                                              </div>
                                         </div>
                                       <div class="col-sm-12" style="padding-top: 10px">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_ingresosCheque" runat="server" Text="Guardar registro de pago en cheque" class="btn btn-primary btn-sm"  type="submit" OnClick="ingresosCheque_btnGuardar_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>


                    </div>
                </div>
                               
                                          
                                   </div>
                           </div>
                        </div>  
                      <div class="col-lg-6">
                       <!--registro de gastos--> 
                       <div class="ibox ">
                             
                            <div class="ibox-title text-info">
                                <h5>Registro de gastos de caja</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">NIT</label > <asp:TextBox ID="g_nit" runat="server" placeholder="Esbribir" class="form-control" OnTextChanged="c_nit_TextChanged"></asp:TextBox></div>
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_4">
                                                     <label class="col-form-label">Fecha de registro de gasto</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="g_fechaRegistro" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                        
                                                   </div>  
                                             </div>  
                                             <%--Fin--%>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Nombre del proveedor</label > <asp:TextBox ID="g_nomProveedor" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                   
                                                </div>
                                            </div>
                                             <%--empiezo  2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <div class="col-md-12"><label class="col-form-label">Detalle de Gasto (Concepto de la factura o documento)</label><asp:TextBox ID="g_detalle"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">Nº de factura o Comprovante.</label ><asp:TextBox ID="g_numFactura"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                                     <div class="col-md-6"><label class="col-form-label">Total Deuda a pagar al Proveedor</label ><asp:TextBox ID="g_totalDeudaProvedor"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                
                                                </div>
                                                  </div>
                                             <%--Fin--%> 
                                             <!--empiezo Texto-->
                                             <div class="col-sm-12" style="padding-top: 10px">
                                                         <div class="row">
                                                             <div class="title  col-md-3" style="padding-top: 10px" >
                                                                <p class="text-info">Tipo de pago:</p>
                                                             </div>
                                                           </div>
                                                  </div>  
                                             <%--fin--%>
                                <!--inicio tab-->
                    <div class="col-lg-12">
                    <div class="tabs-container">
                        <ul class="nav nav-tabs" role="tablist">
                            <li><a class="nav-link active" data-toggle="tab" href="#tab-3"> Efectivo</a></li>
                            <li><a class="nav-link" data-toggle="tab" href="#tab-4">Cheque</a></li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" id="tab-3" class="tab-pane active">
                                <div class="panel-body">
                                    <div class="col-sm-12 style="padding-top: 10px"">
                                        <div class="row">
                                   <div class="col-md-6"><label class="col-form-label">Total Bs</label > <asp:TextBox ID="g_importeTotalEfectivo" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                   <div class="col-md-2"><label class="col-form-label">Bancarizar:</label > <button ID="g_bancarizarEfectivo"class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>
                                       </div>
                                        </div>
                                    <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_gastoEfectivo" runat="server" Text="Guardar pago en efectivo" class="btn btn-primary btn-sm"  type="submit" OnClick="gastosEfectivo_btnGuardar_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <div role="tabpanel" id="tab-4" class="tab-pane">
                                <div class="panel-body">
                                     <%--empiezo--%>
                                             <div class="col-md-12" style="padding-top:10px">
                                                      <div class="row"> 
                                                        <!--Combobox-->
                                                        <div class="col-md-12">
                                                        <label class="col-form-label">Nombre, De que banco se paga</label>
                                                        <asp:DropDownList ID="g_comboBanco" class="form-control m-b" runat="server">
                                                          
                                                        </asp:DropDownList>
                                                        </div>
                                                    <!--fin de combobox-->
                                                     <!--Combobox-->
                                                        <div class="col-md-12">
                                                        <label class="col-form-label">Nº Cuenta de banco</label>
                                                        <asp:DropDownList ID="g_comboNumCuenta" class="form-control m-b" runat="server">
                                                          
                                                        </asp:DropDownList>
                                                        </div>
                                                    <!--fin de combobox-->
                                                    <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_5">
                                                     <label class="col-form-label">Fecha de emisión</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="g_fechaEmision" type="text" class="form-control" value="03/04/2019">
                                                       </div>
                                                         </div>
                                                     <!--fin CALENDARIO-->
                                                          <div class="col-md-6"><label class="col-form-label">Nº de Cheque</label > <asp:TextBox ID="g_numCheque" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>
                                            
                                                     </div>
                                                   
                                     <!--inicio 6-->            
                                             <div class="col-md-12" style="padding-top: 10px">
                                                    <div class="row">
                                                     <div class="col-md-6"><label class="col-form-label">Importe total en Bs</label > <asp:TextBox ID="g_importeCheque" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>
                                                     <div class="col-md-2"><label class="col-form-label">Bancarizar:</label > <button ID="g_bancarizarCheque" class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>                                                     
                                                    </div>
                                              </div>
                                         </div>
                                       <div class="col-sm-12" style="padding-top: 10px">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_gastosCheque" runat="server" Text="Guardar registro de pago en cheque" class="btn btn-primary btn-sm"  type="submit" OnClick="gastosCheque_btnGuardar_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>


                    </div>
                </div>
                               
                                          
                                   </div>
                           </div>
                         </div> 
                    <div class="col-lg-6">
                       <!--registro de adelantos--> 
                       <div class="ibox ">
                             
                            <div class="ibox-title text-info">
                                <h5>Registro de adelantos</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-6"><label class="col-form-label">NIT</label > <asp:TextBox ID="a_nit" runat="server" placeholder="Esbribir" class="form-control" OnTextChanged="c_nit_TextChanged"></asp:TextBox></div>
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_6">
                                                     <label class="col-form-label">Fecha de registro de adelanto</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="a_fechaRegistro" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                        
                                                   </div>  
                                             </div>  
                                             <%--Fin--%>
                                            <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Nombre completo del solicitante</label > <asp:TextBox ID="a_nomSolicitante" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                   
                                                </div>
                                            </div>
                                             <%--empiezo  2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <div class="col-md-6"><label class="col-form-label">Departamento</label ><asp:TextBox ID="a_depto"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                     <div class="col-md-6"><label class="col-form-label">Cargo</label ><asp:TextBox ID="a_cargo"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                                   </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <div class="col-md-6"><label class="col-form-label">Punto de venta</label ><asp:TextBox ID="a_puntoVenta"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                      
                                                     <div class="col-md-6"><label class="col-form-label">Sucursal</label ><asp:TextBox ID="a_sucursal"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                
                                                </div>
                                                  </div>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                     <div class="col-md-12"><label class="col-form-label">Concepto o detalle de la solicitud</label ><asp:TextBox ID="a_detalle"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                      
                                                </div>
                                                  </div>
                                             <%--Fin--%> 
                                             <!--empiezo 4 lista de checkbox-->
                                             <div class="col-sm-12" style="padding-top: 10px">
                                                         <div class="row">
                                                             <div class="title  col-md-5" style="padding-top: 10px" >
                                                                <p class="text-info">Tipo de solicitud:</p>
                                                             </div>
                                                           </div>
                                                  </div>  
                                             <%--fin--%>
                                            <div class="col-sm-12" style="padding-top: 10px" id="a_tipoAdelanto">
                                        <div class="row">
                                   <div class="col-md-2"><label class="col-form-label">Anticipo</label > <button ID="a_btn_anticipo" class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>
                                   <div class="col-md-2"><label class="col-form-label">Préstamo</label > <button ID="a_btn_prestamo" class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>
                                   <div class="col-md-2"><label class="col-form-label">Otros</label >    <button ID="a_btn_Otros" class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button></div>
                                   <div class="col-md-3"><label class="col-form-label">Importe</label ><asp:TextBox ID="a_importe"  runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                                                                
                                       
                                        </div>
                                        </div>
                                             <!--inicio 6-->            
                                               <div class="col-sm-12" style="padding-top: 10px">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_adelantos" runat="server" Text="Guardar registro de pago" class="btn btn-primary btn-sm"  type="submit" OnClick="adelanto_btnGuardar_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                <!--inicio tab-->
                               
                                   </div>
                           </div>
                   </div>
       </div>  
   </div>              
    </form>
</asp:Content>
