using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
    [MetadataType(typeof(Documentos_Relatorios_Parametrizacao_TipoMetadata))]
    public partial class Documentos_Relatorios_Parametrizacao_Tipo { }

    public class Documentos_Relatorios_Parametrizacao_TipoMetadata
    {
        [Required]
        public string Tipo_Doc { get; set; }
        [Required]
        public string Sub_Tipo_Doc { get; set; }
    }
}