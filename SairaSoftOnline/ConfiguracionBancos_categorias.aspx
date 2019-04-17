<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ConfiguracionBancos_categorias.aspx.cs" Inherits="SairaSoftOnline.ConfiguracionBancos_categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Cuentas bancarias y unidades de medida</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Cuentas bancarias y Unidades de medida</strong>
                        </li>
                    </ol>
                </div>
            </div>
     <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                    <div class="col-lg-6">
                        <!--Tipos de moneda-->
                       <div class="ibox ">
                             
                            <div class="ibox-title">
                                <h5>Agregar tipo de moneda</h5>
                            </div>

                            <div class="ibox-content">
                                 
                                            <div class="col-md-12">
                                                <div class="row">
                                                 <div class="col-md-6"><label class="col-form-label">Nombre</label >          <asp:TextBox ID="nom_moneda"  runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-6"><label class="col-form-label">Sigla</label ><asp:TextBox ID="sigla_moneda" runat="server" placeholder="Sigla" class="form-control"></asp:TextBox></div>
                                                    
                                                </div>
                                            </div>
                                        
                                
                                       <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="BtnTipoMoneda" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="BtnTipoMoneda_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de tipos de moneda </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVtiposMoneda" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>       
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <!--Unidades de medida-->
                        <div class="ibox ">
                             
                            <div class="ibox-title">
                                <h5>Agregar Unidad de medida</h5>
                            </div>

                            <div class="ibox-content">
                                 
                                            <div class="col-md-12">
                                                <div class="row">
                                                 <div class="col-md-6"><label class="col-form-label">Nombre</label >          <asp:TextBox ID="n_unmedida"  runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-6"><label class="col-form-label">Abreviatura</label ><asp:TextBox ID="a_unmedida" runat="server" placeholder="Abreviatura" class="form-control"></asp:TextBox></div>
                                                    
                                                </div>
                                            </div>
                                        
                                
                                       <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Btn_unidadMedida" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="BtnUnidadMedida_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de Unidades de medida </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GvUnidadMedida" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
                    <div class="col-lg-12">
                      <!--Cuentas de bancos-->
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Agregar Bancos</h5>
                            </div>

                            <div class="ibox-content">
                                            <div class="col-md-12">
                                                <div class="row">
                                                 <div class="col-md-6"><label class="col-form-label">Nombre</label >          <asp:TextBox ID="nom_banco"  runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-6"><label class="col-form-label">Número de cuenta</label ><asp:TextBox ID="num_cuenta" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                 <div class="col-md-4"><label class="col-form-label">Tipo de cuenta</label >     <asp:TextBox ID="tipoCuenta" runat="server" placeholder="Tipo de cuenta" class="form-control"></asp:TextBox></div>
                                                   
                                                    <!--Combobox-->
                                                    <div class="col-md-2">
                                                      <label class="col-form-label">Tipo de moneda</label>
                                                      <asp:DropDownList ID="tipoMoneda" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                 <div class="col-md-6"><label class="col-form-label">Observaciones</label >     <asp:TextBox ID="observaciones" runat="server" placeholder="Observaciones" class="form-control" OnTextChanged="observaciones_TextChanged"></asp:TextBox></div>
                                               </div>
                                            </div>
                                 <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btnBanco" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnBancos_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>                             
                                
                                <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de número de cuentas bancarias</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVbancos" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
