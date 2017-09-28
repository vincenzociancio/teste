using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{   
    [MetadataType(typeof(PreDocumentosMetadata))]
    public partial class PreDocumentos { }
    public class PreDocumentosMetadata
    {
        [Required(ErrorMessage = "O tipo documento é obrigatório.", AllowEmptyStrings = false)]        
        [Display(Name = "Tipo Documento")]
        public string fk_tipodocumento { get; set; }

        [Required(ErrorMessage = "O sub-tipo documento é obrigatório.", AllowEmptyStrings = false)]    
        [Display(Name = "SubTipo Documento")]
        public string fk_subtipodocumento { get; set; }
                
    }
}