using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Web.UI;

namespace MSBiblioteca.BLL
{
    public class TipoDeProcesso : TipoDeProcessoDTO
    {
        TipoDeProcessoDAL objDAL = new TipoDeProcessoDAL();

        public TipoDeProcesso()
        {

        }

        public TipoDeProcesso(string codigo, string descricao)
            : base(codigo, descricao)
        {

        }

        /// <summary>
        /// Retornar um DataTable com os dados para carga de um Grid ou um Combo
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarTodos()
        {            
            return objDAL.BuscarTodos();
        }
    }
}
