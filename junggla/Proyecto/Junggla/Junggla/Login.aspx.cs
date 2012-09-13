using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.Services;
using System.Web.Script.Services;

namespace Junggla
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //public void ProcessRequest(HttpContext context)
        //{
        //    context.Response.ContentType = "application/json";

        //    DateTime dateStamp = DateTime.Parse((string)Request.Form["dateStamp"]);
        //    string stringParam = (string)Request.Form["stringParam"];

        //    // Your logic here

        //    string json = "{ \"responseDateTime\": \"hello hello there!\" }";
        //    context.Response.Write(json);
        //}

        protected void btInvitacion_Click(object sender, EventArgs e)
        {}

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string InsertInvitacion(string txtQuery){
            Login login = new Login();
             //HttpContext.Current.Request  request;
            string txtEMailInvitacion = txtQuery; // (string)Request.Form["txtEMailInvitacion"];
            string EmailInvitacion = txtEMailInvitacion; //"hola@hotmail.com";
            string mesanje = string.Empty ;
            if (EmailInvitacion != null)
            {
                if (login.email_bien_escrito(EmailInvitacion))
                {

                    //Comprobar que el email ya este dado de alta como invitacion 

                    //If la invitacion ha sido insertada envia mensaje de correctamente
                    //Else de lo contrario envia mensaje Error
                    mesanje = "Se ha insertado correctamente";
                }
                else
                {

                    //if el correo no esta validado enviar 
                    mesanje = "No es un Correo valido";
                }
            }
            else {
                mesanje = "";
            }
            return mesanje;
        }

     

        /// <summary>
        /// Validar correo Electronico
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        private Boolean email_bien_escrito(String email)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

    }
}