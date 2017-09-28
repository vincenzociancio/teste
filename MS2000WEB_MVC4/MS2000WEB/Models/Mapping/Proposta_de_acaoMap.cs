using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Proposta_de_acaoMap : EntityTypeConfiguration<Proposta_de_acao>
    {
        public Proposta_de_acaoMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Desc_Acoes_Corretiva)
                .HasMaxLength(750);

            this.Property(t => t.Resp_Acoes_Corretiva)
                .HasMaxLength(200);

            this.Property(t => t.Usuario)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Proposta_de_acao");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Pk_ID).HasColumnName("Pk_ID");
            this.Property(t => t.Desc_Acoes_Corretiva).HasColumnName("Desc_Acoes_Corretiva");
            this.Property(t => t.Resp_Acoes_Corretiva).HasColumnName("Resp_Acoes_Corretiva");
            this.Property(t => t.Prazo_Acoes_Corretiva).HasColumnName("Prazo_Acoes_Corretiva");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
        }
    }
}
