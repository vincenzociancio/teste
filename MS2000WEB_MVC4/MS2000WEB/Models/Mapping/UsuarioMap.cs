using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class UsuarioMap : EntityTypeConfiguration<Usuario>
    {
        public UsuarioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Usuario1 });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Usuario1)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Senha)
                .HasMaxLength(10);

            this.Property(t => t.Nome_Completo)
                .HasMaxLength(45);

            this.Property(t => t.CPF)
                .HasMaxLength(15);

            this.Property(t => t.Diretorio_SISCOMEX)
                .HasMaxLength(50);

            this.Property(t => t.Nivel)
                .HasMaxLength(4);

            this.Property(t => t.Nivel_ccorrente)
                .HasMaxLength(4);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.Supervisor)
                .HasMaxLength(10);

            this.Property(t => t.SupervisorC)
                .HasMaxLength(10);

            this.Property(t => t.Setor)
                .HasMaxLength(4);

            this.Property(t => t.Ramal)
                .HasMaxLength(10);

            this.Property(t => t.Celular)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Usuarios");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Usuario1).HasColumnName("Usuario");
            this.Property(t => t.Senha).HasColumnName("Senha");
            this.Property(t => t.Nome_Completo).HasColumnName("Nome_Completo");
            this.Property(t => t.CPF).HasColumnName("CPF");
            this.Property(t => t.Diretorio_SISCOMEX).HasColumnName("Diretorio_SISCOMEX");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
            this.Property(t => t.Nivel_ccorrente).HasColumnName("Nivel_ccorrente");
            this.Property(t => t.Data_validade_senha).HasColumnName("Data_validade_senha");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Email_Sol_Num).HasColumnName("Email_Sol_Num");
            this.Property(t => t.Email_aviso_oper).HasColumnName("Email_aviso_oper");
            this.Property(t => t.Email_aviso_finan).HasColumnName("Email_aviso_finan");
            this.Property(t => t.Email_aviso_diretoria).HasColumnName("Email_aviso_diretoria");
            this.Property(t => t.Email_aviso_sistema).HasColumnName("Email_aviso_sistema");
            this.Property(t => t.Distribui_processo).HasColumnName("Distribui_processo");
            this.Property(t => t.Abre_processos).HasColumnName("Abre_processos");
            this.Property(t => t.Edita_eventos).HasColumnName("Edita_eventos");
            this.Property(t => t.Digitalizador).HasColumnName("Digitalizador");
            this.Property(t => t.Traduz_Classifica).HasColumnName("Traduz_Classifica");
            this.Property(t => t.Inativa_Cliente).HasColumnName("Inativa_Cliente");
            this.Property(t => t.Edita_cliente_inativo).HasColumnName("Edita_cliente_inativo");
            this.Property(t => t.Fecha_Processo).HasColumnName("Fecha_Processo");
            this.Property(t => t.Edita_Processo_Fechado).HasColumnName("Edita_Processo_Fechado");
            this.Property(t => t.Acessa_Patrimonio).HasColumnName("Acessa_Patrimonio");
            this.Property(t => t.Supervisor).HasColumnName("Supervisor");
            this.Property(t => t.Acessa_PARAFAT).HasColumnName("Acessa_PARAFAT");
            this.Property(t => t.Desconto_Faturamento).HasColumnName("Desconto_Faturamento");
            this.Property(t => t.Responsavel).HasColumnName("Responsavel");
            this.Property(t => t.Distribui_processoC).HasColumnName("Distribui_processoC");
            this.Property(t => t.ResponsavelC).HasColumnName("ResponsavelC");
            this.Property(t => t.SupervisorC).HasColumnName("SupervisorC");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.FOLLOW_LIBERADO).HasColumnName("FOLLOW_LIBERADO");
            this.Property(t => t.PK_USUARIO).HasColumnName("PK_USUARIO");
            this.Property(t => t.Ramal).HasColumnName("Ramal");
            this.Property(t => t.Celular).HasColumnName("Celular");
            this.Property(t => t.Hierarquia).HasColumnName("Hierarquia");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.scanner).HasColumnName("scanner");
            this.Property(t => t.Montador).HasColumnName("Montador");
            this.Property(t => t.Documentador).HasColumnName("Documentador");
            this.Property(t => t.Arquivista).HasColumnName("Arquivista");
            this.Property(t => t.AcessoWeb).HasColumnName("AcessoWeb");
            this.Property(t => t.Registra_Di).HasColumnName("Registra_Di");
            this.Property(t => t.Audita_Di).HasColumnName("Audita_Di");
            this.Property(t => t.Ferias).HasColumnName("Ferias");
        }
    }
}