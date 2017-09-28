using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.Models
{

    [MetadataType(typeof(RatRepetroMetadata))]
    public partial class RAT_Repetro
    {

    }
    public class RatRepetroMetadata
    {
        [Key]
        public int ID { get; set; }

        [Required(ErrorMessage = "Número do processo")]
        public string FK_Processo { get; set; }

        [Required(ErrorMessage = "Nome da empresa estrangeira proprietária do bem.")]
        public string Nome_Empresa_Estrangeira { get; set; }

        [Required(ErrorMessage = "Endereço da empresa estrangeira proprietária do bem.")]
        public string Endereco_Empresa_Estrangeira { get; set; }

        [Required(ErrorMessage = "Enquadramento do pedido.")]
        public int Enquadramento_Pedido { get; set; }

        [Required(ErrorMessage = "Indicação do dispositivo normativo do pedido.")]
        public string FK_Fundamentacao { get; set; }

        [Required(ErrorMessage = "Finalidade do requerimento.")]
        public int Finalidade { get; set; }

        public string Num_Processo_Bem_Principal { get; set; }
        public string Num_DI_Bem_Principal { get; set; }
        public string Num_DI_Bem_Acessorio { get; set; }

        [Required(ErrorMessage = "Localização física dos bem.")]
        public string Localizacao_Fisica_Bem { get; set; }

        [Required(ErrorMessage = "Unidade jurisdicionante.")]
        public string Unidade_Jurisdicionante { get; set; }

        [Required(ErrorMessage = "Nome do representante.")]
        public string Representante_Nome { get; set; }

        [Required(ErrorMessage = "CPF do representante.")]
        public string Representante_CPF { get; set; }

        [Required(ErrorMessage = "E-mail do representante.")]
        public string Representante_Email { get; set; }

        [Required(ErrorMessage = "Telefone do representante.")]
        public string Representante_Telefone { get; set; }

        [Required(ErrorMessage = "Prazo solicitado.")]
        [DataType(DataType.Date)]
        public Nullable<DateTime> Enquadramento_Prazo_Solicitado { get; set; }

        [DataType(DataType.Date)]
        public Nullable<DateTime> Data_Criacao_Rat { get; set; }

        public string Usuario_Criacao { get; set; }

        [Required(ErrorMessage = "Moeda")]
        public string Moeda { get; set; }
    }
}