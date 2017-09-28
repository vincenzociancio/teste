using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    public class AcessoAcaoEspecificaGrupo:AcessoAcaoEspecificaGrupoDTO
    {
        readonly AcessoAcaoEspecificaGrupoDAL _objDal;
        
        public AcessoAcaoEspecificaGrupo()
        {
            this._objDal = new AcessoAcaoEspecificaGrupoDAL();
        }

        public List<AcessoAcaoEspecificaGrupoDTO> BuscarAcaoEspecificaGrupoFK(int FK_Grupo)
        {
            return _objDal.BuscarAcaoEspecificaGrupoFK(FK_Grupo);
        }

        /// <summary>
        /// Metódo para alterar a ação específica
        /// </summary>
        /// <param name="obj">Objeto AcessoAcaoEspecificaGrupo</param>
        /// <returns>bool</returns>
        public bool Alterar(AcessoAcaoEspecificaGrupoDTO obj)
        {
            return _objDal.Alterar(obj);
        }
    }
}
