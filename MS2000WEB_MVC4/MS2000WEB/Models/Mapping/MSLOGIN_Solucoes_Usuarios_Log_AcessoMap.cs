using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Solucoes_Usuarios_Log_AcessoMap : EntityTypeConfiguration<MSLOGIN_Solucoes_Usuarios_Log_Acesso>
    {
        public MSLOGIN_Solucoes_Usuarios_Log_AcessoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_LOG);

            // Properties
            this.Property(t => t.NOME_COMPLETO)
                .HasMaxLength(70);

            this.Property(t => t.HORA)
                .HasMaxLength(8);

            this.Property(t => t.ID)
                .HasMaxLength(50);

            this.Property(t => t.IP)
                .HasMaxLength(50);

            this.Property(t => t.BROWSER)
                .HasMaxLength(70);

            this.Property(t => t.PAGINA_ORIGEM)
                .HasMaxLength(70);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes_Usuarios_Log_Acesso");
            this.Property(t => t.PK_LOG).HasColumnName("PK_LOG");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.NOME_COMPLETO).HasColumnName("NOME_COMPLETO");
            this.Property(t => t.DATA).HasColumnName("DATA");
            this.Property(t => t.HORA).HasColumnName("HORA");
            this.Property(t => t.MODULO).HasColumnName("MODULO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.IP).HasColumnName("IP");
            this.Property(t => t.BROWSER).HasColumnName("BROWSER");
            this.Property(t => t.PAGINA_ORIGEM).HasColumnName("PAGINA_ORIGEM");
        }
    }
}
