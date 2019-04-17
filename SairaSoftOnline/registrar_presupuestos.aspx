<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registrar_presupuestos.aspx.cs" Inherits="SairaSoftOnline.registrar_presupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Presupuestos</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Presupuestos</strong>
                        </li>
                    </ol>
                </div>
            </div>
     <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                    <div class="col-lg-12">
                      <!--Proyectos-->
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Presupuestar la cuenta empresarial</h5>
                            </div>

                            <div class="ibox-content">
                                <!--fin lista de checkbox-->
                                            <div class="col-md-12">
                                                <p>Para seleccionar un punto de venta primero seleccione una sucursal. </p>
                                                <div class="row">
                                                     <!--Combobox-->
                                                    <div class="col-md-3">  
                                                      <label class="col-form-label">Sucursal</label>
                                                      <asp:DropDownList ID="comboSucursalPresup" class="form-control m-b" runat="server" OnSelectedIndexChanged="DropDPuntoVenta_SelectedIndexChanged" AutoPostBack="true">
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                     <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Punto de venta</label>
                                                      <asp:DropDownList ID="comboPuntoVentaP" class="form-control m-b" runat="server"  >
  
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    <!--CALENDARIO-->
                                                    <div class="col-md-4" id="data_2" >
                                                     <label class="col-form-label">Año/Gestión</label>
                                                         <div class="input-group date">
                                                         <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="gestion" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                    </div>
                                                    <!--Fin CALENDARIO-->
                                                    <!--Combobox-->
                                                    <div class="col-md-2">
                                                      <label class="col-form-label">Tipo de moneda</label>
                                                      <asp:DropDownList ID="tipoMonedaPresupuest" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                 <div class="col-md-2"><label class="col-form-label">Enero</label ><asp:TextBox ID="en" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Febrero</label ><asp:TextBox ID="febr" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Marzo</label ><asp:TextBox ID="mzo" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Abril</label ><asp:TextBox ID="abr" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Mayo</label ><asp:TextBox ID="my" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Junio</label ><asp:TextBox ID="jun" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Julio</label ><asp:TextBox ID="jul" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Agosto</label ><asp:TextBox ID="ag" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Septiembre</label ><asp:TextBox ID="sept" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Octubre</label ><asp:TextBox ID="oct" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Noviembre</label ><asp:TextBox ID="nov" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-2"><label class="col-form-label">Diciembre</label ><asp:TextBox ID="dic" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                     <!--Combobox-->
                                                    <div class="col-md-4">
                                                      <label class="col-form-label">Cuenta a presupuestar</label>
                                                      <asp:DropDownList ID="DDcuentaApresupuestar" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    <!--Combobox-->
                                                    <div class="col-md-4">
                                                      <label class="col-form-label">Relacionar con Proyecto</label>
                                                      <asp:DropDownList ID="DropDownNomProyecto" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                               </div>
                                            </div>
                                 <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btnPresupuesto" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnPresupuesto_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>                             
                                
                                <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de cuentas presupuestadas</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVPresupuestos" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                    </div>
             </div>
    </form>
</asp:Content>
