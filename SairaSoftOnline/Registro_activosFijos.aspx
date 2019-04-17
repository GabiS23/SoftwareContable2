<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro_activosFijos.aspx.cs" Inherits="SairaSoftOnline.Registro_activosFijos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Activos fijos</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Activos fijos</strong>
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
                                <h5>Registro de activos fijos</h5>
                            </div>

                            <div class="ibox-content">
                                 
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-3"><label class="col-form-label">Nombre del activo fijo</label > <asp:TextBox ID="af_nom" runat="server" placeholder="Esbribir" class="form-control"></asp:TextBox></div>
                                                    <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Grupo de activo Fijo</label>
                                                      <asp:DropDownList ID="af_comboListaActFijo" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    <!--Combobox-->
                                                    <div class="col-md-3">
                                                      <label class="col-form-label">Grupo A.F. depresiación acumulada</label>
                                                      <asp:DropDownList ID="af_comboGrupoDepreAcum" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    <div class="col-md-3"><label class="col-form-label">Marca del activo fijo</label > <asp:TextBox ID="af_marca" runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                    <div class="col-md-3"><label class="col-form-label">Número de serie o código</label > <asp:TextBox ID="af_codigo" runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                     <!--Combobox-->
                                                    <div class="col-md-2">
                                                      <label class="col-form-label">Tipo de moneda</label>
                                                      <asp:DropDownList ID="af_combotipoMoneda" class="form-control m-b" runat="server">
                                                          
                                                      </asp:DropDownList>
                                                     </div>
                                                    <!--fin de combobox-->
                                                    <!--CALENDARIO-->
                                                     <div class="col-md-3" id="data_3" >
                                                     <label class="col-form-label">Fecha de incorporación</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="af_fechaIncorporacion" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                     </div>
                                                     <!--CALENDARIO-->

                                                     <div class="col-md-4"><label class="col-form-label">Valor inicial</label ><asp:TextBox ID="af_valorInicial"  runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                     <!--Combobox-->
                                                     <div class="col-md-2">
                                                      <label class="col-form-label">Porcentaje depreciable (%)</label>
                                                            <asp:DropDownList ID="af_porcentajeDepresiable" class="form-control m-b" runat="server">
                                                                <asp:ListItem Selected="True" Value="0"> Seleccione </asp:ListItem>
                                                                <asp:ListItem Value="1"> 2.50 % </asp:ListItem>
                                                                <asp:ListItem Value="2"> 2.70 % </asp:ListItem>
                                                                <asp:ListItem Value="3"> 3.00 % </asp:ListItem>
                                                                <asp:ListItem Value="4"> 3.30 % </asp:ListItem>                                                                
                                                                <asp:ListItem Value="5"> 3.50 % </asp:ListItem>
                                                                <asp:ListItem Value="6"> 3.70 % </asp:ListItem>
                                                                <asp:ListItem Value="7"> 3.80 % </asp:ListItem>
                                                                <asp:ListItem Value="8"> 4.00 % </asp:ListItem>
                                                                <asp:ListItem Value="9"> 4.40 % </asp:ListItem>
                                                                <asp:ListItem Value="10"> 4.50 % </asp:ListItem>
                                                                <asp:ListItem Value="11"> 5.00 % </asp:ListItem>
                                                                <asp:ListItem Value="12"> 5.60 % </asp:ListItem>
                                                                <asp:ListItem Value="13"> 5.88 % </asp:ListItem>
                                                                <asp:ListItem Value="14"> 6.00 % </asp:ListItem>
                                                                <asp:ListItem Value="15"> 6.30 % </asp:ListItem>
                                                                <asp:ListItem Value="16"> 6.67 % </asp:ListItem>
                                                                <asp:ListItem Value="17"> 6.70 % </asp:ListItem>
                                                                <asp:ListItem Value="18"> 10.00 % </asp:ListItem>
                                                                <asp:ListItem Value="19"> 12.50 % </asp:ListItem>
                                                                <asp:ListItem Value="20"> 20.00 % </asp:ListItem>
                                                                <asp:ListItem Value="21"> 25.00 % </asp:ListItem>
                                                            </asp:DropDownList>
                                                         </div>
                                                         <!--fin de combobox-->
                                                         <div class="col-md-3"><label class="col-form-label">Dep. Acum. si lo tiene</label > <asp:TextBox ID="af_DepAcum" runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                         <div class="col-md-4"><label class="col-form-label">Descripción</label > <asp:TextBox ID="af_descrip" runat="server" placeholder="Escribir" class="form-control"></asp:TextBox></div>
                                                         <!--Combobox-->
                                                         <div class="col-md-3">
                                                         <label class="col-form-label">Nombre del responsable</label>
                                                         <asp:DropDownList ID="af_comboBox_responsable" class="form-control m-b" runat="server">
                                                          
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
                                                     <asp:Button ID="af_btn" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="af_btnGuardar_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de Registro de activos fijos </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="af_gridView" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
