using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Deducoes_FaturasMap : EntityTypeConfiguration<Deducoes_Faturas>
    {
        public Deducoes_FaturasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Fatura, t.CD_MET_DEDUC_VALOR });

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

            this.Property(t => t.CD_MET_DEDUC_VALOR)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.CD_MD_NEGOC_DEDUC)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Deducoes_Faturas");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.CD_MET_DEDUC_VALOR).HasColumnName("CD_MET_DEDUC_VALOR");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.VL_DEDUCAO_MNEG).HasColumnName("VL_DEDUCAO_MNEG");
            this.Property(t => t.CD_MD_NEGOC_DEDUC).HasColumnName("CD_MD_NEGOC_DEDUC");
            this.Property(t => t.VL_DEDUCAO_MN).HasColumnName("VL_DEDUCAO_MN");
        }
    }
}
