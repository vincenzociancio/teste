using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;

namespace Repetro.Web.Controllers
{
    public class ListaDeClientesController : Controller
    {
        // GET: ListaDeClientes
        public ActionResult Index(string tipo_usuario_web, string usuario, string cnpj_grupo)
        {
            var sql = "SELECT Max(I.Razao_Social) AS Razao_Social, I.CGC_CPF " +
                      "FROM Importadores I " +
                      "WHERE I.CGC_CPF <> '' ";

            if (tipo_usuario_web == "EMPRESA")
            {
                sql += "AND Exists(SELECT * FROM UsuariosGrupo U WHERE U.CGC_CPFvinculado = I.CGC_CPF " +
                            "AND U.CGC_CPF = '" + cnpj_grupo + "' AND U.Usuario = '" + usuario + "' ) ";
            }

            using (var conn = new SqlConnection())
            {
                using (var cmd = new SqlCommand(sql, conn))
                {

                }
            }

            return View();
        }
    }
}