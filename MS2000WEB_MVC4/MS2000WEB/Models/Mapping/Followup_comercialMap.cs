using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Followup_comercialMap : EntityTypeConfiguration<Followup_comercial>
    {
        public Followup_comercialMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Sequencial });

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

            this.Property(t => t.Sequencial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Descricao)
                .HasMaxLength(255);

            this.Property(t => t.Descricao_ing)
                .HasMaxLength(255);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Followup_comercial");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_ing).HasColumnName("Descricao_ing");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
        }
    }
}
