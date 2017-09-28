using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Taxas_ConversaoDoDiaSeguinteMap : EntityTypeConfiguration<Processos_Taxas_ConversaoDoDiaSeguinte>
    {
        public Processos_Taxas_ConversaoDoDiaSeguinteMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Moeda });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Moeda)
                .IsRequired()
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Processos_Taxas_ConversaoDoDiaSeguinte");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Taxa_conversao).HasColumnName("Taxa_conversao");
            this.Property(t => t.Taxa_conversaoc).HasColumnName("Taxa_conversaoc");
        }
    }
}
