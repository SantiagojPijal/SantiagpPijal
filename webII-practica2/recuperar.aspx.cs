using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDato;
using CapaNegocio;
using SimpleCrypto;
using System.Configuration;
using System.Net.Mail;
using System.Net;
namespace webII_practica2
{
    public partial class recuperar : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void btn_recu_Click(object sender, EventArgs e)
        {
            string nomlo = txt_nomlo.Text.Trim();
            var nombrelo = dc.Tbl_Usuario.Where(usu => usu.Usu_nomlogin== nomlo).FirstOrDefault();
            if (nombrelo != null)
            {
                ICryptoService cryptoService = new PBKDF2();
                string contranueva = RandomPassword.Generate(10, PasswordGroup.Lowercase, PasswordGroup.Uppercase);
                maail(nombrelo.Usu_correo, contranueva);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Se envio conexito');", true); ;
                
            }
            else
            {
                label2.Visible = true;
                label2.Text = "Usuario no existente";
                return;
            }
        }
        DataClasses1DataContext db = new DataClasses1DataContext();

        public void maail(string mail, string nueva)
        {
            string correoadmin = ConfigurationManager.AppSettings["correoElectronico"].ToString();
            string contraseñadmin = ConfigurationManager.AppSettings["contraseñacorreo"].ToString();

            string asusnto = "Recuperar contraseña de la aplicacion Santiago S.A";
            string body = "Su nueva contraseña para ingresar es: "+ nueva ;

            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(correoadmin, contraseñadmin);
               
            }
            try
            {
                smtp.Send(correoadmin, mail, asusnto, body);
            }
            catch (Exception ex)
            {

              ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Se Agrego con exito');", true); ;
            }
        }
    }

}
