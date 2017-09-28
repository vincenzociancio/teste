using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contratos_Fornecedores_Cadastrados_Financeiro
    {
        public Contratos_Fornecedores_Cadastrados_Financeiro()
        {
            this.Contratos_Fornecedores_Cadastrados_Upload = new List<Contratos_Fornecedores_Cadastrados_Upload>();
        }

        public int id { get; set; }
        public string numero_contrato { get; set; }
        public System.DateTime data { get; set; }
        public Nullable<int> fk_fornecedor { get; set; }
        public string contato { get; set; }
        public string email { get; set; }
        public string telefone { get; set; }
        public Nullable<System.DateTime> data_aprovacao { get; set; }
        public Nullable<System.DateTime> data_vigencia_inicial { get; set; }
        public Nullable<System.DateTime> data_vigencia_final { get; set; }
        public string observacao { get; set; }
        public string fk_usuario { get; set; }
        public bool lixo { get; set; }
        public string responsavel_preenchimento { get; set; }
        public string fk_usuario_solicitante { get; set; }
        public string fk_usuario_responsavel { get; set; }
        public string fk_setor { get; set; }
        public string utilizacao { get; set; }
        public string uso { get; set; }
        public string atende_requisito { get; set; }
        public string prazo_cancelamento { get; set; }
        public Nullable<bool> ind_contrato { get; set; }
        public Nullable<bool> ind_contrato_social { get; set; }
        public Nullable<bool> ind_cnpj { get; set; }
        public Nullable<bool> ind_certidao_receita { get; set; }
        public Nullable<bool> ind_certidao_fgts { get; set; }
        public Nullable<bool> ind_certidao_inss { get; set; }
        public Nullable<bool> ind_titularidade_bancaria { get; set; }
        public Nullable<bool> ind_politica_anticorrupcao { get; set; }
        public Nullable<bool> ind_outros_01 { get; set; }
        public string outros_01 { get; set; }
        public Nullable<bool> ind_outros_02 { get; set; }
        public string outros_02 { get; set; }
        public virtual ICollection<Contratos_Fornecedores_Cadastrados_Upload> Contratos_Fornecedores_Cadastrados_Upload { get; set; }
    }
}
