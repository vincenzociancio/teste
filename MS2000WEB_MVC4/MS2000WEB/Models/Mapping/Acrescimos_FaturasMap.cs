using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Acrescimos_FaturasMap : EntityTypeConfiguration<Acrescimos_Faturas>
    {
        public Acrescimos_FaturasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Fatura, t.CD_MET_ACRES_VALOR });

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

            this.Property(t => t.CD_MET_ACRES_VALOR)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.CD_MD_NEGOC_ACRES)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Acrescimos_Faturas");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.CD_MET_ACRES_VALOR).HasColumnName("CD_MET_ACRES_VALOR");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.VL_ACRESCIMO_MOEDA).HasColumnName("VL_ACRESCIMO_MOEDA");
            this.Property(t => t.CD_MD_NEGOC_ACRES).HasColumnName("CD_MD_NEGOC_ACRES");
            this.Property(t => t.VL_ACRESCIMO_MN).HasColumnName("VL_ACRESCIMO_MN");
        }
    }
}
