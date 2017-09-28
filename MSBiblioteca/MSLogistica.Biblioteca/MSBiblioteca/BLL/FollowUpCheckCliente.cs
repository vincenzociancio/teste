using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class FollowUpCheckCliente : FollowUpCheckClienteDTO
    {
        FollowUpCheckClienteDAL objDal;

        public FollowUpCheckCliente()
        {
            this.objDal = new FollowUpCheckClienteDAL();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool Incluir(FollowUpCheckClienteDTO obj)
        {
            return objDal.Incluir(obj);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool Excluir(FollowUpCheckClienteDTO obj)
        {
            return objDal.Excluir(obj);
        }
    }
}
