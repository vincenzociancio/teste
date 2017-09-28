
using MSBiblioteca.BLL;
using System.Collections.Generic;

namespace MSBiblioteca.DTO
{
    public abstract class ImportadorDTO
    {
        public string Codigo { get; set; }
        public string RazaoSocial { get; set; }
        public string Pais { get; set; }
        public string CnpjCpfCompleto { get; set; }
        public string CgcCpf { get; set; }
        public string TipoImportador { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string Cep { get; set; }
        public string Uf { get; set; }
        public string Estado { get; set; }
        public string InscricaoEstadual { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string ContaCorrente { get; set; }
        public int ContaCorrenteRegistro { get; set; }
        public int ContaCorrenteDeposito { get; set; }
        public string Link { get; set; }
        public string Cae { get; set; }
        public string Telefone { get; set; }
        public int Ativo { get; set; }
        public int AcessoWebMSLogistica { get; set; }
        public int AcessoWebCliente { get; set; }
        public int AcessoWebReceita { get; set; }
        public int BaseIcms { get; set; }
        public int MovimentacaoRepetro { get; set; }
        public string InscricaoMunicipal { get; set; }
        public string Email { get; set; }
        public int FaturaIss { get; set; }
        public string EmailMonitoracao { get; set; }
        public int ExportaParaSiscomex { get; set; }
        public int ApencLiberado { get; set; }
        public int Lixo { get; set; }


        //Navegabilidade
        public virtual IList<Plataforma> Plataforma { get; set; }
        public virtual IList<Contrato> Contrato { get; set; }

    }
}
