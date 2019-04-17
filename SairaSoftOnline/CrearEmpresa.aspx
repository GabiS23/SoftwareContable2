<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CrearEmpresa.aspx.cs" Inherits="SairaSoftOnline.CrearEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Empresa</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        
                        <li class="breadcrumb-item active">
                            <strong>Crear Empresa</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                    <div class="col-lg-12">
                    <!--registro de la empresa-->
                    <div class="ibox ">
                        <div class="ibox-title">
                          <h5>Formulario de registro de la empresa <!--<small>formulario de registro</small>--></h5>
                        </div>
                        <div class="ibox-content">
                                 <!--form-->
                                        <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Razón social</label>       <asp:TextBox ID="ID_rSocial" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-4"><label class="col-form-label">Razón comercial</label >   <asp:TextBox ID="ID_rComercial" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-2"><label class="col-form-label">NIT</label>                <asp:TextBox ID="ID_nit" runat="server" placeholder="Número de NIT" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-2"><label class="col-form-label">País</label>               <asp:TextBox ID="ID_pais" runat="server" placeholder="País" class="form-control"></asp:TextBox></div>
                                            </div>
                                        </div>
                                  <!--end-form-->
                                   <!--form-->
                                        <div class="col-sm-12" style="padding-top: 25px">
                                            <div class="row">
                                    <!--ejemplo Combobox-->
                                      <div class="col-md-3"><label class="col-form-label">Periodo de cierre</label>
                                          <asp:DropDownList id="periodoCierre"  class="form-control m-b" runat="server" OnSelectedIndexChanged="periodoCierre_SelectedIndexChanged1" >
                                                      <asp:ListItem Selected="True" Value="1"> 31 diciembre </asp:ListItem>
                                                      <asp:ListItem Value="2"> 31 Marzo </asp:ListItem>
                                                      <asp:ListItem Value="3"> 30 Junio </asp:ListItem>
                                                      <asp:ListItem Value="4"> 30 Septiembre </asp:ListItem>                                                      
                                                </asp:DropDownList>
                                      </div>
                                             <!--fin de combobox-->
                                                
                                                <div class="col-md-3"><label class="col-form-label">Periodo de actividad</label><asp:TextBox ID="ID_perActividad" runat="server" placeholder="Periodo de actividad" class="form-control"></asp:TextBox></div>
                                                
                                                <div class="col-md-6"><label class="col-form-label">Actividad principal</label><asp:TextBox ID="ID_actPrincipal" runat="server" placeholder="Actividad principal" class="form-control"></asp:TextBox></div>
                                          
                                            </div>
                                        </div>
                                      <!--end-form-->
                            </div>
                        </div>
                    </div>   
                 <!--registro 2-->       
                    <div class="col-lg-12">
                   
                    <div class="ibox ">
                            <div class="ibox-title">                           
                                <h5>Formulario de registro de la Sucursal</h5>                             
                                  <div class="ibox-content">
                                       <!--form-->
                                  
                                    <%--<div class="form-group row"><label class="col-sm-2 col-form-label">Nombre</label>--%>
                                        <div class="col-sm-12" >
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Ciudad</label><asp:TextBox ID="ID_ciudadSucursal" runat="server" placeholder="Ciudad" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-4"><label class="col-form-label">Número patronal</label><asp:TextBox ID="ID_nPatronalSucursal" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                          
                                            </div>
                                        </div>
                                      <!--end-form-->
                                </div>
                             </div> 
                      </div>
                    </div>
                <!--registro 3-->
                    <div class="col-lg-12">
                    
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>Formulario de registro del Punto de Venta</h5>
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-md-4"><label class="col-form-label">Nombre</label>     <asp:TextBox ID="ID_nombrePV" runat="server" placeholder="Nombre del punto de venta" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-2"><label class="col-form-label">Teléfono</label>   <asp:TextBox ID="ID_telefonoPV" runat="server" placeholder="Teléfono" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-4"><label class="col-form-label">Correo electrónico</label>     <asp:TextBox ID="ID_correoPV" runat="server" placeholder="Correo electrónico" class="form-control"></asp:TextBox></div>                                            
                                         </div>
                                    </div>
                                  <!--end-form-->
                                  <!--form-->
                                    <div class="col-sm-12" style="padding-top: 15px">
                                        <div class="row">
                                          <div class="col-md-6"><label class="col-form-label">Dirección</label>  <asp:TextBox ID="ID_direccionPV" runat="server" placeholder="Dirección" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-4">
                                             <div class="form-group" id="data_1">
                                                <label class="col-form-label">Fecha de Creación</label>
                                                <div class="input-group date">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="calendarioEmpresa" type="text" class="form-control" value="10/11/2013">
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                  <!--end-form-->
                                  <!--form-->
                                    <div class="col-sm-12" >
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 30px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btnEmpresa" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="Button1_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                 </div>
                                  <!--end-form-->
                                                     
                       </div>   
                  </div> 
                    </div>
             </div>
        </div>
    </form>
</asp:Content>
