using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(PreClassificacaoMetadata))]
    public partial class PreClassificacao { }

    public class PreClassificacaoMetadata
    {

        //[Required(ErrorMessage = "A description é obrigatória.", AllowEmptyStrings = false)]
        //[Display(Name = "Description")]
        //public string col008 { get; set; }


        [Required(ErrorMessage = "A translation é obrigatória.")]
        [Display(Name = "Translation")]
        public string col081 { get; set; }


        [Display(Name = "NCM")]
        [Required(ErrorMessage = "Você deve informar um número para cadastrar o NCM.")]
        public string col082 { get; set; }


        //[Required]
        //[StringLength(15, MinimumLength = 1, ErrorMessage = "Digite no mínimo 1 e no máximo 15 caracteres.")]
        //[Display(Name = "IL Requirement")]        
        //public string col083 { get; set; }
    }
}