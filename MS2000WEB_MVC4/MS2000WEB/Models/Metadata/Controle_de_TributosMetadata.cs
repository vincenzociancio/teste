using System;
using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(Controle_de_TributosMetadata))]
    public partial class Controle_de_Tributos { }

    public class Controle_de_TributosMetadata
    {
        [Key]
        [Required]
        public int ID { get; set; }
        [Required(ErrorMessage = "Natureza do Tributo")]
        [Display(Name = "Natureza do Tributo")]
        public int Natureza { get; set; }

        [Required(ErrorMessage = "Código do Tributo")]
        [Display(Name = "Código do Tributo")]
        public string Codigo_Tributo { get; set; }

        [Required(ErrorMessage = "Competência")]
        [Display(Name = "Competência")]
        public int Competencia { get; set; }

        [Required(ErrorMessage = "Períodicidade")]
        [Display(Name = "Períodicidade")]
        public int Periodicidade { get; set; }

        [Required(ErrorMessage="Data de Pagamento")]      
        [Display(Name = "Data de Pagamento")]
        [DataType(DataType.Date)]        
        public DateTime Data_Pgto { get; set; }

        [Required(ErrorMessage = "Valor")]
        [Display(Name = "Valor")]
        [DataType(DataType.Currency)]
        public decimal Valor { get; set; }
        
        [Display(Name = "Referência")]
        public string Referencia { get; set; }

        [Required(ErrorMessage = "Ano")]  
        public int Ano { get; set; }
    }
}