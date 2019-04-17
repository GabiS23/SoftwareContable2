<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro_uno.aspx.cs" Inherits="SairaSoftOnline.Registro_uno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


<span>Valor #1</span>
<input type="text" id="txt_campo_1" class="monto" onkeyup="sumar1();" />
<br/>

<span>Valor #2</span>
<input type="text" id="txt_campo_2" class="monto" onkeyup="sumar1();" />
<br/>

<span>Valor #3</span>
<input type="text" id="txt_campo_3" class="monto" onkeyup="sumar1();" />
<br/>

<span>El resultado es: </span> <span id="spTotal"></span>                                                    

    <script>

        function sumar1() {

            var total = 0;

            $(".monto").each(function () {

                if (isNaN(parseFloat($(this).val()))) {

                    total += 0;

                } else {

                    total += parseFloat($(this).val());

                }

            });

            //alert(total);
            document.getElementById('spTotal').innerHTML = total;

        }
    </script>
    


  
</asp:Content>
