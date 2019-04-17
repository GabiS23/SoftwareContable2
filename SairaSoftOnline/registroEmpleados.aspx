<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registroEmpleados.aspx.cs" Inherits="SairaSoftOnline.registroEmpleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>Registro de empleados</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.aspx">Home</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a>App views</a>
                    </li>
                    <li class="breadcrumb-item active">
                        <strong>Registro de empleados</strong>
                    </li>
                </ol>
            </div>
        </div>
        <div class="wrapper wrapper-content  animated fadeInRight">

            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Datos personales</h5>
                </div>
                <div class="ibox-content">
                    <%--<div class="activity-stream">--%>
                    <!--form-->

                    <div class="row">
                        <!--datos personales-->
                        <div class="col-md-2">
                            <label class="col-form-label">CI</label>
                            <asp:TextBox ID="e_CI" runat="server" placeholder="Numero de CI" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="col-form-label">Apellidos</label>
                            <asp:TextBox ID="e_apellidos" runat="server" placeholder="Apellidos" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="col-form-label">Nombres</label>
                            <asp:TextBox ID="e_nombres" runat="server" placeholder="Nombres" class="form-control"></asp:TextBox>
                        </div>
                        <!--ejemplo Combobox-->
                        <div class="col-md-2">
                            <label class="col-form-label">Genero</label>
                            <asp:DropDownList ID="eGenero" class="form-control m-b" runat="server">
                                <asp:ListItem Selected="True" Value="White"> Masculino </asp:ListItem>
                                <asp:ListItem Value="Silver"> Femenino </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <!--fin de combobox-->
                        <!--CALENDARIO-->
                        <div class="col-md-3" id="data_2">
                            <label class="col-form-label">Fecha de nacimiento</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <input runat="server" id="calendarioFechaNaci" type="text" class="form-control" value="03/04/2014">
                            </div>
                        </div>


                        <!--ejemplo Combobox-->
                        <div class="col-md-3">
                            <label class="col-form-label">Estado civil actual</label>
                            <asp:DropDownList ID="eEstadoCivil" class="form-control m-b" runat="server">
                                <asp:ListItem Selected="True" Value="White"> Soltero (a)</asp:ListItem>
                                <asp:ListItem Value="Silver"> Casado (a)</asp:ListItem>
                                <asp:ListItem Value="Silver"> Divorciado (a)</asp:ListItem>
                                <asp:ListItem Value="Silver"> Concubinado (a) </asp:ListItem>
                                <asp:ListItem Value="Silver"> Viudo (a)</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <!--fin de combobox-->
                        <!--ejemplo Combobox-->
                        <div class="col-md-3">
                            <label class="col-form-label">Nacionalidad</label>
                            <asp:DropDownList ID="eNacionalidad" class="form-control m-b" runat="server">
                                <asp:ListItem Selected="True" Value="White"> Boliviano (a)</asp:ListItem>
                                <asp:ListItem Value="Silver"> Extrangero (a)</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <!--fin de combobox-->
                        <div class="col-md-2">
                            <label class="col-form-label">Telefono</label>
                            <asp:TextBox ID="e_telefono" runat="server" placeholder="Telefono" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label class="col-form-label">Correo</label>
                            <asp:TextBox ID="e_correo" runat="server" placeholder="Correo" class="form-control"></asp:TextBox>
                        </div>

                        <div class="col-md-3">
                            <label class="col-form-label">Direccion</label>
                            <asp:TextBox ID="e_direccion" runat="server" placeholder="Direccion" class="form-control"></asp:TextBox>
                        </div>

                        <!--ejemplo Combobox-->
                        <div class="col-md-2">
                            <label class="col-form-label">Grado de estudio</label>
                            <asp:DropDownList ID="eGradoEstudio" class="form-control m-b" runat="server">
                                <asp:ListItem Selected="True" Value="White"> Primaria </asp:ListItem>
                                <asp:ListItem Value="Silver"> Secundaria </asp:ListItem>
                                <asp:ListItem Value="Silver"> Bachiller </asp:ListItem>
                                <asp:ListItem Value="Silver"> Tecnico medio </asp:ListItem>
                                <asp:ListItem Value="Silver"> Tecnico superior </asp:ListItem>
                                <asp:ListItem Value="Silver"> Egresado (a)</asp:ListItem>
                                <asp:ListItem Value="Silver"> Titulado (a)</asp:ListItem>
                                <asp:ListItem Value="Silver"> Pre-Grado </asp:ListItem>
                                <asp:ListItem Value="Silver"> Post-Grado </asp:ListItem>
                                <asp:ListItem Value="Silver"> Maestria </asp:ListItem>
                                <asp:ListItem Value="Silver"> Doctorado </asp:ListItem>
                                <asp:ListItem Value="Silver"> Magister </asp:ListItem>
                                <asp:ListItem Value="Silver"> Otro </asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <!--fin de combobox-->
                        <div class="col-md-2">
                            <label class="col-form-label">Licencia de conducir</label>
                            <asp:TextBox ID="e_licenciaConducir" runat="server" placeholder="Numero" class="form-control"></asp:TextBox>
                        </div>
                        <!--ejemplo Combobox-->
                        <div class="col-md-1">
                            <label class="col-form-label">Categoria</label>
                            <asp:DropDownList ID="eCategoriaLicencia" class="form-control m-b" runat="server">
                                <asp:ListItem Selected="True" Value="White"> A </asp:ListItem>
                                <asp:ListItem Value="Silver"> B </asp:ListItem>
                                <asp:ListItem Value="Silver"> C </asp:ListItem>
                                <asp:ListItem Value="Silver"> D </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <!--fin de combobox-->

                    </div>
                </div>
                <!--end-form-->
                <%-- </div>--%>
            </div>



            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Registro de contrato</h5>
                </div>
                <div class="ibox-content">
                    <!--form-->
                    <div class="col-sm-12">
                        <div class="row">
                            <!--Datos de contrato-->
                            <!--CALENDARIO-->
                            <div class="col-md-3" id="data_3">
                                <label class="col-form-label">Fecha de ingreso</label>
                                <div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input runat="server" id="calendarioFechaIngreso" type="text" class="form-control" value="03/04/2014">
                                </div>
                            </div>
                            <!--fin de CALENDARIO-->
                            <!--ejemplo Combobox-->
                            <div class="col-md-3">
                                <label class="col-form-label">Departamento de trabajo</label>
                                <asp:DropDownList ID="edepartamento" class="form-control m-b" runat="server">
                                </asp:DropDownList>
                            </div>
                            <!--fin de combobox-->

                            <!--Combobox-->
                            <div class="col-md-3">
                                <label class="col-form-label">Cargo</label>
                                <asp:DropDownList ID="eCargo" class="form-control m-b" runat="server">
                                </asp:DropDownList>
                            </div>
                            <!--fin de combobox-->
                            <div class="col-md-2">
                                <label class="col-form-label">Sueldo</label>
                                <asp:TextBox ID="e_sueldo" runat="server" placeholder="Sueldo" class="form-control"></asp:TextBox>
                            </div>
                            <!--ejemplo Combobox-->
                            <div class="col-md-2">
                                <label class="col-form-label">AFP</label>
                                <asp:DropDownList ID="eAfp" class="form-control m-b col-form-label " runat="server">
                                    <asp:ListItem Selected="True" Value="White">Previcion</asp:ListItem>
                                    <asp:ListItem Value="Silver"> Futuro </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <!--fin de combobox-->
                            <!--Combobox inicio-->

                            <div class="col-md-3">
                                <label class="col-form-label">Lugar de trabajo (punto de venta)</label>
                                <asp:DropDownList ID="pVenta" class="form-control m-b col-form-label " runat="server">
                                </asp:DropDownList>
                            </div>
                            <!--fin de combobox-->
                            <!--Combobox inicio-->
                            <div class="col-md-3">
                                <label class="col-form-label">Horario</label>
                                <asp:DropDownList ID="eHorario" class="form-control m-b col-form-label " runat="server">
                                </asp:DropDownList>
                            </div>

                            <!--fin de combobox-->
                            <div class="col-md-2">
                                <label class="col-form-label">Contraseña</label>
                                <asp:TextBox ID="e_contraseña" runat="server" placeholder="Contraseña" class="form-control"></asp:TextBox>
                            </div>

                        </div>
                    </div>
                    <!--end-form-->
                </div>
            </div>




            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Registro de garante</h5>
                </div>
                <div class="ibox-content">
                    <!--form-->
                    <div class="col-sm-12">
                        <div class="row">
                            <!--Datos del garante-->
                            <div class="col-md-4">
                                <label class="col-form-label">Nombres</label>
                                <asp:TextBox ID="g_nombre" runat="server" placeholder="Nombres" class="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="col-form-label">Apellidos</label>
                                <asp:TextBox ID="g_apellido" runat="server" placeholder="Apellidos" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <!--end-form-->
                    <div class="col-sm-12">
                              <div class="hr-line-dashed"></div>
                                 <div class="row">
                                  <div class="hr-line-dashed"></div>
                                   <div class="form-group row" style="padding-left: 18px;">
                                    <div class="col-sm-4 col-sm-offset-2">
                                     <asp:Button ID="btnEmpleado" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="Button1_Click"/>
                                     </div>
                                     </div>
                              </div>
                         </div> 
                </div>

            </div>
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Lista de empleados </h5>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <asp:GridView ID="GridViewEmpleados" runat="server" class="table table-hover table table-striped" GridLines="None">
                        </asp:GridView>
                    </div>

                </div>
            </div>
        </div>

    </form>

</asp:Content>
