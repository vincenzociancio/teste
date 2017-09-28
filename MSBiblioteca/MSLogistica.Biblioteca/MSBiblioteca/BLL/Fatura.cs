using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Collections.Generic;
using System.Text;

namespace MSBiblioteca.BLL
{
    public class Fatura : FaturaDTO
    {
        private FaturaDAL objDAL = null;

        public Fatura()
        {
            if (this.objDAL == null)
            {
                objDAL = new FaturaDAL();
            }
        }

        /// <summary>
        /// Retornar um DataTable com os dados para carga no Grid
        /// </summary>
        /// <returns></returns>
        public DataTable CarregarGridFaturas(string Processo)
        {
            FaturaDAL FaturaDAL = new FaturaDAL();
            return FaturaDAL.CarregarGridFaturas(Processo);
        }

        public DataTable BuscarPorProcesso(string Processo)
        {
            FaturaDAL FaturaDAL = new FaturaDAL();
            return FaturaDAL.BuscarPorProcesso(Processo);
        }

        /// <summary>
        /// Retornar um DataTable com os dados da Fatura passando por parametro o processo e a fatura
        /// <param name="Codigo">Filtro pelo prpocesso e a fatura</param>      
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarPorProcessoEFatura(string Processo, string Fatura)
        {
            FaturaDAL FaturaDAL = new FaturaDAL();
            return FaturaDAL.BuscarPorProcessoEFatura(Processo, Fatura);
        }

        public DataTable BuscarPorFatura(string Fatura)
        {
            FaturaDAL FaturaDAL = new FaturaDAL();
            return FaturaDAL.BuscarPorFatura(Fatura);
        }
        /// <summary>
        /// Metodo para alterar uma Fatura.
        /// </summary>
        /// <param name="FaturasDTO">Classe Fatura.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(FaturaDTO obj)
        {
            return objDAL.Alterar(obj);
        }

        public bool Excluir(FaturaDTO obj)
        {
            return objDAL.Excluir(obj);
        }

        public bool Incluir(FaturaDTO obj)
        {
            return objDAL.Incluir(obj);
        }

        public List<ItensFatura> BuscarItensDaFatura(string pk_processo, string pk_fatura)
        {
            return objDAL.BuscarItensDaFatura(pk_processo, pk_fatura);
        }

        public List<ItensFatura> BuscarItensDaFatura(string pk_processo)
        {
            return objDAL.BuscarItensDaFatura(pk_processo);
        }

        public override List<ItensFatura> ItensFatura
        {
            get
            {
                return this.BuscarItensDaFatura(this.Processo, this.Codigo);
            }
            set
            {
                base.ItensFatura = value;
            }
        }

        public Exportador BuscarExpotador(string codigo)
        {
            return objDAL.BuscarExportador(codigo);
        }

        public override Exportador Exportador
        {
            get
            {
                return this.BuscarExpotador(this.FK_Exportador);
            }
            set
            {
                base.Exportador = value;
            }
        }

        public decimal ObterTotalDoFrete(string processo, string fatura)
        {
            return objDAL.ObterTotalDoFrete(processo, fatura);
        }
    }
}
