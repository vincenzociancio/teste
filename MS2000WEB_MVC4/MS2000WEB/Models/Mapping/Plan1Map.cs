using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Plan1Map : EntityTypeConfiguration<Plan1>
    {
        public Plan1Map()
        {
            // Primary Key
            this.HasKey(t => t.CÓD1);

            // Properties
            this.Property(t => t.CÓD)
                .HasMaxLength(255);

            this.Property(t => t.PLANILHA)
                .HasMaxLength(255);

            this.Property(t => t.LINHA)
                .HasMaxLength(255);

            this.Property(t => t.CODIGO)
                .HasMaxLength(255);

            this.Property(t => t.NUMERO_SERIE)
                .HasMaxLength(255);

            this.Property(t => t.QTD)
                .HasMaxLength(255);

            this.Property(t => t.VALOR_UNIT)
                .HasMaxLength(255);

            this.Property(t => t.TAG)
                .HasMaxLength(255);

            this.Property(t => t.SSMA_TimeStamp)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(8)
                .IsRowVersion();

            // Table & Column Mappings
            this.ToTable("Plan1");
            this.Property(t => t.CÓD1).HasColumnName("CÓD1");
            this.Property(t => t.CÓD).HasColumnName("CÓD");
            this.Property(t => t.PLANILHA).HasColumnName("PLANILHA");
            this.Property(t => t.LINHA).HasColumnName("LINHA");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO_INGLES).HasColumnName("DESCRICAO_INGLES");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.NUMERO_SERIE).HasColumnName("NUMERO_SERIE");
            this.Property(t => t.QTD).HasColumnName("QTD");
            this.Property(t => t.VALOR_UNIT).HasColumnName("VALOR_UNIT");
            this.Property(t => t.TAG).HasColumnName("TAG");
            this.Property(t => t.SSMA_TimeStamp).HasColumnName("SSMA_TimeStamp");
        }
    }
}
