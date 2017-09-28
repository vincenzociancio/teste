using MSBiblioteca.DAL;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public class ProcessoImposto : ProcessoVisaoGeralDTO
    {
        ProcessoImpostoDAL objDAL;

        public ProcessoImposto()
        {
            this.objDAL = new ProcessoImpostoDAL();
        }

        public bool AtualizadoZero(string processo)
        {
            return objDAL.AtualizadoZero(processo);
        }
    }
}
