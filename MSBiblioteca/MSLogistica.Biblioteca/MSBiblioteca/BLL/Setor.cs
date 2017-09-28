using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class Setor : SetorDTO
    {
        SetorDAL setoresDal = null;

        public Setor()
        {
            this.setoresDal = new SetorDAL();
        }

        public Setor(string codigo, string descricao)
            : base(codigo, descricao)
        {

        }

        /// <summary>
        /// Método para buscar um lista de setores
        /// </summary>
        /// <param name="SomenteRegistrosAtivos"></param>
        /// <returns>Lista setores</returns>
        public List<Setor> BuscarTodos(bool SomenteRegistrosAtivos = true)
        {
            return setoresDal.BuscarTodos(SomenteRegistrosAtivos);
        }

        /// <summary>
        /// Método para buscar um setor 
        /// </summary>
        /// <param name="codigo">Código do setor</param>
        /// <returns>Setor</returns>
        public Setor BuscarID(string codigo)
        {
            return setoresDal.BuscarID(codigo);
        }
    }
}
