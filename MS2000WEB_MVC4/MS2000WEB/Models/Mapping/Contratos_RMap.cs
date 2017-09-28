using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contratos_RMap : EntityTypeConfiguration<Contratos_R>
    {
        public Contratos_RMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Contrato });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Contrato)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Tipo)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Contratos_R");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Vigencia_inicial).HasColumnName("Vigencia_inicial");
            this.Property(t => t.Vigencia_final).HasColumnName("Vigencia_final");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Data_Baixa).HasColumnName("Data_Baixa");
            this.Property(t => t.Data_prorrogacao).HasColumnName("Data_prorrogacao");
            this.Property(t => t.Repetro).HasColumnName("Repetro");
        }
    }
}
