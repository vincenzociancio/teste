using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_Pagar_CorrecoesMap : EntityTypeConfiguration<Contas_Pagar_Correcoes>
    {
        public Contas_Pagar_CorrecoesMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Fornecedor, t.Codigo, t.registro });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Fornecedor)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.registro)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Tipo_Correcao)
                .HasMaxLength(4);

            this.Property(t => t.obs)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Contas_Pagar_Correcoes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.registro).HasColumnName("registro");
            this.Property(t => t.Tipo_Correcao).HasColumnName("Tipo_Correcao");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.obs).HasColumnName("obs");
        }
    }
}
