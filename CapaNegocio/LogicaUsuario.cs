using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDato;
using System.Data.Linq;

namespace CapaNegocio
{
    public class LogicaUsuario
    {
        //instanciar mi data contex
        public static DataClasses1DataContext dc = new DataClasses1DataContext();

        //crear metodo para retornar los datos
        public static List<Tbl_Usuario> obtenerUsuarios()
        {
            var lista = dc.Tbl_Usuario.Where(usu => usu.Usu_estado == 'A');
            return lista.ToList();
        }

        //metodo para verificar credenciales
        public static bool Autentificar(string nombre , string pass)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.Usu_estado == 'A'
            & usu.Usu_nomlogin.Equals(nombre) & usu.Usu_contraseña.Equals(pass));
            return auto;
        }

        //metodo para verificar usuario en espeficicos credenciales
        public static Tbl_Usuario Autentificarxlogin(string nombre, string pass)
        {
            var nlogin = dc.Tbl_Usuario.Single(usu => usu.Usu_estado == 'A' & usu.Usu_nomlogin.Equals(nombre)
             & usu.Usu_contraseña.Equals(pass));
            return nlogin;
        }

        //autentificar cedula
        public static bool autentificarced(string ced)
        {
            var autoc = dc.Tbl_Usuario.Any(usu => usu.Usu_cedula.Equals(ced));
            return autoc;
        }

        //crear metodo para verificar el nombre login
        public static bool autentificarNom(string nombre)
        {
            var auton = dc.Tbl_Usuario.Any(usu => usu.Usu_estado == 'A' &
              usu.Usu_nomlogin.Equals(nombre));
            return auton;
        }

        //metodo para guardar datos
        public static void save(Tbl_Usuario usuarios)
        {
            try
            {
                //guardar la informacion quemada
                usuarios.Usu_estado = 'A';
                usuarios.Usu_fechacreacion = DateTime.Now;
                //guardamos el objeto en la base de datos
                dc.Tbl_Usuario.InsertOnSubmit(usuarios);
                dc.SubmitChanges();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardado </br>"+ ex.Message);
            }
        }
        
        //metodo recuperar
        public static bool recuperar(string nombre )
        {
            var nombrelo = dc.Tbl_Usuario.Any(usu => usu.Usu_nomlogin.Equals(nombre));

            dc.SubmitChanges();
            return nombrelo;
        }
         
       

    }
}
