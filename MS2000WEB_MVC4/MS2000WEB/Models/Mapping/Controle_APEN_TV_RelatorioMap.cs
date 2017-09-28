using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_APEN_TV_RelatorioMap : EntityTypeConfiguration<Controle_APEN_TV_Relatorio>
    {
        public Controle_APEN_TV_RelatorioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK, t.Nome_Completo_Usuario, t.Qtd_Pendencias, t.Data });

            // Properties
            this.Property(t => t.PK)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Nome_Completo_Usuario)
                .IsRequired()
                .HasMaxLength(45);

            this.Property(t => t.Qtd_Pendencias)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Controle_APEN_TV_Relatorio");
            this.Property(t => t.PK).HasColumnName("PK");
            this.Property(t => t.Nome_Completo_Usuario).HasColumnName("Nome_Completo_Usuario");
            this.Property(t => t.Qtd_Pendencias).HasColumnName("Qtd_Pendencias");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
