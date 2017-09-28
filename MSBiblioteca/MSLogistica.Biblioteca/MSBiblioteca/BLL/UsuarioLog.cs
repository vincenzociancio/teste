using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    public sealed class UsuarioLog : UsuarioLogDTO
    {
        /// <summary>
        /// Metodo para Incluir um log do usuário.
        /// </summary>
        /// <param name="usuarioLogDTO">Classe usuarioLogDTO preenchidas, somente o campo PkUsuarioLog vazio.</param>
        /// <returns>Boolean</returns>
        public bool Incluir(UsuarioLogDTO usuarioLogDTO)
        {
            //Fazendo as validações nos campos
            if (usuarioLogDTO.FkUsuario < 1 )
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (usuarioLogDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            UsuarioLogDAL objDAL = new UsuarioLogDAL();
            return objDAL.Incluir(usuarioLogDTO);
        }
    }
}
