<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registrar_clientesYproveddores.aspx.cs" Inherits="SairaSoftOnline.registrar_clientesYproveddores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Clientes y proveedores</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Clientes y proveedores</strong>
                        </li>
                    </ol>
                </div>
            </div>
     <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                    <div class="col-lg-12">
                        <!--Tipos de moneda-->
                       <div class="ibox ">
                             
                            <div class="ibox-title">
                                <h5>Registrar nuevo cliente</h5>
                            </div>

                            <div class="ibox-content">
                                        <div class="col-md-12">
                                           <div class="row">
                                                <div class="col-md-3"><label class="col-form-label">Clave - Cliente</label><asp:TextBox ID="clave_cliente" runat="server" placeholder="Clave" class="form-control"></asp:TextBox></div>
                                                </div> 
                                          </div>
                                           <div class="col-md-12">
                                                <div class="row">

                                                 <div class="col-md-4"><label class="col-form-label">Nombre comercial</label>     <asp:TextBox ID="cl_nomComercial"  runat="server" placeholder="Nombre comercial" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Razón social</label>         <asp:TextBox ID="cl_razsocial" runat="server" placeholder="Razón social" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">NIT</label>                  <asp:TextBox ID="cl_nit" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Nombre del contacto</label>  <asp:TextBox ID="cl_nom" runat="server" placeholder="Nombre del cliente" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Dirección del cliente</label><asp:TextBox ID="cl_direccion" runat="server" placeholder="Direccion del cliente" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Teléfono celular</label>     <asp:TextBox ID="cl_fijo" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Teléfono fijo</label>        <asp:TextBox ID="cl_movil" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Correo electrónico</label>   <asp:TextBox ID="cl_correo" runat="server" placeholder="Correo electrónico" class="form-control"></asp:TextBox></div>
                                                 <!--Combobox-->
                                                    <div class="col-md-4">
                                                      <label class="col-form-label">Cuenta contable cliente</label>
                                                      <asp:DropDownList ID="combocntaContableCliente" class="form-control m-b" runat="server">
                                                          
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
                                                     <asp:Button ID="BtnCliente" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="BtnAgregarCliente_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de clientes registrados</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVclientes" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>       
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-12">
                        <!--Unidades de medida-->
                        <div class="ibox ">
                             
                            <div class="ibox-title">
                                <h5>Registrar nuevo proveedor</h5>
                            </div>

                            <div class="ibox-content">
                                 
                                             <div class="col-md-12">
                                                <div class="row">
                                                 <div class="col-md-4"><label class="col-form-label">Nombre comercial</label>     <asp:TextBox ID="pr_nomComercial"  runat="server" placeholder="Nombre comercial" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Razón social</label>         <asp:TextBox ID="pr_rSocial" runat="server" placeholder="Razón social" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">NIT</label>                  <asp:TextBox ID="pr_nit" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Nombre del Cliente</label>   <asp:TextBox ID="pr_nomCliente" runat="server" placeholder="Nombre del cliente" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Dirección del cliente</label><asp:TextBox ID="pr_dirCliente" runat="server" placeholder="Direccion del cliente" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Teléfono celular</label>     <asp:TextBox ID="pr_movil" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Teléfono fijo</label>        <asp:TextBox ID="pr_fijo" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Correo electrónico</label>   <asp:TextBox ID="pr_correo" runat="server" placeholder="Correo electrónico" class="form-control"></asp:TextBox></div>
                                                 <!--Combobox-->
                                                    <div class="col-md-4">
                                                      <label class="col-form-label">Cuenta contable cliente</label>
                                                      <asp:DropDownList ID="combocntaContableProv" class="form-control m-b" runat="server">
                                                          
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
                                                     <asp:Button ID="Btn_proveedores" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="BtnAgregarProveedores_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de proveedores registrados </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="Gvproveedores" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
