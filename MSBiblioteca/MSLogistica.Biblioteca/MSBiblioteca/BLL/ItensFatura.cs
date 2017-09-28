using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System.Data;

namespace MSBiblioteca.BLL
{
    public class ItensFatura : ItensFaturaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a soma do valor total, soma do peso total e soma peso acertado dos itens da fatura.
        /// Utilizado para acréscimo (Tela de Acréscimo)
        /// </summary>
        /// <returns></returns>
        public DataTable SomaItensFatura(string Processo, string Fatura)
        {
            ItensFaturaDAL itensfaturaDAL = new ItensFaturaDAL();
            return itensfaturaDAL.SomaItensFatura(Processo, Fatura);
        }
    }
}
