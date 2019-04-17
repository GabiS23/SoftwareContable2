<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="configuracionRR.HH.aspx.cs" Inherits="SairaSoftOnline.configuracionRR_HH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <form id="form1" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Configuración de RR.HH</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a>App views</a>
                        </li>
                        <li  class="breadcrumb-item active">
                            <strong>Configuración de RR.HH</strong>
                        </li>
                    </ol>
                </div>
            </div>
     <div class="wrapper wrapper-content  animated fadeInRight">

           <div class="row">
                   <div class="col-lg-5">
                       <!--dias laborales-->
                        <div class="ibox ">
                            <div class="ibox-title"><h5>Dias laborales</h5></div>
                             
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                          <!--lista de checkbox-->
                                           
                                        <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-2"><label class="col-form-label"></label>   </div>    
                                                <div class="col-md-5"><label class="col-form-label">Jornada completa</label >   </div>
                                                <div class="col-md-4"><label class="col-form-label">Media jornada</label>       </div>         
                                            </div>
                                        </div>
                                   
                                        <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Lunes</label></div>
                                                <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios1">  </label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios1">  </label></div>
                                            </div>
                                        </div>
                                       <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Martes</label></div>
                                             <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option1" id="optionsRadios3" name="optionsRadios2">  </label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio" value="option2" id="optionsRadios4" name="optionsRadios2">  </label></div>
                                            </div>
                                        </div>
                                            <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Miercoles</label></div>
                                                <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option1" id="optionsRadios5" name="optionsRadios3">  </label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio"  value="option2" id="optionsRadios6" name="optionsRadios3">  </label></div>
                                            </div>
                                        </div>
                                            <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Jueves</label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option1" id="optionsRadios7" name="optionsRadios4">  </label></div>
                                                <div class="col-md-4 i-checks"><label>  <input type="radio"  value="option2" id="optionsRadios8" name="optionsRadios4">  </label></div>
                                            
                                            </div>
                                        </div>
                                            <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Viernes</label></div>
                                                <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option1" id="optionsRadios9" name="optionsRadios5">  </label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio"  value="option2" id="optionsRadios10" name="optionsRadios5">  </label></div>
                                            </div>
                                        </div>
                                            <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Sabado</label></div>
                                                <div class="col-md-4 i-checks"><label>  <input type="radio"  value="option1" id="optionsRadios11" name="optionsRadios6">  </label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option2" id="optionsRadios12" name="optionsRadios6">  </label></div>
                                            </div>
                                        </div>
                                             <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-md-4"><label class="col-form-label">Domingo</label></div>
                                                <div class="col-md-4 i-checks"><label>  <input type="radio" value="option1" id="optionsRadios13" name="optionsRadios7">  </label></div>
                                                 <div class="col-md-4 i-checks"><label>  <input type="radio" checked="" value="option2" id="optionsRadios14" name="optionsRadios7">  </label></div>
                                            </div>
                                        </div>
                                         
                                      <!--end-form-->
                                      <!--fin lista de checkbox-->
                               

                                            <div class="col-md-12">
                                                <div class="row">
                                                 <div class="col-md-6"><label class="col-form-label">Sueldo minimo nacinal</label >     <asp:TextBox ID="sueldo_minimo" runat="server" placeholder="Monto" class="form-control"></asp:TextBox></div>

                                           
                                                    <!--Combobox inicio-->
                                                    <div class="col-md-5">
                                                    <label class="col-form-label">Gestión</label>
                                                      <asp:DropDownList ID="gestion" class="form-control m-b col-form-label " runat="server">
                                                        </asp:DropDownList>
                                                     </div>
                                               </div>
                                            </div>
                                        <!--fin de combobox-->
                                         
                                  <!--end-form-->
                                          <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button3" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnDiasLaborales_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                </div>

                                      <div class="ibox">
                                        <div class="ibox-title">
                                            <h5>Lista de dias laborales</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVdiaLaboral" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                   </div>
                                  
                               </div>
                          
                        </div>  
                   
                        
                   </div>
                   <div class="col-lg-7">
                       <!--Vacaciones-->
                        <div class="ibox ">
                        <div class="ibox-title"><h5>Vacaciones</h5></div>
                            
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                            <div class="col-md-5"><label class="col-form-label">Minimo en años de antiguedad</label >     <asp:TextBox ID="v_min" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-5"><label class="col-form-label">Máximo en años de antiguedad</label >     <asp:TextBox ID="v_max" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-5"><label class="col-form-label">Días de vacaciones</label >     <asp:TextBox ID="v_dias" runat="server" placeholder="Nº de dias" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-5"><label class="col-form-label">Observaciones</label >     <asp:TextBox ID="v_obs" runat="server" placeholder="Observaciones" class="form-control"></asp:TextBox></div>
                                            
                                         </div>
                                    </div>
                                  <!--end-form-->
                                   <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button2" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnVacaciones_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>

                                  <!--tabla-->
                                   <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de vacaciones</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVvacaciones" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                  <!--fin tabla-->
                          
                             </div>                 
                    
                  </div> 
                       
                   </div>
             </div>


         <div class="row">
                   <div class="col-lg-5">
                        <!--sanciones por retrazo-->
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>Sanciones por retraso (minutos)</h5>
                            </div>

                            <div class="ibox-content">

                                 <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                            <div class="col-md-6"><label class="col-form-label">Minimo ((Nº en minutos)</label>   <asp:TextBox ID="min_minuto" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Maximo (Nº en minutos)</label>   <asp:TextBox ID="max_minuto" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Sanción</label> <asp:TextBox ID="san_minuto" runat="server" placeholder="Sanción" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Observaciones</label>       <asp:TextBox ID="obs_minuto" runat="server" placeholder="Observaciones" class="form-control"></asp:TextBox></div>                                            
                                         </div>
                                    </div>
                               
                                
                                
                                 <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btn_sanciones" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="sanciones_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                  
                                 <div>
                                     <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de sanciones por minutos </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GViewSancionHora" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                </div>       
                            </div>

                        </div>
                   </div>
                   <div class="col-lg-7">
                         <!--sanciones por faltas dia-->
                        <div class="ibox ">
                        <div class="ibox-title"><h5>Sanciones por faltas (dias)</h5></div>
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                            <div class="col-md-6"><label class="col-form-label">Minimo (Nº dias)</label >     <asp:TextBox ID="min_dias" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Máximo (Nº dias)</label >     <asp:TextBox ID="max_dias" runat="server" placeholder="Nº" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Sanción (Nº dias)</label >    <asp:TextBox ID="s_dias" runat="server" placeholder="Sancion" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Observaciones</label >   <asp:TextBox ID="obs_dias" runat="server" placeholder="Observaciones" class="form-control"></asp:TextBox></div>
                                            
                                         </div>
                                    </div>
                                  <!--end-form-->
                                  
                                    <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="btnSancionDia" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnSancionDia_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>

                                  <!--tabla-->
                                   <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de tipos de sanciones por dia</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GViewSancionesDia" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                  <!--fin tabla-->
                          
                             </div>                 
                    
                  </div> 

                        </div>
                   </div>

         <div class="row">
                   <div class="col-lg-5">
                       <!--feriados-->
                        <div class="ibox ">
                        <div class="ibox-title"><h5>Feriados</h5></div>
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <!--Datos-->
                                            <div class="col-md-6"><label class="col-form-label">Nombre</label >     <asp:TextBox ID="n_feriado" runat="server" placeholder="Nombre del feriado" class="form-control"></asp:TextBox></div>
                                             <!--CALENDARIO-->
                                            <div class="col-md-5" id="data_2" >
                                             <label class="col-form-label">Fecha</label>
                                                 <div class="input-group date">
                                                  <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input runat="server" id="f_feriado" type="text" class="form-control" value="03/04/2019">
                                                </div>
                                            </div>
                                            <div class="col-md-5"><label class="col-form-label">Observaciones</label>     <asp:TextBox ID="o_feriado" runat="server" placeholder="Observaciones" class="form-control"></asp:TextBox></div>
                            
                                         </div>
                                    </div>
                                  <!--end-form-->
                                 
                                   <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="BtnAgregarFeriado" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="agregarFeriado_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                  <!--tabla-->
                                   <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Lista de feriados </h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVferiados" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
                                            </div>

                                        </div>
                                    </div>
                                  <!--fin tabla-->
                          
                             </div>                 
                    
                  </div> 
                        
                   </div>
                   <div class="col-lg-7">
                           
                          <!--bonos antiguedad-->
                        <div class="ibox ">
                            <div class="ibox-title"><h5>Bonos por antiguedad</h5></div>
                            
                              <div class="ibox-content">
                                  <!--form-->
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-md-6"><label class="col-form-label">Minimo años cumplidos</label >     <asp:TextBox ID="a_min" runat="server" placeholder="Minimo dias" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Máximo años cumplidos</label >     <asp:TextBox ID="a_max" runat="server" placeholder="Minimo dias" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Bono porcentaje</label >     <asp:TextBox ID="a_bono" runat="server" placeholder="Minimo dias" class="form-control"></asp:TextBox></div>
                                            <div class="col-md-6"><label class="col-form-label">Observaciones</label >     <asp:TextBox ID="a_obs" runat="server" placeholder="Minimo dias" class="form-control"></asp:TextBox></div>
                                            
                                    
                                  <!--end-form-->
                                 
                                             <div class="col-sm-12">
                                              <div class="hr-line-dashed"></div>
                                            <div class="row">
                                                <div class="hr-line-dashed"></div>
                                                <div class="form-group row" style="padding-left: 18px;">
                                                    <div class="col-sm-4 col-sm-offset-2">
                                                     <asp:Button ID="Button1" runat="server" Text="Guardar datos registrados" class="btn btn-primary btn-sm"  type="submit" OnClick="btnBonosAntiguedad_Click"/>
                                                        </div>
                                                 </div>
                                            </div>
                                        </div>
                                </div>

                                    </div>
                                  <div class="ibox">
                                        <div class="ibox-title">
                                            <h5>Lista de bonos por antiguedad</h5>                            
                                        </div>
                                        <div class="ibox-content">                            
                                            <div class="table-responsive">
                                                <asp:GridView ID="GVbonos" runat="server"   class="table table-hover table table-striped" GridLines="None">
                                            </asp:GridView>
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
