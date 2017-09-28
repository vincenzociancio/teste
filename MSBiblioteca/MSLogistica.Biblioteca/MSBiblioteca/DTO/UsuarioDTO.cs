using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;

namespace MSBiblioteca.DTO
{
    public class UsuarioDTO
    {
        //Construtor
        public UsuarioDTO()
        {
            this.Grupos = new List<AcessoGrupoDTO>();
            this.GrupoUsuario = new List<AcessoGrupoUsuarioDTO>();
            this.Setor = new Setor();
            this.Clientes = new List<Importador>();
        }

        //Propriedades
        public int PkUsuario { get; set; }
        public string NomeCompleto { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
        public string Ramal { get; set; }
        public DateTime DataValidadeSenha { get; set; }
        public string Email { get; set; }
        public bool Ativo { get; set; }
        public bool AcessoWeb { get; set; }
        //Avisos automáticos
        public int EmailAvisoSolicNumerario { get; set; }
        public int EmailAvisoOperacional { get; set; }
        public int EmailAvisoFinanceiro { get; set; }
        public int EmailAvisoDiretoria { get; set; }
        public int EmailAvisoSistema { get; set; }
        //-------------------
        public int Digitalizador { get; set; }
        /// <summary>
        /// Supervisor Operacional
        /// </summary>
        public string FKSupervisorOperacional { get; set; }
        /// <summary>
        /// Supervisor Comercial
        /// </summary>
        public string SupervisorComercial { get; set; }//falta
        /// <summary>
        /// Resposavel operacional por processo
        /// </summary>
        public int ResponsavelOperacional { get; set; }
        /// <summary>
        /// Responsavel comercial por processo
        /// </summary>
        public int ResponsavelComercial { get; set; }
        public string FKSetor { get; set; }        
        public string Celular { get; set; }
        public int Hierarquia { get; set; }
        public bool Scanner { get; set; }
        public bool Documentador { get; set; }
        public bool Arquivista { get; set; }

        //Navegabilidade
        public IList<AcessoGrupoDTO> Grupos { get; set; }
        public IList<AcessoGrupoUsuarioDTO> GrupoUsuario { get; set; }
        public Setor Setor { get; set; }
        public Supervisor SupervisorOperacional { get; set; }     
        public virtual IList<Importador> Clientes { get; set; }
    }
}
