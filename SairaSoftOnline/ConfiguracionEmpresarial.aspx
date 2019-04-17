<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ConfiguracionEmpresarial.aspx.cs" Inherits="SairaSoftOnline.ConfiguracionEmpresarial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Configuración empresarial</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Configuración empresarial</strong>
                        </li>
                    </ol>
                </div>
            </div>
     <div class="wrapper wrapper-content  animated fadeInRight">

           <div class="row">
                   <div class="col-lg-5">
                        <div class="ibox ">
                        <div class="ibox-title"><h5>Tipo de moneda</h5></div>
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                            <div class="col-md-5"><label class="col-form-label">Nombre</label >     <asp:TextBox ID="n_moneda" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-5"><label class="col-form-label">Sigla</label>     <asp:TextBox ID="s_moneda" runat="server" placeholder="Sigla" class="form-control"></asp:TextBox></div>
                            
                                         </div>
                                    </div>
                                  <!--end-form-->
                                   <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button3" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="tipoMoneda_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                  <!--tabla-->
                                   <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de tipos de moneda </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridViewMoneda" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                  <!--fin tabla-->
                          
                             </div>                 
                    
                  </div> 
                        
                   </div>
                   <div class="col-lg-7">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Tipo de cambio</h5>
                            </div>

                            <div class="ibox-content">

                                 <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                             <!--CALENDARIO-->
                                            <div class="col-md-4" id="data_2" >
                                             <label class="col-form-label">Fecha</label>
                                                 <div class="input-group date">
                                                  <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="fechaDolar" type="text" class="form-control" value="03/04/2014">
                                                </div>
                                            </div>
                                            <div class="col-md-3"><label class="col-form-label">UFV</label>   <asp:TextBox ID="tc_Ufv" runat="server" placeholder="Valor" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-3"><label class="col-form-label">Dolar</label> <asp:TextBox ID="tc_dolar" runat="server" placeholder="Valor" class="form-control"></asp:TextBox></div>
                                          
                                         </div>
                                    </div>
                                <%--<div ><label class="col-form-label">Fecha</label> <asp:TextBox ID="tc_fecha" runat="server" placeholder="FECHA" class="form-control"></asp:TextBox></div>--%>
                               
                                <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button4" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="tipoCambio_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>   
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de tipos de cambio </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridViewTipoCambio" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>       
                            </div>

                        </div>
                   </div>

                    
          </div>
         <div class="row">
                   <div class="col-lg-5">
                        <div class="ibox ">
                        <div class="ibox-title"><h5>Tipos de facturación</h5></div>
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                            <div class="col-md-6"><label class="col-form-label">Nombre</label >     <asp:TextBox ID="n_factura" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                            
                                         </div>
                                    </div>
                                  <!--end-form-->
                                   <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="BtnFactura" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="ButtonFactura_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>   
                                  <!--tabla-->
                                   <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de tipos de facturas</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridViewFacturas" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                  <!--fin tabla-->
                          
                             </div>                 
                    
                  </div> 
                        
                   </div>
                   <div class="col-lg-7">
                        <div class="ibox ">
                            <div class="ibox-title"><h5>Añadir docificación</h5></div>
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                              <!--Combobox-->
                                              <div class="col-md-5"><label class="col-form-label">Sucursal</label>
                                                <asp:DropDownList id="s_docificacion"  class="form-control m-b" runat="server">                                         
                                                </asp:DropDownList>
                                             </div>
                                             <!--fin de combobox-->
                                            <!--Combobox-->
                                              <div class="col-md-5"><label class="col-form-label">Punto de venta</label>
                                                <asp:DropDownList id="pv_docificacion"  class="form-control m-b" runat="server">                                         
                                                </asp:DropDownList>
                                             </div>
                                             <!--fin de combobox-->
                                             <!--Combobox-->
                                              <div class="col-md-5"><label class="col-form-label">Tipo de facturación</label>
                                                <asp:DropDownList id="factura_docificacion"  class="form-control m-b" runat="server">                                         
                                                </asp:DropDownList>
                                             </div>
                                             <!--fin de combobox-->
                                            <div class="col-md-6"><label class="col-form-label">Próximo número</label >     <asp:TextBox ID="pn_docificacion" runat="server" placeholder="Próximo número" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Nro. de Autorización</label >     <asp:TextBox ID="na_docificacion" runat="server" placeholder="Numero de autorización" class="form-control"></asp:TextBox></div>
                                            <!--CALENDARIO-->
                                            <div class="col-md-4" id="data_3" >
                                             <label class="col-form-label">Fecha limite de emisión</label>
                                                 <div class="input-group date">
                                                  <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="flde_docificacion" type="text" class="form-control" value="03/04/2014">
                                                </div>
                                            </div>   
                                            <!--fin de CALENDARIO--> 
                                            <div class="col-md-6"><label class="col-form-label">Clave de cifrado</label >     <asp:TextBox ID="lldc_docificacion" runat="server" placeholder="Clave" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Ley Nro. 453</label >     <asp:TextBox ID="ley_docificacion" runat="server" placeholder="Ley Nro. 453" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Actividad de la empresa</label >     <asp:TextBox ID="actvEmpresa_docificacion" runat="server" placeholder="Actividad de la empresa" class="form-control"></asp:TextBox></div>
                                              <div class="col-md-6"><label class="col-form-label">Estado </label> 
                                              <!--chekbox-->
                                              <div class="i-checks"><label> <input type="radio" value="option1" name="a"><asp:CheckBoxList ID="estado" runat="server"></asp:CheckBoxList> <i></i> Activo </label></div>
                                              <div class="i-checks"><label> <input type="radio" checked="" value="option2" name="a"><asp:CheckBoxList ID="Estado_inactivo" runat="server"></asp:CheckBoxList> <i></i> Inactivo </label></div>
                                              <!--fin checkbox-->
                                              </div>
                                    
                                  <!--end-form-->
                                         <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btnDocificacion" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="ButtonDocificacion_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>  
                                </div>

                                    </div>
                               </div>
                          
                             </div>    
                                 <div>
                                     <div class="ibox">
                                        <div class="ibox-title">
                                            <h5>Docificaciones generadas</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridViewDosificacion" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>       
                            

                        </div>
                   </div>

                    
          </div>
    

    </form>
</asp:Content>
