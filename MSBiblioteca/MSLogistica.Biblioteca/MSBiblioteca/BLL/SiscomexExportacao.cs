using MSBiblioteca.DAL;
using MSBiblioteca.DTO.SiscomexExpotacao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.BLL
{
    public class SiscomexExportacao : MSBiblioteca.DTO.SiscomexExpotacao.registro_exportacao
    {
        SiscomexExportacaoDAL objDAL = new SiscomexExportacaoDAL();

        public SiscomexExportacao()
        {

        }

        public registro_exportacao BuscarLote(string processo)
        { 
            return objDAL.BuscarLote(processo);
        }
    }
}
