<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registroProyectos.aspx.cs" Inherits="SairaSoftOnline.registroProyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Proyectos</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Proyectos</strong>
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
                                <h5>Asignar Proyectos</h5>
                            </div>

                            <div class="ibox-content">
                                <!--fin lista de checkbox-->
                                            <div class="col-md-12">
                                                <div class="row">
                                                 <div class="col-md-7"><label class="col-form-label">Nombre del proyecto</label >          <asp:TextBox ID="nom_proyect"  runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-3"><label class="col-form-label">Importe del proyecto</label ><asp:TextBox ID="import_proyect" runat="server" placeholder="0" class="form-control"></asp:TextBox></div>
                                                   
                                                    <!--Combobox-->
                                                    <div class="col-md-2">
                                                      <label class="col-form-label">Tipo de moneda</label>
                                                      <asp:DropDownList ID="tipoMonedarProyect" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    <!--CALENDARIO-->
                                                    <div class="col-md-3" id="data_2" >
                                                     <label class="col-form-label">Fecha inicio</label>
                                                         <div class="input-group date">
                                                         <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="fecha_inicio" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                    </div>
                                                    <!--Fin CALENDARIO-->
                                                    <!--CALENDARIO-->
                                                    <div class="col-md-3" id="data_3" >
                                                     <label class="col-form-label">Fecha fin</label>
                                                         <div class="input-group date">
                                                         <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="fecha_fin" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                    </div>
                                                    <!--Fin CALENDARIO-->
                                                     <!--checkbox-->
                                                   <%-- <div class="col-sm-6">
                                                     <div class="row">
                                                     <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios1">  </label></div>
                                                     <div class="col-md-4"><label class="col-form-label">A una sucursal</label></div>
                                                     <div class="col-md-4 i-checks"><label>  <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios1">  </label></div>
                                                     <div class="col-md-4"><label class="col-form-label">A un punto de venta</label></div>                                                    
                                                     </div>
                                                    </div>--%>
                                                    <!--fin checkbox-->
                                                     <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Sucursal</label>
                                                      <asp:DropDownList ID="DropDownSucursal" class="form-control m-b" runat="server" OnSelectedIndexChanged="DropDPuntoVenta_SelectedIndexChanged" AutoPostBack="true">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                     <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Punto de venta</label>
                                                      <asp:DropDownList ID="DropDPuntoVenta" class="form-control m-b" runat="server"  >
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                               </div>
                                            </div>
                                 <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btnProyecto" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnProyectos_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>                             
                                
                                <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista Proyectos</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVProyectos" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
