using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.BLL
{
    class TipoNumerarioObrigatorio : TipoNumerarioObrigatorioDTO
    {
        TipoNumerarioObrigatorioDAL objDAL;

        public TipoNumerarioObrigatorio()
        {
            this.objDAL = new TipoNumerarioObrigatorioDAL();
        }
    }
}
