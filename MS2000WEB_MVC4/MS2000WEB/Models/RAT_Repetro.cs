using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RAT_Repetro
    {
        public int ID { get; set; }        
        public string FK_Processo { get; set; }
        public string Nome_Empresa_Estrangeira { get; set; }
        public string Endereco_Empresa_Estrangeira { get; set; }
        public int Enquadramento_Pedido { get; set; }
        public string FK_Fundamentacao { get; set; }
        public int Finalidade { get; set; }
        public string Num_Processo_Bem_Principal { get; set; }
        public string Num_DI_Bem_Principal { get; set; }
        public string Num_DI_Bem_Acessorio { get; set; }
        public string Localizacao_Fisica_Bem { get; set; }
        public string Unidade_Jurisdicionante { get; set; }
        public string Representante_Nome { get; set; }
        public string Representante_CPF { get; set; }
        public string Representante_Email { get; set; }
        public string Representante_Telefone { get; set; }
        public Nullable<DateTime> Enquadramento_Prazo_Solicitado { get; set; }
        public Nullable<DateTime> Data_Criacao_Rat { get; set; }
        public string Usuario_Criacao { get; set; }

        public string Finalidade_Outra { get; set; }
        public string Moeda { get; set; }
        public string Num_Rat { get; set; }

    }
}
