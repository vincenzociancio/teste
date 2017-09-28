using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.BLL
{
    public class AcessoAcaoEspecifica : AcessoAcaoEspecificaDTO
    {
        readonly AcessoAcaoEspecificaDAL _objDal = null;

        public AcessoAcaoEspecifica()
        {
            _objDal = new AcessoAcaoEspecificaDAL();
        }

        /// <summary>
        /// Incluir ação especifica
        /// </summary>
        /// <param name="obj">Classe Acão Especifica</param>
        /// <returns>bool</returns>
        public bool Incluir(AcessoAcaoEspecificaDTO obj)
        {
            return _objDal.Incluir(obj);
        }

        /// <summary>
        /// Verifica se o objeto existe 
        /// </summary>
        /// <param name="chaveBusca">Chave para busca</param>
        /// <param name="id">out int</param>
        /// <returns>bool</returns>
        public bool Existe(string chaveBusca, out int id)
        {
            return _objDal.Existe(chaveBusca, out id);
        }

        /// <summary>
        /// Obter o ID do objeto
        /// </summary>
        /// <param name="chaveBusca">Chave para busca</param>
        /// <returns>bool</returns>
        public int BuscarId(string chaveBusca)
        {
            return _objDal.BuscarId(chaveBusca);
        }

    }
}
