using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    public class RMBR : RMBR_DTO
    {
        RMBR_DAL objRMBR = new RMBR_DAL();

        public int Incluir(RMBR obj)
        {
            return objRMBR.Incluir(obj);
        }

        public bool Alterar(RMBR obj)
        {
            return objRMBR.Alterar(obj);
        }

        public bool Excluir(int pk_id)
        {
            return objRMBR.Excluir(pk_id);
        }

        public DataTable BuscarTodos()
        {
            return objRMBR.BuscarTodos();
        }

        public RMBR BuscarID(int pk_id)
        {
            return objRMBR.BuscarID(pk_id);
        }

        public List<RMBR> BuscarPorPeriodoData(DateTime data_ini, DateTime data_fin)
        {
            return objRMBR.BuscarPorPeriodoData(data_ini, data_fin);
        }
    }
}
