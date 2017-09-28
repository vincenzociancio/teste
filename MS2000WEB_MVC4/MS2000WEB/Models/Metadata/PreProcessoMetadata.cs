using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    
    [MetadataType(typeof(PreProcessoMetadata))]
    public partial class PreProcesso { }
    public class PreProcessoMetadata
    {        
        [Required]
        [StringLength(15, MinimumLength = 3, ErrorMessage = "Digite no mínimo 3 e no máximo 15 caracteres.")]
        [Display(Name = "Invoice")]
        public string invoice { get; set; }

        [Required]
        [Display(Name = "Importador")]
        public string fk_importador { get; set; }

        //[Display(Name = "Valor")]
        //[DisplayFormat(DataFormatString = "{0,c}")]        
        //[Required(ErrorMessage = "O campo valor deve possuir somente números e no mínimo 0.")]
        ////[Integer(ErrorMessage="Apenas números devem ser informados.)]
        //public decimal valor { get; set; } 
       

        //[Display(Name = "Valor")]
        //[RegularExpression("^[0-9]{0,}$", ErrorMessage = "Digite um valor numérico positivo no campo Valor")]
        //public decimal valor { get; set; } 

    }
}