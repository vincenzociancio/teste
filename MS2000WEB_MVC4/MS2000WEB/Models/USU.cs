using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class USU
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
        public string Nome_Completo { get; set; }
        public string Diretorio_SISCOMEX { get; set; }
        public string Nivel { get; set; }
        public string Nivel_ccorrente { get; set; }
        public Nullable<System.DateTime> Data_validade_senha { get; set; }
        public string Email { get; set; }
        public Nullable<int> Email_Sol_Num { get; set; }
        public Nullable<int> Email_aviso_oper { get; set; }
        public Nullable<int> Email_aviso_finan { get; set; }
        public Nullable<int> Email_aviso_diretoria { get; set; }
        public Nullable<int> Email_aviso_sistema { get; set; }
        public Nullable<int> Distribui_processo { get; set; }
        public Nullable<int> Abre_processos { get; set; }
        public Nullable<int> Edita_eventos { get; set; }
        public Nullable<int> Digitalizador { get; set; }
        public Nullable<int> Traduz_Classifica { get; set; }
        public Nullable<int> Inativa_Cliente { get; set; }
        public Nullable<int> Edita_cliente_inativo { get; set; }
        public Nullable<int> Fecha_Processo { get; set; }
        public Nullable<int> Edita_Processo_Fechado { get; set; }
        public Nullable<int> Acessa_Patrimonio { get; set; }
        public string Supervisor { get; set; }
        public Nullable<int> Acessa_PARAFAT { get; set; }
        public Nullable<int> Desconto_Faturamento { get; set; }
        public Nullable<int> Responsavel { get; set; }
        public Nullable<int> Distribui_processoC { get; set; }
        public Nullable<int> ResponsavelC { get; set; }
        public string SupervisorC { get; set; }
        public string Setor { get; set; }
    }
}
