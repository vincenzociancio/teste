using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Locais_Inventario
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Contrato { get; set; }
        public string Local { get; set; }
        public string Descricao { get; set; }
        public string Tipo_local { get; set; }
        public string Processo_Adm { get; set; }
        public string CNPJ { get; set; }
        public string Unidade_Jur { get; set; }
        public string Fiel_nome { get; set; }
        public string Fiel_cpf { get; set; }
        public string SIGLA { get; set; }
        public Nullable<int> Ativo { get; set; }
        public string Centro_Custo { get; set; }
        public string Codigo_Contabil { get; set; }
        public Nullable<int> ACESSO_RF_ANGRA { get; set; }
        public string Setor { get; set; }
    }
}
