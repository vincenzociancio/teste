
namespace MSBiblioteca.DTO
{
    public class TipoDeProcessoDTO
    {
        public TipoDeProcessoDTO()
        {
        }

        public TipoDeProcessoDTO(string codigo, string descricao)
        {
            this.Codigo = codigo;
            this.Descricao = descricao;
        }

        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public int Ativo { get; set; }
        public string ResponsavelEmpresaComercial { get; set; }
        public string ResponsavelEmpresaOperacional { get; set; }
        public string ResponsavelEmpresaFinanceiro { get; set; }
    }
}
