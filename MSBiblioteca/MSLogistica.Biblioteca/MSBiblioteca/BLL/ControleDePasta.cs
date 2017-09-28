using MSBiblioteca.DAL;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public class ControleDePasta : ControleDePastaDTO
    {
        ControleDePastaDAL objDal;

        public ControleDePasta()
        {
            this.objDal = new ControleDePastaDAL();
        }

        public bool Incluir(ControleDePasta obj)
        {
            return objDal.Incluir(obj);
        }
    }
}
