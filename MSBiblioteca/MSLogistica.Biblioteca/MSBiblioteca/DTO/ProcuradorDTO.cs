
namespace MSBiblioteca.DTO
{
    public abstract class ProcuradorDTO
    {
        public string PKEmpresa { get; set; }
        public string PKFilial { get; set; }
        public string PKCodigo { get; set; }
        public string RazaoSocial { get; set; }
        public string Pais { get; set; }
        public string CgcCpf { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string CEP { get; set; }
        public string UF { get; set; }
        public string Estado { get; set; }
        public string Registro { get; set; }
        public string Telefone { get; set; }
        public int ExibeComplementares { get; set; }
        
    }
}
