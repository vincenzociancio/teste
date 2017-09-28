using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace MSBiblioteca.BLL
{
    public class ProcessoTipoUrgencia : ProcessoTipoUrgenciaDTO
    {
        ProcessoTipoUrgenciaDAL objDAL = new ProcessoTipoUrgenciaDAL();

        public DataTable BuscarTodos()
        {
            return objDAL.BuscarTodos();
        }
    }
}
