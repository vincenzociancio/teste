using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class PLANILHA_FORMATOMap : EntityTypeConfiguration<PLANILHA_FORMATO>
    {
        public PLANILHA_FORMATOMap()
        {
            // Primary Key
            this.HasKey(t => t.CÓD);

            // Properties
            this.Property(t => t.PLANILHA)
                .HasMaxLength(255);

            this.Property(t => t.LINHA)
                .HasMaxLength(50);

            this.Property(t => t.CODIGO)
                .HasMaxLength(255);

            this.Property(t => t.NUMERO_SERIE)
                .HasMaxLength(255);

            this.Property(t => t.QTD)
                .HasMaxLength(50);

            this.Property(t => t.SSMA_TimeStamp)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(8)
                .IsRowVersion();

            // Table & Column Mappings
            this.ToTable("PLANILHA_FORMATO");
            this.Property(t => t.CÓD).HasColumnName("CÓD");
            this.Property(t => t.PLANILHA).HasColumnName("PLANILHA");
            this.Property(t => t.LINHA).HasColumnName("LINHA");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO_INGLES).HasColumnName("DESCRICAO_INGLES");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.NUMERO_SERIE).HasColumnName("NUMERO_SERIE");
            this.Property(t => t.QTD).HasColumnName("QTD");
            this.Property(t => t.SSMA_TimeStamp).HasColumnName("SSMA_TimeStamp");
        }
    }
}
