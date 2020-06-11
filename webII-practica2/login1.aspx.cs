using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using System.Data.Linq;
using CapaDato;
namespace webII_practica2
{
    public partial class login1 : System.Web.UI.Page
    {
        int contador = 3;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["cont"] = 0;
            }
            Session["con"] = Session["conantiguo"];
            Session.Timeout = 1;
        }

        //metodo para ingresar
        public void ingresar()
        {
            
            label2.Visible = false;
            if (string.IsNullOrEmpty(txt_nombre.Text))
            {
                label2.Visible = true;
                label2.Text = "Ingrese su nombre de login";
                return;
            }
            if (string.IsNullOrEmpty(txt_pass.Text))
            {
                label2.Visible = true;
                label2.Text = "Ingrese su clave";
            }


            if (CapaNegocio.LogicaUsuario.autentificarNom(txt_nombre.Text))
            {
                if (CapaNegocio.LogicaUsuario.Autentificar(txt_nombre.Text, txt_pass.Text))
                {
                    Tbl_Usuario usuarioo = new Tbl_Usuario();
                    usuarioo = CapaNegocio.LogicaUsuario.Autentificarxlogin(txt_nombre.Text, txt_pass.Text);


                    if (CapaNegocio.LogicaUsuario.Autentificarxlogin(txt_nombre.Text, txt_pass.Text).Tusu_id == 1)
                    {
                        Session["Admin"] = txt_nombre.Text;
                        Response.Redirect("administrador.aspx");
                    }
                    else
                    {
                        Session["Usu"] = txt_nombre.Text;
                        Response.Redirect("usuario.aspx");
                    }
                }
                else
                {
                    if (int.Parse(Session["cont"].ToString()) < 3)
                    {
                        Session["cont"] = int.Parse(Session["cont"].ToString()) + 1;
                        label2.Text = "Usuario o contraseña incorrecta";
                        label1.Text= "Le quedan" + (contador - (Convert.ToInt32(Session["cont"]))).ToString()+   "Intentos";
                        label2.Visible = true;
                    }
                    else
                    {
                        btn_ingreso.Enabled = false;
                        label2.Text = "Su cuenta se ha bloqueado";
                        label2.Visible = true;
                    }
                }

            }
            else
            {
                label2.Visible = true;
                label2.Text = "Usuario no existente";
                return;

            }
        }
        protected void btn_ingreso_Click(object sender, EventArgs e)
        {
            ingresar();
        }

        protected void btn_olvido_Click(object sender, EventArgs e)
        {

        }
    }
}