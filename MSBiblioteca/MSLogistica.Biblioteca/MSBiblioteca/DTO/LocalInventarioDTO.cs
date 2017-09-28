
namespace MSBiblioteca.DTO
{
    public abstract class LocalInventarioDTO
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Contrato { get; set; }
        public string Local { get; set; }
        public string Descricao { get; set; }
        public string TipoLocal { get; set; }
        public string ProcessoAdm { get; set; }
        public string CNPJ { get; set; }
        public string UnidadeJur { get; set; }
        public string FielNome { get; set; }
        public string Sigla { get; set; }
        public int Ativo { get; set; }
        public string CentroCusto { get; set; }
        public string CodigoContabil { get; set; }
        public int AcessoRFAngra { get; set; }
        public string Setor { get; set; }
    }
}
