using MSBiblioteca.DAL;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public class ParametroFaturamento : ParametroFaturamentoDTO
    {
        ParametroFaturamentoDAL objDAL;

        public ParametroFaturamento()
        {
            this.objDAL = new ParametroFaturamentoDAL();
        }

        public bool ClienteTemParametroFaturamento(string importador)
        {
            return objDAL.ClienteTemParametroFaturamento(importador);
        }
    }
}
