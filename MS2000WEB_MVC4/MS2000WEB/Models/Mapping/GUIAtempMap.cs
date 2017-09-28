using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class GUIAtempMap : EntityTypeConfiguration<GUIAtemp>
    {
        public GUIAtempMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Processo, t.adicao });

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.adicao)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.NCM)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.tratamento)
                .HasMaxLength(1);

            this.Property(t => t.fundamento)
                .HasMaxLength(255);

            this.Property(t => t.ato_concessorio)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("GUIAtemp");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.adicao).HasColumnName("adicao");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.tratamento).HasColumnName("tratamento");
            this.Property(t => t.fundamento).HasColumnName("fundamento");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Valorcif).HasColumnName("Valorcif");
            this.Property(t => t.Pagina).HasColumnName("Pagina");
            this.Property(t => t.ato_concessorio).HasColumnName("ato_concessorio");
        }
    }
}
