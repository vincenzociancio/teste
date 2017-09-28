using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(UsuarioMetadata))]
    public partial class Usuario { }

    public class UsuarioMetadata
    {    
        [Key]
        [Required]
        [Display(Name = "Usuário")]
        public string Usuario1 { get; set; }
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Senha")]
        public string Senha { get; set; }
    }
}