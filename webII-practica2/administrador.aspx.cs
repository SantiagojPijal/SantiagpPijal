using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webII_practica2
{
    public partial class administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                lbl_mensaje.Text += Session["admin"].ToString();
            }
            else
            {
                Response.Redirect("login1.aspx");
            }
        }

        protected void btn_sesion_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("login1.aspx");
        }
    }
}