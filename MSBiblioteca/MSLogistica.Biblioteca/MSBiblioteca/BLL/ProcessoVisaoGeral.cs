using MSBiblioteca.DAL;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public class ProcessoVisaoGeral : ProcessoVisaoGeralDTO
    {
        ProcessoVisaoGeralDAL objDAL;

        public ProcessoVisaoGeral()
        {
            this.objDAL = new ProcessoVisaoGeralDAL();
        }

        public bool AtualizadoZero(string processo)
        {
            return objDAL.AtualizadoZero(processo);
        }
    }
}
