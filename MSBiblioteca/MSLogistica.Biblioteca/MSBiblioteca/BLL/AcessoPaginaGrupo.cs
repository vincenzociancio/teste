using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class AcessoPaginaGrupo : AcessoPaginaGrupoDTO
    {
        AcessoPaginaGrupoDAL objDAL = null;

        public AcessoPaginaGrupo()
        {
            this.objDAL = new AcessoPaginaGrupoDAL();
        }

        public List<AcessoPaginaGrupoDTO> BuscarPaginaGrupoFK(int FK_AcessoGrupo)
        {            
            return objDAL.BuscarPaginaGrupoFK(FK_AcessoGrupo);
        }

        public bool Alterar(AcessoPaginaGrupoDTO obj)
        {         
            return objDAL.Alterar(obj);
        }
    }
}
