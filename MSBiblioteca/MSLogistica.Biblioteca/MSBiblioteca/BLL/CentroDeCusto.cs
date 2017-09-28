using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    public class CentroDeCusto : CentroDeCustoDTO
    {
        CentroDeCustoDAL objDal = new CentroDeCustoDAL();

        public List<CentroDeCusto> BuscarTodos()
        {
            return objDal.BuscarTodos();
        }
    }
}
