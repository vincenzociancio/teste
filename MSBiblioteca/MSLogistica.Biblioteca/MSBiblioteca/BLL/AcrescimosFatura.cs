using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    public sealed class AcrescimosFatura : AcrescimosFaturaDTO
    {
        private AcrescimosFaturaDAL objDAL = null;

        public AcrescimosFatura()
        {
            objDAL = new AcrescimosFaturaDAL();
        }
        public List<AcrescimosFatura> BuscarPorProcesso(string Processo)
        {
            AcrescimosFaturaDAL AcrescimosFatura = new AcrescimosFaturaDAL();
            return AcrescimosFatura.BuscarPorProcesso(Processo);
        }
        public DataTable BuscarPorProcessoEFatura(string Processo, string Fatura)
        {
            AcrescimosFaturaDAL AcrescimosFatura = new AcrescimosFaturaDAL();
            return AcrescimosFatura.BuscarPorProcessoEFatura(Processo, Fatura);
        }
        public bool Incluir(AcrescimosFaturaDTO obj)
        {
            return objDAL.Incluir(obj);
        }
        public bool Alterar(AcrescimosFaturaDTO obj)
        {
            return objDAL.Alterar(obj);
        }
        public bool Excluir(AcrescimosFaturaDTO obj)
        {
            return objDAL.Excluir(obj);
        }     
        

    }
}
