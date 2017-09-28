using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faixas_DesembaracoMap : EntityTypeConfiguration<Faixas_Desembaraco>
    {
        public Faixas_DesembaracoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Tipo, t.Faixa_Inicial, t.Faixa_Final });

            // Properties
            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Faixa_Inicial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Faixa_Final)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Descricao_ing)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Faixas_Desembaraco");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Faixa_Inicial).HasColumnName("Faixa_Inicial");
            this.Property(t => t.Faixa_Final).HasColumnName("Faixa_Final");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_ing).HasColumnName("Descricao_ing");
        }
    }
}
