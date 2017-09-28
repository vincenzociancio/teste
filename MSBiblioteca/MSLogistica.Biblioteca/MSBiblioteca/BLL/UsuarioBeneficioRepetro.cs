using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe UsuariosBeneficioRepetro
    /// </summary>
    public sealed class UsuarioBeneficioRepetro : UsuarioBeneficioRepetroDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos UsuariosBeneficioRepetro
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            UsuarioBeneficioRepetroDAL usuariosbeneficiorepetroDAL = new UsuarioBeneficioRepetroDAL();
            return usuariosbeneficiorepetroDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com o UsuariosBeneficioRepetro filtrando pelo usuario
        /// </summary>
        /// <param name="Usuario">Filtro pelo usuario</param>
        /// <returns></returns>
        public DataTable BuscarUsuario(string Usuario)
        {
            UsuarioBeneficioRepetroDAL usuariosbeneficiorepetroDAL = new UsuarioBeneficioRepetroDAL();
            return usuariosbeneficiorepetroDAL.BuscarUsuario(Usuario);
        }
        /// <summary>
        /// Retornar um DataTable com o campo usuário
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarTodosUsuarios()
        {
            UsuarioBeneficioRepetroDAL usuariosbeneficiorepetroDAL = new UsuarioBeneficioRepetroDAL();
            return usuariosbeneficiorepetroDAL.BuscarTodosUsuario();
        }
    }
}
