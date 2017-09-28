
namespace MSBiblioteca.DTO
{
    public class SetorDTO
    {
        public SetorDTO()
        {

        }

        public SetorDTO(string codigo, string descricao)
        {
            this.Codigo = codigo;
            this.Descricao = descricao;
        }

        public string Codigo { get; set; }
        public string Descricao { get; set; }        
    }
}
