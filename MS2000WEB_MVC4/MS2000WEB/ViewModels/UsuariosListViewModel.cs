using MS2000WEB.Models;

namespace MS2000WEB.ViewModels
{
    public class UsuariosListViewModel
    {
        public int fk_ata { get; set; }
        public int pk_atas_participante { get; set; }
        public string Usuario { get; set; }
        public string Nome_Completo { get; set; }              
    }
}