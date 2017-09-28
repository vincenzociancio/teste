using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(PreFollowUpMetadata))]
    public partial class PreFollowUp { }
    public class PreFollowUpMetadata
    {
        [Required]
        [Display(Name = "Evento")]
        public int fk_evento { get; set; }


        //[Required(ErrorMessage = "A Hora é obrigatória.", AllowEmptyStrings = false)]
        //[Display(Name = "Hora")]
        //public string hora { get; set; }
    }
}