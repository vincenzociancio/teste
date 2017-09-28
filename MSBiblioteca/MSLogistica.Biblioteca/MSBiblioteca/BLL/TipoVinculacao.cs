using MSBiblioteca.DTO;
using System.Data;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public sealed class TipoVinculacao: TipoVinculacaoDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos tipos_vinculacao da tabela 
        /// </summary>
        /// <returns>DataTable</returns
        public DataTable Listar()
        {
            /// Instânciando
            TipoVinculacaoDAL objDAL = new TipoVinculacaoDAL();
            DataTable objTable = null;

            objTable = objDAL.Listar();

            return objTable;
        }
    }
}
