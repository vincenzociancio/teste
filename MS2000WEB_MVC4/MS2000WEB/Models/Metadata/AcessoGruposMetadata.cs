using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(AcessoGruposMetadata))]
    public partial class AcessoGrupos { }

    public class AcessoGruposMetadata
    {    
        [Key]
        public int PK_AcessoGrupo { get; set; }
        
        [Required(ErrorMessage = "A descrição é obrigatório.", AllowEmptyStrings = false)]  
        [Display(Name = "Descrição")] 
        public string Descricao { get; set; }
    }
}