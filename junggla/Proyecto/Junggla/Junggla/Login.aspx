<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Junggla.Login" %>

<!DOCTYPE HTML>

<html>
<head>
    <title>Junggla</title>
    <link href="../Images/faviconBeta.icon" rel="shortcut icon" />
    <link rel="stylesheet" href="../Styles/principal/home.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../Styles/principal/osx.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../Styles/css/screen.css" type="text/css" media="screen, projection"/>
    <link rel="stylesheet" href="../Styles/css/print.css" type="text/css" media="print"/>  
    <!-- Load JavaScript files -->
    <script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type='text/javascript' src="/Scripts/jquery.simplemodal.js"></script>
    <script type='text/javascript' src="/Scripts/osx.js"></script>
   
   <script type="text/javascript">
       $(document).ready(function() {
           $('#btInvitacion').click(function(event) {
               $.ajax({
                   type: "POST",
                   url: "Login.aspx/InsertInvitacion",
                   data: "{'txtQuery': '" + $('#txtEMailInvitacion').val() + "'}",
                   contentType: "application/json; charset=utf-8",
                   dataType: "json",
                   success: function (msg) {
                       AjaxSucceeded(msg);

                   },
                   error: AjaxFailed
               });
           });
       });
       function AjaxSucceeded(result) {
           alert(result.d);
       }
       function AjaxFailed(result) {
           alert(result.status + ' ' + result.statusText);
       } 
    </script>
    
    
</head>
<body>
    <form id="form1" runat="server">
   
    <div id="cabecera">
   	    <div class="container">
      	<div class="span-10 last">
         	<div id="logo">
                <img alt="logojoophin"  src="../Images/cabecera/blanco-junggla.png" width="152px" height="36px"/>
			</div>
        </div>
        <div class="prepend-4 span-10 last">
            
                <div id="nav">
                       <asp:TextBox  placeholder="Email" CssClass="cajaTextoEmail" ID="txtEmail" runat="server" type="text"></asp:TextBox>
                       <asp:TextBox TextMode="Password" placeholder="Password" CssClass="cajaTextoPassword" ID="txtPassword" runat="server" type="text"></asp:TextBox>
                       
                       <ul>
                            <li><asp:CheckBox ID="chkRecuerdame" runat="server" Text="Recuerdame" /></li>
                            <li><a href="">¿Has olvidado tu contraseña?</a></li>
                       </ul>
      	        </div>
                <div id="divbotoLogin"><asp:ImageButton ID="btLogin" ImageUrl="~/Images/cabecera/botonLogin.png" runat="server" Width="55px" Height="25px"/></div>
            
      	          </div>
   	</div>
   </div>
    <div class="container">
        <div id="tituloPrincipal">
            <div class="span-24 last">
                   <span style="display:none;">The best way to discover a job</span>
                   <span style="display:block; text-align:center;" >La mejor manera de descubrir un puesto de trabajo</span>
             </div>
         </div>
        <div class="span-24 last">
                        <div class="span-12 last prepend-6">
                            <div id="titulodefinicion">
                                  <span>¿Qué es Junggla?</span>
                            </div>
                        </div>          
        </div>
         <div class="span-12 last prepend-3">
                <div id="tituloSignificado">
                    Junggla es el medio social que permite conseguir<br/>
                        empleos de la manera más rapida y divertida
                </div>
         </div>
         <div class="span-16 last prepend-12">
                 <div id="divicion">
                    <img alt="" src="../Images/cabecera/divicion.png" height="340px" width="3px"/>
                </div>
         </div>
         <div id="invitacion">
         ¿Quieres una Invitación?<span id="obtenerInvitacion"><a href="#" class='osx' onclick="closePopup(300)">Obtener</a></span>
         </div>
         <div id="divbotonEmpresa">
         <asp:Button CssClass="botonEmpresa" ID="btEmpresa" Text="Registrar Empresa" runat="server"/>
         </div>
         <div id="divAplicar">
                <div><img alt="" src="../Images/cabecera/loginAplicar.png"/></div><div id="TituloAplicar">Aplicar <br/><div id="definicionAplicar">Encuentra y Aplica en las mejores <span>ofertas de empleo en todo el mundo.</div></span></div>
         </div>
         <div id="divRecomendar">
                <div><img alt="" src="../Images/cabecera/loginRecomendar.png"/></div><div id="TituloAplicar">Recomendar<br/><div id="definicionAplicar">Recomienda y Comparte con tus amigos las ofertas más interesantes.</span></div></div>
         </div>
         <div id="divSeguir">
                <div><img alt="" src="../Images/cabecera/loginSeguir.png"/></div><div id="TituloAplicar">Seguir<br/><div id="definicionAplicar">Se el primero en enterarte de las oportunidades de las empresas.</span></div></div>
         </div>
         <div id="divOrganizar">
                <div><img alt="" src="../Images/cabecera/loginOrganizar.png"/></div><div id="TituloAplicar">Organizar<br/><div id="definicionAplicar">Gestiona  y Organiza tus entrevistas,enterate de los procesos via estadisticas</span></div></div>
         </div>
          <div id="divMovil">
                <div><img alt="" src="../Images/cabecera/loginMovil.png"/></div><div id="TituloAplicar">Móvil<br/><div id="definicionAplicar">Localiza todas las oportunidades disponible a tu alrededor</span></div></div>
         </div>
   </div>
    <div id="divpie">
   <div class="container">
      <div class="span-21">
         <%--	<div id="enlacespie">
					<a href=""> Acerca de </a>|<a href=""> Blog </a> | <a href="">API </a> | <a href="">Contacto</a> | <a href="">Privacidad</a> | <a href="">Terminos</a> | <a href="">Ayuda</a>
			</div>--%>
            <div id="enlacespie">
					<a href="">Contacto</a> | <a href="">Terminos del Servicios</a>
			</div>
            <div id="enlaceSiguenos">
					<span>Siguenos</span> <a href="">Facebook </a><span></span><a href=""> @Twitter </a> 
			</div>
      </div>
      <div class="span-3 last">
         © Junggla 2011
      </div>
   </div>
    </div>
    <!-- modal content -->
		<%--<div id="osx-modal-content">
			<div id="osx-modal-title">OSX Style Modal Dialog</div>
			<div class="close"><a href="#" class="simplemodal-close">x</a></div>
			<div id="osx-modal-data">
				<h2>Hello! I'm SimpleModal!</h2>
				<p>SimpleModal is a lightweight jQuery Plugin which provides a powerful interface for modal dialog development. Think of it as a modal dialog framework.</p>
				<p>SimpleModal gives you the flexibility to build whatever you can envision, while shielding you from related cross-browser issues inherent with UI development..</p>
				<p>As you can see by this example, SimpleModal can be easily configured to behave like an OSX dialog. With a handful options, 2 custom callbacks and some styling, you have a visually appealing dialog that is ready to use!</p>
				<p><button class="simplemodal-close">Close</button> <span>(or press ESC or click the overlay)</span></p>
			</div>
		</div>--%>
     
    <div id="osx-modal-content">
    <div id="osx-modal-title">Regístrese para obtener una invitación para unirse a Junggla</div>
    <div class="close"><a href="#" class="simplemodal-close">x</a></div>
    <div id="divMesanje"><asp:Label ID="lblmensaje" runat="server"></asp:Label></div>
    <div id="osx-modal-data">
        <div id="divInvitacion">
            <ul>
                <li><input type="text" class="required" style=" Height:31px; Width:308px;" placeholder="Email"  ID="txtEMailInvitacion"></asp:TextBox></li>
                <li><input type="button" ID="btInvitacion" class="botonInvitacion"  
                        value="Pedir Invitación"/></li>
                 </ul>

        </div>
    </div>
    </div>
    </form>
     
     <script>
         function testAttribute(element, attribute) {
             var test = document.createElement(element);
             if (attribute in test)
                 return true;
             else
                 return false;
         }

         if (!testAttribute("input", "placeholder")) {
             window.onload = function () {
                 var demo1 = document.getElementById("txtEmail");
                 var demo2 = document.getElementById("txtPassword");
                 var text_content1 = "Email";
                 var text_content2 = "Password";

                 demo1.style.color = "gray";
                 demo1.value = text_content1;
                 demo2.style.color = "gray";
                 demo2.value = text_content2;


                 demo1.onfocus = function () {
                     if (this.style.color == "gray")
                     { this.value = ""; this.style.color = "black" }
                 }

                 demo1.onblur = function () {
                     if (this.value == "")
                     { this.style.color = "gray"; this.value = text_content1; }
                 }

                 demo2.onfocus = function () {
                     if (this.style.color == "gray")
                     { this.value = ""; this.style.color = "black" }
                 }



                 demo2.onblur = function () {
                     if (this.value == "")
                     { this.style.color = "gray"; this.value = text_content2; }
                 }
             }
         }
</script> 
    
</body>

</html>
