<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registro_asientoContable.aspx.cs" Inherits="SairaSoftOnline.registro_asientoContable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Asientos de contabilidad</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Asientos de contabilidad</strong>
                        </li>
                    </ol>
                </div>
            </div>
 <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                      <div class="col-lg-12">
                        <!--registro de facturas de ventas-->
                       <div class="ibox ">
                             
                            <div class="ibox-title text-info">
                                <h5>Registro, asientos de contabilidad</h5>
                            </div>
                            <div class="ibox-content">
                                    
                                             <%--empiezo 1--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                    <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Tipo de Comprobante</label>
                                                      <asp:DropDownList ID="ac_tipoComp" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                     <div class="col-md-3"><label class="col-form-label"></label ></div>                                                                                                
                                                    <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Tipo de Comprobante</label>
                                                      <asp:DropDownList ID="ac_tipoComp2" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    
                                                     <div class="col-md-3"><label class="col-form-label"></label ></div>                                                                                                
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                               <%--empiezo 2--%>
                                             <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <!--calendario-->
                                                     <div class="col-md-3" id="data_4">
                                                     <label class="col-form-label">Fecha</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="ac_fecha" type="text" class="form-control" value="03/04/2019" AutoPostBack="true" OnTextChanged="calendario1_ValueChanged">
                                                        </div>
                                                     </div>
                                                     <!-- fin calendario-->
                                                    <!--button-->
                                                    <div class="col-md-1" style="padding-top:36px">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                       <asp:Button ID="btn_mostrar" runat="server" Text="Mostrar" class="btn btn-primary btn-sm"   height="30px" type="submit" OnClick="btn_mostrar_Click" />
                                                       </div>
                                                     </div>
                                                    <!--fin button--> 
                                                    
                                                     <div class="col-md-2"><label class="col-form-label">UFV's</label ><asp:TextBox ID="ac_ufvs"  runat="server" placeholder="" class="form-control"></asp:TextBox></div>                                                
                                                      <div class="col-sm-3">
                                                        <div class="row">
                                                         <div class=" col-md-12"><label class="col-form-label"></label>   </div>    
                                                        <div class="col-md-12 i-checks" style="padding-top:20px"><label>Vincular al proyecto</label><asp:CheckBox ID="CheckBox1"  runat="server" name="optionsRadios1" OnCheckedChanged="CheckBox1_CheckedChanged1" AutoPostBack="true" />
                                                        <%--<div class="col-md-12 i-checks" style="padding-top: 20px"><label>Presupuesto           <input type="checkbox" value="option1" id="checkPresupuesto" name="optionsRadios1">  </label></div>--%>      
                                                              
                                                        </div>
                                                       </div>
                                                    </div>

 
                                                     <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Proyecto</label>
                                                      <asp:DropDownList ID="ac_comboProy" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox--> 
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                               <%--empiezo 3--%>
                                             <div class="col-md-12">
                                                <div class="row">
                                                     <div class="col-md-3">
                                                      <label class="col-form-label">Tipo de Moneda</label>
                                                      <asp:DropDownList ID="ac_comboMoneda" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>  
                                                         <div class="col-md-1"><label class="col-form-label"></label>   </div>    
                                                                                                                                                     
                                                     <div class="col-md-2"><label class="col-form-label">T/C Dolar</label ><asp:TextBox ID="ac_tc"  runat="server" placeholder="" class="form-control"></asp:TextBox></div>                                                
                                                     <div class="col-sm-3">
                                                        <div class="row">
                                                         <div class="col-md-12"><label class="col-form-label"></label>   </div>    
                                                        <div class="col-md-12 i-checks" style="padding-top: 20px"><label>Presupuesto<input type="checkbox" value="option1" id="checkPresupuesto" name="optionsRadios1">  </label></div>      
                                                       </div>
                                                    </div>
                                                    <div class="col-md-3"><label class="col-form-label"></label ></div>                                                                                                 
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                                <%--empiezo 4--%>
                                             <div class="col-md-12" style="padding-top:10px">
                                                <div class="row">
                                                    <div class="col-md-12"><label class="col-form-label">Glosa / Concepto para identificación del registro Contable</label ><asp:TextBox ID="ac_glosa"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                                                  <%--empiezo 5--%>
                                             <div class="col-md-12" style="padding-top:10px">
                                                <div class="row">
                                                    <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Proveedor</label>
                                                      <asp:DropDownList ID="ac_proveedor" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox--> 

                                                    <!--button-->
                                                   <%-- <div class="col-md-3 col-sm-6 col-sm-offset-2" >
                                                     <asp:Button ID="bnt" runat="server" Text="Abrir Libro de Compras" class="btn btn-primary btn-sm"  type="submit" OnClick="abrir_libroCompras_Click"/>
                                                    </div>--%>
                              <div class="ibox ">
                    
                            <div class="col-md-3" style="padding-top:36px" >
                            <a data-toggle="modal"  id="btn_compras" class="btn btn-primary" href="#modal1-form">Abrir libro de compras</a>
                           </div>
                            <div id="modal1-form" class="modal fade" aria-hidden="true">
                                <div class="modal-dialog">
                                    
                                    <div class="modal-content">
                                         
                                        <div class="modal-body">
                                            
                                         <h3 class="text-info">Registro, facturas de Compras </h3>
                                         
                                            <div class="row">
                                             
                                    
                                                     <div class="col-md-4"><label class="col-form-label">NIT Proveedor</label ><asp:TextBox ID="fc_nit"  runat="server" placeholder="Escribir" class="form-control" OnTextChanged="fc_nit_TextChanged" AutoPostBack="true"></asp:TextBox></div>
                                                     <div class="col-md-8"><label class="col-form-label">Nombre de razon social</label ><asp:TextBox ID="fc_razonS"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                
                                              
                                             
                                                    <div class="col-md-12"><label class="col-form-label">Número de autorización</label > <asp:TextBox ID="fc_numAut" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                    
                                                      <!--CALENDARIO-->
                                                     <div class="col-md-6" id="data_3">
                                                     <label class="col-form-label">Fecha de la factura</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="fc_fecha" type="text" class="form-control" value="03/04/2019" autocomplete="on">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->
                                                     <div class="col-md-6"><label class="col-form-label">Nº de factura</label ><asp:TextBox ID="fc_numFac"  runat="server" placeholder="Escribir" class="form-control" AutoPostBack="true" OnTextChanged="fc_numeroFact_TextChanged"></asp:TextBox></div>
                                                
                                             
                                                    <div class="col-md-12"><label class="col-form-label">Código de control</label ><asp:TextBox ID="ac_codigo"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                                                                                                                                      
                                               
                                                  
                                                    <div class="col-md-12"><label class="col-form-label">Total Bs</label > <asp:TextBox ID="fc_total" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                
                                                    <div class="col-md-12"><label class="col-form-label">Importe NO sujeto a crédito fiscal (ICE)</label > <asp:TextBox ID="fc_importeICE" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                    
                                                    
                                                 
                                                    <div class="col-md-12"><label class="col-form-label">Descuentos</label > <asp:TextBox ID="fc_descuento" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>                                                                                                        
                                                
                                          
                                                    <div class="col-md-6"><label class="col-form-label">Importe Base Bs.</label > <asp:TextBox ID="fc_importeB" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                        
                                                    <div class="col-md-6"><label class="col-form-label">Crédito Fiscal Bs.</label > <asp:TextBox ID="fc_creditoFisc" runat="server"  class="form-control"></asp:TextBox></div>                                                                                                                                                        
                                                 <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <!--Combobox-->
                                                    <div class="col-md-12">
                                                      <label class="col-form-label">Cuenta contable</label>
                                                      <asp:DropDownList ID="ac_comboCuentas2" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->  

                                                </div>
                                            </div>    
                                         
                                           <div class="col-sm-12">
                                                    <div class="col-md-5"><label class="col-form-label"></label > </div>                                                                                                                                                        
                                              
                                                <div class="form-group row">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_facturasCompra" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm" height="29px"  type="submit" OnClick="facturaCompras_btnGuardar_Click"/>
                                                    </div>
                                                 </div>
                                        </div> 
                                        </div>
                                    </div>
                                          
                                   </div>
                          

                                                     <!--fin Formulario-->
                                        </div>
                                     </div>
                                    </div>
                               
                                                    <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Clientes</label>
                                                      <asp:DropDownList ID="ac_comboClientes" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->  
                                                      <!--button-->
                                                    <%--<div class="col-md-3 col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button1" runat="server" Text="Abrir Libro de Ventas" class="btn btn-primary btn-sm"  type="submit" OnClick="abrir_libroVentas_Click"/>
                                                    </div>--%>
                   
                    <div class="ibox ">
                            <div class="text-center">
                                <div class="col-md-3" style="padding-top:36px" >
                            <a data-toggle="modal" class="btn btn-primary" href="#modal-form">Abrir libro de ventas</a>
                                    </div>
                            </div>
                            <div id="modal-form" class="modal fade" aria-hidden="true">
                                <div class="modal-dialog">
                                    
                                    <div class="modal-content">
                                         
                                        <div class="modal-body">
                                          
                                            <div class="row">
                                                  <div class="ibox-title text-info">
                                         <h5>Registro, facturas de ventas</h5>
                                         </div>
                                                <div class="row">
                                              
                                                     <div class="col-md-4"><label class="col-form-label">NIT Cliente</label ><asp:TextBox ID="fv_nitCliente"  runat="server" placeholder="Escribir" class="form-control" AutoPostBack="true"></asp:TextBox></div> <%-- OnTextChanged="fv_nit_TextChanged"--%>
                                                     <div class="col-md-8"><label class="col-form-label">Nombre de razon social</label ><asp:TextBox ID="fv_razonS"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>                                                

                                                    <div class="col-md-12"><label class="col-form-label">Número de autorización</label > <asp:TextBox ID="fv_numAuto" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>                                                    
                                                   
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
                                                     <div class="col-md-6"><label class="col-form-label">Nº de factura</label ><asp:TextBox ID="fv_numeroFact"  runat="server" placeholder="Escribir" class="form-control"  AutoPostBack="true" ></asp:TextBox></div> <%--OnTextChanged="fv_numeroFact_TextChanged" --%>
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
                                         <div class="col-md-12" style="padding-top: 10px">
                                                <div class="row">
                                                    <!--Combobox-->
                                                    <div class="col-md-12">
                                                      <label class="col-form-label">Cuenta de ingreso</label>
                                                      <asp:DropDownList ID="ac_cuentasIngreso" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->  

                                                </div>
                                            </div>

                                           <div class="col-sm-12" style="padding-top:10px">
                                                <div class="col-md-3"><label class="col-form-label"></label > </div>    
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="bnt_facturasVenta" runat="server" Text="Guardar datos registrados" height="29px" class="btn btn-primary btn-sm"  type="submit" OnClick="facturaVentas_btnGuardar_Click"/>
                                                    </div>
                                                 </div>
                                           
                                        </div>

                      </div>

                                        </div>
                                    </div>
                                          
                                   </div>
                          

                                          <!--fin Formulario-->
                                        </div>
                                     </div>
                                  
                                </div>
                        </div>
                    </div>

                                             <%--empiezo 6--%>
                                             <div class="col-md-12" style="padding-top:10px">
                                                <div class="row">
                                                    
                                                   <!--Combobox-->
                                                    <div class="col-md-5">
                                                      <label class="col-form-label">Cuenta a utilizar para su asiento</label>
                                                      <asp:DropDownList ID="ac_comboCuentas" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->  
                                                    
                                                     <div class="col-md-2"><label class="col-form-label">Debe</label ><asp:TextBox ID="ac_debe"  runat="server" placeholder="0" class="form-control" AutoPostBack="true"  OnTextChanged="ac_debe_TextChanged"></asp:TextBox></div>                                                                                                
                                                    <div class="col-md-2"><label class="col-form-label">Haber</label ><asp:TextBox ID="ac_haber"  runat="server" placeholder="0" class="form-control" AutoPostBack="true" OnTextChanged="ac_haber_TextChanged"></asp:TextBox></div>                                                                                                
                                                   <div class="col-md-3" style="padding-top:35px">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                       <asp:Button ID="Button1" runat="server" Text="Añadir" class="btn btn-primary btn-sm" height="29px" type="submit" OnClick="ejemplo_btnGuardar_Click"/>
                                                       </div>
                                                     </div>                                                                                          
                                                                                                                                                   
                                                </div>  
                                             </div>  
                                             <%--Fin--%> 
                              </div>
                          </div>
                         </div>  
                </div>  
                <div class="row">
                    <div class="col-lg-12">
                    <div class="ibox ">
                     <div class="ibox-title">
                         <h5>Asiento de Contabilidad </h5>                            
                         </div>
                        <div class="ibox-content">                            
                            <div class="table-responsive">
                               <asp:Repeater ID="RepterDetails" runat="server">
                                <HeaderTemplate>
                                 
                                   <table class="table table-striped" >
                                       <thead>
                                            <tr>
                                               <th>codigo </th>
                                                <th>cuentas</th>
                                                <th>glosa</th> 
                                                <th>debe</th>
                                               <th>haber</th>
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>                                            
                                            <td> <%#Eval("codigo")%></td>                                            
                                            <td> <asp:Label ID="Label1" runat="server" Text='<%#Eval("cuentas")%>'></asp:Label> </td>
                                            <td>  <%#Eval("glosa")%></td>
                                            <td>  <%#Eval("debe")%></td>
                                            <td>  <%#Eval("haber")%></td>
                                           
                                         </tr>
                                    </tbody>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                            </div>
                         </div>
                      </div>
                     </div>
                 </div>
</div>
                   
</form>
</asp:Content>
