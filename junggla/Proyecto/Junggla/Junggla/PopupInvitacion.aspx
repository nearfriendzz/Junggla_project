<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopupInvitacion.aspx.cs" Inherits="Junggla.PopupInvitacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript" src="Scripts/jquery-1.4.1-vsdoc.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script type="text/javascript" src="http://code.google.com/p/jqueryjs/source/browse/trunk/plugins/validate/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="../Styles/principal/home.css" type="text/css" media="screen"/>
     <script type = "text/javascript">
        jQuery(document).ready(function() {
            $('#btInvitacion').click(function() {
                var invitacion = $('#txtEMailInvitacion').val();
                
                if (invitacion != '')
                    sendDataAjax(invitacion);
            });
        });
 
        function sendDataAjax(invitacion) {
            var actionData = "{'invitacion': '" + invitacion + "'}";
           
            $.ajax(
            {
                url: "PopupInvitacion.aspx/RequestInvite",
                data: actionData,
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                success: function (msg) { alert(result.statusText); },
                error: function(result) {
                    alert("ERROR " + result.status + ' ' + result.statusText);
                }
            });        
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Regístrese para obtener una invitación para unirse a Junggla</h2>
    <div id="divMesanje"></div>
        <div id="divInvitacion">
            <ul>
                <li><asp:TextBox CssClass="required" runat="server"  placeholder="Email"  ID="txtEMailInvitacion"  Height="31px" Width="308px"></asp:TextBox></li>
                <li><asp:Button ID="btInvitacion" CssClass="botonInvitacion" runat="server" 
                        Text="Pedir Invitación" Height="34px" Width="145px" 
                        onclick="btInvitacion_Click"/></li>
            </ul>

        </div>
    </div>
    </form>
</body>
</html>
