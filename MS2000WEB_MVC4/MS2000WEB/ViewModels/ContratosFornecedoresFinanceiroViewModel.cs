using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class ContratosFornecedoresFinanceiroViewModel
    {
        public int id { get; set; }
        public string numero_contrato { get; set; }
        public DateTime? data { get; set; }
        public int fk_fornecedor { get; set; }
        public string Razao_Social { get; set; }
        //public string contato { get; set; }
        //public string email { get; set; }        
        //public string telefone { get; set; }
        public int Ano { get; set; }


        // Para o relatorio
        public int id_fornecedor { get; set; }
        public string Fantasia { get; set; }
        public string Endereco { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string CEP { get; set; }
        public string CNPJ { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }
        public string Contato { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
        public bool Ind_Qualidade { get; set; }
        public bool Ind_EmpresaResponsabilidade { get; set; }
        public bool Ind_Garantia { get; set; }
        public string Dias_Garantia { get; set; }
        public string responsavel_preenchimento { get; set; }
        public string UsuarioSoliciante { get; set; }
        public string UsuarioResponsavel { get; set; }
        public string Setor { get; set; }
        public string utilizacao { get; set; }
        public string uso { get; set; }
        public DateTime? data_vigencia_inicial { get; set; }
        public DateTime? data_vigencia_final { get; set; }
        public string prazo_cancelamento { get; set; }
        public string observacao { get; set; }
        public bool ind_contrato { get; set; }
        public bool ind_contrato_social { get; set; }
        public bool ind_cnpj { get; set; }
        public bool ind_certidao_receita { get; set; }
        public bool ind_certidao_fgts { get; set; }
        public bool ind_certidao_inss { get; set; }
        public bool ind_titularidade_bancaria { get; set; }
        public bool ind_politica_anticorrupcao { get; set; }
        public bool ind_outros_01 { get; set; }
        public string outros_01 { get; set; }
        public bool ind_outros_02 { get; set; }
        public string outros_02 { get; set; }
        public string cod_fornecedor { get; set; }
             

    }
}