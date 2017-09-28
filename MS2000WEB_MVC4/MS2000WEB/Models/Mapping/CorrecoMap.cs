using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class CorrecoMap : EntityTypeConfiguration<Correco>
    {
        public CorrecoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Tipo, t.Codigo, t.Reg });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Tipo_Correcao)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Correcoes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Reg).HasColumnName("Reg");
            this.Property(t => t.Tipo_Correcao).HasColumnName("Tipo_Correcao");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
