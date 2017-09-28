using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(Documentos_Relatorios_parametrizacaoMetadata))]
    public partial class Documentos_Relatorios_parametrizacao 
    {
        
    }

    public class Documentos_Relatorios_parametrizacaoMetadata
    {
        [Key]
        public int DocID { get; set; }
      //  [Required(ErrorMessage = "*")]
        [Display(Name = "Título")]
        public string Titulo { get; set; }
    //    [Required(ErrorMessage= "*")]
        [Display(Name = "Importador")]
        public string ImportadorCgcCpf { get; set; }
    //    [Required(ErrorMessage = "*")]
        public int Vencimento { get; set; }
   //     [Required(ErrorMessage = "*")]
        public string Email { get; set; }        

        //public virtual Importadore Importador { get; set; }
        //public virtual ICollection<Tipo_Documentos> TiposDocumentos { get; set; }
        //public virtual ICollection<Sub_Tipo_Documentos> SubTiposDocumentos { get; set; }
        //public virtual ICollection<Tipos_status_documentos> TiposStatusDocumentos { get; set; }
        
    }
}