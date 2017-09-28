
namespace MSBiblioteca.DTO
{
    public abstract class ParametroDTO
    {
        public string PKEmpresa { get; set; }
        public string PKFilial { get; set; }
        public string NumeradoProcessos { get; set; }
        public string NumeradorDocumentos { get; set; }
        public string EnderecoFtp { get; set; }
        public string UsuarioFtp { get; set; }
        public string SenhaFtp { get; set; }
        public string Host { get; set; }
        public string Versao { get; set; }
        public int AlertaAtualizacao { get; set; }
        public string Keycrypt { get; set; }
        public string HostSmtp { get; set; }
        public int PortaSmtp { get; set; }
        public string UsuarioSmtp { get; set; }
        public string SenhaSmtp { get; set; }
        public string NumeradorTransmittal { get; set; }
        public string PathServer { get; set; }
        public float AliqPisPasep { get; set; }
        public float AliqConfins { get; set; }
        public float AliqIcms { get; set; }
        public float AliqIcmsExtra { get; set; }
        public string NumeradorSolicitacaoCheques { get; set; }
        public string NumeradorSolicitacaoRegistro { get; set; }
        public string NumeradorSolicitacaoTracla { get; set; }
    }
}
