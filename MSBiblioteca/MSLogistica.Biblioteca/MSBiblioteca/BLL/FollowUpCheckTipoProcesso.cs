using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class FollowUpCheckTipoProcesso : FollowUpCheckTipoProcessoDTO
    {
        FollowUpCheckTipoProcessoDAL objDal;

        public FollowUpCheckTipoProcesso()
        {
            this.objDal = new FollowUpCheckTipoProcessoDAL();
        }
        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool Incluir(FollowUpCheckTipoProcessoDTO obj)
        {
            return objDal.Incluir(obj);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool Excluir(FollowUpCheckTipoProcessoDTO obj)
        {
            return objDal.Excluir(obj);
        }
    }
}
