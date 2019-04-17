<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="calculadora_tributaria.aspx.cs" Inherits="SairaSoftOnline.calculadora_tributaria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Calculadora tributaria</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Calculadora tributaria</strong>
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
                                <h5>Agregar cálculo de la deuda tributaria</h5>
                            </div>

                            <div class="ibox-content">
                                 
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <!--CALENDARIO-->
                                                    <div class="col-md-3" id="data_3" >
                                                    <label class="col-form-label">Fecha presentación</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="f_presentacion" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                    </div>
                                                    <!--CALENDARIO-->

                                                 <div class="col-md-3"><label class="col-form-label">UFV. Presentación</label ><asp:TextBox ID="ufv_presnt"  runat="server" placeholder="Nombre" class="form-control"></asp:TextBox></div>
                                                   <!--CALENDARIO-->
                                                    <div class="col-md-3" id="data_2" >
                                                    <label class="col-form-label">Fecha de pago</label>
                                                        <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="f_pago" type="text" class="form-control" value="03/04/2019">
                                                        </div>
                                                    </div>
                                                    <!--CALENDARIO-->
                                                  <div class="col-md-3"><label class="col-form-label">UFV. Pago</label > <asp:TextBox ID="ufv_pago" runat="server" placeholder="Sigla" class="form-control"></asp:TextBox></div>
                                                     
                                                    <!--ejemplo Combobox-->
                                                    <div class="col-md-3">
                                                        <label class="col-form-label">Taza de interes a usar en la D.T.</label>
                                                        <asp:DropDownList ID="DDtazaInteresDT" class="form-control m-b" runat="server">
                                                        <asp:ListItem Selected="True" Value="0"> Seleccione</asp:ListItem>
                                                            <asp:ListItem Value="1">0%</asp:ListItem>
                                                            <asp:ListItem Value="2"> 4% </asp:ListItem>
                                                            <asp:ListItem Value="3"> 6% </asp:ListItem>
                                                            <asp:ListItem Value="4"> 10% </asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>  
                                                    <!--fin de combobox-->
                                                    <!--ejemplo Combobox-->
                                                    <div class="col-md-3">
                                                        <label class="col-form-label">Periodo-Mes de la D.T.</label>
                                                        <asp:DropDownList ID="DDmesDT" class="form-control m-b" runat="server">
                                                        <asp:ListItem Selected="True" Value="0"> Seleccione </asp:ListItem>
                                                        <asp:ListItem Value="1">Enero</asp:ListItem>
                                                        <asp:ListItem Value="2">Febrero</asp:ListItem>
                                                        <asp:ListItem Value="3">Marzo</asp:ListItem>
                                                        <asp:ListItem Value="4">Abril</asp:ListItem>
                                                        <asp:ListItem Value="5">Mayo</asp:ListItem>
                                                        <asp:ListItem Value="6">Junio</asp:ListItem>
                                                        <asp:ListItem Value="7">Julio</asp:ListItem>
                                                        <asp:ListItem Value="8">Agosto</asp:ListItem>
                                                        <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                                        <asp:ListItem Value="10">Octubre</asp:ListItem>
                                                        <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                                        <asp:ListItem Value="12">Diciembre</asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>  
                                                    <!--fin de combobox-->
                                                    <!--ejemplo Combobox-->
                                                    <div class="col-md-3">
                                                        <label class="col-form-label">Tipo de impuesto</label>
                                                        <asp:DropDownList ID="DDtipoImpuesto" class="form-control m-b" runat="server">
                                                        <asp:ListItem Selected="True" Value="0"> Seleccione </asp:ListItem>
                                                        <asp:ListItem Value="1"> I.T  </asp:ListItem>
                                                        <asp:ListItem Value="2"> I.V.A. </asp:ListItem>
                                                        <asp:ListItem Value="3"> I.U.E. </asp:ListItem>
                                                        <asp:ListItem Value="4"> I.T. Retenciones </asp:ListItem>
                                                        <asp:ListItem Value="5"> I.U.E. Retenciones </asp:ListItem>
                                                        <asp:ListItem Value="6"> R.C.-I.V.A. Alquileres </asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>  
                                                    <!--fin de combobox-->

                                                  <div class="col-md-3"><label class="col-form-label">Deuda tributaria </label>   <asp:TextBox ID="deuda_tributaria" runat="server" placeholder="Deuda tributaria" class="form-control"></asp:TextBox></div>
                                                  <div class="col-md-3"><label class="col-form-label">I.D.F. </label>             <asp:TextBox ID="idf" runat="server" placeholder="Valor" class="form-control"></asp:TextBox></div>
                                                  <div class="col-md-3"><label class="col-form-label">Nº Orden Referencia</label> <asp:TextBox ID="num_orden" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                  <div class="col-md-3"><label class="col-form-label">Nº Orden Boleta</label>     <asp:TextBox ID="num_Ordboleta" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                                  <div class="col-md-3"><label class="col-form-label">Nº De Boleta </label>       <asp:TextBox ID="num_boleta" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                       
                                                     
                                                </div>
                                            </div>
                                        
                                
                                       <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="BtnCalculadoraTrib" runat="server" Text="Ver resultado" class="btn btn-primary btn-sm"  type="submit" OnClick="BtnGuardarCalculadoraTrib_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de calculo de la deuda tributaria </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVcalculadoraTributaria" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
