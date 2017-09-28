using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_de_TributosMap : EntityTypeConfiguration<Controle_de_Tributos>
    {
        public Controle_de_TributosMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Codigo_Tributo)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Referencia)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Controle_de_Tributos");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Natureza).HasColumnName("Natureza");
            this.Property(t => t.Codigo_Tributo).HasColumnName("Codigo_Tributo");
            this.Property(t => t.Competencia).HasColumnName("Competencia");
            this.Property(t => t.Periodicidade).HasColumnName("Periodicidade");
            this.Property(t => t.Data_Pgto).HasColumnName("Data_Pgto");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Referencia).HasColumnName("Referencia");
            this.Property(t => t.Ano).HasColumnName("Ano");
        }
    }
}
