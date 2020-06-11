using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webII_practica2
{
    public partial class usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usu"] != null)
            {
                lbl_mensaje.Text += Session["Usu"].ToString();
            }
            else
            {
                Response.Redirect("login1.aspx");
            }
        }

        protected void btn_sesion_Click(object sender, EventArgs e)
        {
            Session["Usu"] = null;
            Response.Redirect("login1.aspx");
        }

        protected void Sumar_Btn_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Num1_Txt.Text);
            int b = Convert.ToInt32(Num2_Txt.Text);

            int numTotal = a + b;

            Respuesta.Text = numTotal.ToString();
        }

        protected void Restar_Btn_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Num1_Txt.Text);
            int b = Convert.ToInt32(Num2_Txt.Text);

            int numTotal = a - b;

            Respuesta.Text = numTotal.ToString();
        }

        protected void Multiplicar_Btn_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Num1_Txt.Text);
            int b = Convert.ToInt32(Num2_Txt.Text);

            int numTotal = a * b;

            Respuesta.Text = numTotal.ToString();
        }

        protected void Dividir_btn_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Num1_Txt.Text);
            int b = Convert.ToInt32(Num2_Txt.Text);

            int numTotal = a / b;

            Respuesta.Text = numTotal.ToString();
        }

        protected void btn_potencia_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Num1_Txt.Text);
            int b = Convert.ToInt32(Num2_Txt.Text);

            int numTotal = a * a;
            Respuesta.Text = numTotal.ToString();


        }

        protected void btn_raiz_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Num1_Txt.Text);
            int b = Convert.ToInt32(Num2_Txt.Text);

            
        }
    }
}