using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace Junggla
{
    
    public partial class PopupInvitacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btInvitacion_Click(object sender, EventArgs e)
        {
            var htmlWriter = new HtmlTextWriter(Response.Output);
            //control.RenderControl(htmlWriter);
            Response.End();
        }

        [WebMethod]
        public static string RequestInvite(string email) {

            return "Hola mundo robinson"+ email;
        }
    }
}