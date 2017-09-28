using System.Collections.Generic;

namespace MSBiblioteca.DTO
{
    public class AcessoGrupoDTO
    {
        //Construtor
        public AcessoGrupoDTO()
        {
            this.Paginas = new List<AcessoPaginaGrupoDTO>();
            this.Usuarios = new List<UsuarioDTO>();
        }
        //
        public AcessoGrupoDTO(int id, string descricao)
        {
            this.PK_AcessoGrupo = id;
            this.Descricao = descricao;
        }
        //Propriedades
        public int PK_AcessoGrupo { get; set; }
        public string Descricao { get; set; }
        
        //Navegabilidade
        public virtual IList<AcessoPaginaGrupoDTO> Paginas { get; set; }
        public virtual IList<UsuarioDTO> Usuarios { get; set; }
    }
}
