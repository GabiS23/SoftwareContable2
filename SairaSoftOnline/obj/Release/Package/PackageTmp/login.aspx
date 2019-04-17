<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SairaSoftOnline.login"  EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    <div class="middle-box text-center loginscreen animated fadeInDown" style ="padding-top: 0px;">
        <div>
            <div>

        
                <h1 class="logo-name">SF</h1>

            </div>
            <h3>Bienvenido a SairaSoft</h3>
            <p>Fue perfectamente creado para su facilidad de manejo y la sencillez para realizar su trabajo.
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>          
            <form class="m-t" role="form" runat="server" >
                <div class="form-group">
                    <asp:TextBox ID="text_login" runat="server" class="form-control" placeholder="Username" required=""></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    
                    <asp:TextBox ID="text_login_pass" runat="server" type="password" class="form-control" placeholder="Password" required=""></asp:TextBox>
                </div>

                <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" type="submit" class="btn btn-primary block full-width m-b" OnClick="Button1_Click" Width="300px" />

                <a href="#"><small>Olvido su contraseña?</small></a>
                <p class="text-muted text-center"><small>Aún no tiene cuenta?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.html">Cree una cuenta</a>
            </form>
            <p class="m-t"> <small>SairaSoft.Online tiene derechos resevardos &copy; 2014</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
</asp:Content>
