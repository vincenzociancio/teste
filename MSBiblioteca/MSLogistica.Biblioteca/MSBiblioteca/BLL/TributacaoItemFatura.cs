using MSBiblioteca.DTO;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class TributacaoItemFatura : TributacaoItemFaturaDTO
    {
        TributacaoItemFaturaDAL objDAL;

        public TributacaoItemFatura()
        {
            this.objDAL = new TributacaoItemFaturaDAL();
        }

        public bool ExisteTributacao(string processo)
        {
            return objDAL.ExisteTributacao(processo);
        }
    }
}
