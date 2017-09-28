using MSBiblioteca.DTO;
using MSBiblioteca.DAL;


namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe ItensFaturaRateio
    /// Esta classe é acessório para a classe ItensFatura em alguns momentos faz-se necessário atualizar os campos respectivos ao rateio
    /// Este rateio é executado na tela de acréscimos qrUpItens (acRateioExecute) e DI/DSI(Rateio2)
    /// </summary>
    public sealed class ItensFaturaRateio : ItensFaturaRateioDTO
    {
        public bool AlterarItensFaturaRateio(ItensFaturaRateioDTO ParametroRateio)
        {
            ItensFaturaRateioDAL obj = new ItensFaturaRateioDAL();
            return obj.AlterarItensFaturaRateio(ParametroRateio);
        }
        public bool AlterarItensFaturaRateio_Acrescimos(ItensFaturaRateioDTO ParametroRateio)
        {
            ItensFaturaRateioDAL obj = new ItensFaturaRateioDAL();
            return obj.AlterarItensFaturaRateio_Acrescimos(ParametroRateio);
        }
        
    }
}
