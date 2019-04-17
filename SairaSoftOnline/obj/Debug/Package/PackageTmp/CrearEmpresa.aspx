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
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>Formulario de registro de la empresa <!--<small>formulario de registro</small>--></h5>
                       
                        </div>
                        <div class="ibox-content">
                          <!--form-->
                                  
                                    <%--<div class="form-group row"><label class="col-sm-2 col-form-label">Nombre</label>--%>
                                        <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Razon Social</label>       <asp:TextBox ID="ID_rSocial" runat="server" placeholder="Razon social" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-4"><label class="col-form-label">Razon Comercial</label >   <asp:TextBox ID="ID_rComercial" runat="server" placeholder="Razon comercial" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-2"><label class="col-form-label">NIT</label>                <asp:TextBox ID="ID_nit" runat="server" placeholder="Numero de NIT" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-2"><label class="col-form-label">Pais</label>               <asp:TextBox ID="ID_pais" runat="server" placeholder="Pais" class="form-control"></asp:TextBox></div>
                                          

                                            </div>
                                        </div>
                                      <!--end-form-->

                             <!--form-->
                                  
                                    <%--<div class="form-group row"><label class="col-sm-2 col-form-label">Nombre</label>--%>
                                        <div class="col-sm-12" style="padding-top: 25px">
                                            <div class="row">
                                                <div class="col-md-3"><label class="col-form-label">Periodo de cierre</label> <asp:TextBox ID="ID_pCierre" runat="server" placeholder="Periodo de cierre" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-3"><label class="col-form-label">Periodo de actividad</label><asp:TextBox ID="ID_perActividad" runat="server" placeholder="Periodo de actividad" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-6"><label class="col-form-label">Actividad principal</label><asp:TextBox ID="ID_actPrincipal" runat="server" placeholder="Actividad principal" class="form-control"></asp:TextBox></div>
                                          

                                            </div>
                                        </div>
                                      <!--end-form-->
                                
                           
                           
                            </div>
                        </div>
                    </div>          
                <div class="col-lg-12">
                        <div class="ibox ">
                            <div class="ibox-title">                           
                                <h5>Formulario de registro de la Sucursal</h5>                             
                                  <div class="ibox-content">
                                       <!--form-->
                                  
                                    <%--<div class="form-group row"><label class="col-sm-2 col-form-label">Nombre</label>--%>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Ciudad</label><asp:TextBox ID="ID_ciudadSucursal" runat="server" placeholder="Ciudad" class="form-control"></asp:TextBox></div>
                                                <div class="col-md-4"><label class="col-form-label">Numero patronal</label><asp:TextBox ID="ID_nPatronalSucursal" runat="server" placeholder="Numero patronal" class="form-control"></asp:TextBox></div>
                                          

                                            </div>
                                        </div>
                                      <!--end-form-->
                        </div>
                             </div> 

                      </div>
                     </div>
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-title">

                            <h5>Formulario de registro del Punto de Venta</h5>
                           
                              <div class="ibox-content">
                     
                                  <!--form-->
                                  
                                <%--<div class="form-group row"><label class="col-sm-2 col-form-label">Nombre</label>--%>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-md-4"><label class="col-form-label">Nombre</label>     <asp:TextBox ID="ID_nombrePV" runat="server" placeholder="Nombre del punto de venta" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-2"><label class="col-form-label">Año</label>        <asp:TextBox ID="ID_añoPV" runat="server" placeholder="Año" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-2"><label class="col-form-label">Telefono</label>   <asp:TextBox ID="ID_telefonoPV" runat="server" placeholder="Telefono" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-4"><label class="col-form-label">Correo</label>     <asp:TextBox ID="ID_correoPV" runat="server" placeholder="Correo electronico" class="form-control"></asp:TextBox></div>                                            
                                            <div class="col-md-12"><label class="col-form-label">Direccion</label>  <asp:TextBox ID="ID_direccionPV" runat="server" placeholder="Direccion" class="form-control"></asp:TextBox></div>

                                        </div>
                                    </div>
                                  <!--end-form-->
                                </div>

                             <div class="hr-line-dashed"></div>
                                    <div class="form-group row">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-white btn-sm" type="submit">Cancelar</button>                                        
                                        <asp:Button ID="Button1" runat="server" Text="Crear Empresa" class="btn btn-primary btn-sm"  type="submit" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            <br />                            
                       </div>   
                  </div> 
              </div>
             </div>
        </div>

                        

 
    
    </form>
</asp:Content>
