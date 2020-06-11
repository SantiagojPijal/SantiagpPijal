using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using CapaDato;
using CapaNegocio;

namespace webII_practica2
{
    public partial class registroUsu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                verdatos();
            }
        }

        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(txt_pass.Text);
            string pass = Convert.ToBase64String(encryted);
              
            var inr = new Tbl_Usuario
            {
              
                Usu_cedula = txt_ced.Text,
                Usu_nombre = txt_nom.Text,
                Usu_apellido = txt_ape.Text,
                Usu_direccion = txt_dirr.Text,
                Usu_fechacreacion = DateTime.Now,
                Usu_contraseña = pass,
                Usu_nomlogin = txt_us.Text,
                Usu_estado = 'A',
                Tusu_id = int.Parse(txt_tipo.Text),
                
            Usu_correo = txt_correo.Text
            };
            db.Tbl_Usuario.InsertOnSubmit(inr);
            db.SubmitChanges();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Se Agrego con exito');", true);
            verdatos();
        }
        void verdatos()
        {
            var ver = from s in db.Tbl_Usuario select s;
            verusu.DataSource = ver;
            verusu.DataBind();
        }

        protected void lnk_ver_Click(object sender, EventArgs e)
        {

        }
    }
}