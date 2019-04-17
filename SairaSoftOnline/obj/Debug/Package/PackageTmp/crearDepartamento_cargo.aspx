<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="crearDepartamento_cargo.aspx.cs" Inherits="SairaSoftOnline.crearDepartamento_cargo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Creacion de Cargos y Departamentos</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Crear Cargos y Departamentos</strong>
                        </li>
                    </ol>
                </div>
            </div>
     <div class="wrapper wrapper-content  animated fadeInRight">

                <div class="row">
                    <div class="col-lg-6">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Crear Departamento</h5>
                            </div>

                            <div class="ibox-content">
                                <div class="activity-stream">
                                    <div ><label class="col-form-label">Nombre del Departamento</label>     <asp:TextBox ID="n_departamento" runat="server" placeholder="Nombre Departamento" class="form-control"></asp:TextBox></div>
                            
                                </div>                               
                                <div class="form-group row" style="padding-top: 20px;">
                                    <div class="col-sm-offset-1">
                                        <button class="btn btn-white btn-sm" type="submit">Cancelar</button>                                        
                                        <asp:Button ID="Button1" runat="server" Text="Crear Departamento" class="btn btn-primary btn-sm"  type="submit" OnClick="Button1_Click"  />
                                    </div>
                                </div>
                                <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de Departamentos </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridView1" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Crear Cargo</h5>
                            </div>

                            <div class="ibox-content">
                                 
                                <div ><label class="col-form-label">Nombre del cargo</label>     <asp:TextBox ID="n_cargo" runat="server" placeholder="Nombre Cargo" class="form-control"></asp:TextBox></div>
                                <div class="form-group row" style="padding-top: 20px;">
                                    <div class="col-sm-offset-1">
                                        <button class="btn btn-white btn-sm" type="submit">Cancelar</button>                                        
                                        <asp:Button ID="Button2" runat="server" Text="Crear Cargo" class="btn btn-primary btn-sm"  type="submit" OnClick="Button2_Click"  />
                                    </div>
                                </div>   
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de Cargos </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridView2" runat="server"   class="table table-hover table table-striped" GridLines="None">
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
