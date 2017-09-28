using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    public class Supervisor : SupervisorDTO
    {
        SupervisorDAL superDal = null;

        public Supervisor()
        {
            this.superDal = new SupervisorDAL();
        }

        public Supervisor(string usuario, string nome)
            : base(usuario, nome)
        {

        }

        public Supervisor BuscarID(string codigo)
        {
            return superDal.BuscarID(codigo);
        }

        public List<Supervisor> BuscarTodos(bool SomenteRegistrosAtivos = true)
        {
            return superDal.BuscarTodos(SomenteRegistrosAtivos);
        }
    }
}
