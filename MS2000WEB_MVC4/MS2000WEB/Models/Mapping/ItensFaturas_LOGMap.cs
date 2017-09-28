using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ItensFaturas_LOGMap : EntityTypeConfiguration<ItensFaturas_LOG>
    {
        public ItensFaturas_LOGMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Fatura, t.Sequencial });

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

            this.Property(t => t.Fatura)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Revisao_Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("ItensFaturas_LOG");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Revisado).HasColumnName("Revisado");
            this.Property(t => t.Revisao_Data).HasColumnName("Revisao_Data");
            this.Property(t => t.Revisao_Usuario).HasColumnName("Revisao_Usuario");
            this.Property(t => t.Revisao_OBS).HasColumnName("Revisao_OBS");
        }
    }
}
