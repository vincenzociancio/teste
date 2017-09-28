using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RepetroMARINEMap : EntityTypeConfiguration<RepetroMARINE>
    {
        public RepetroMARINEMap()
        {
            // Primary Key
            this.HasKey(t => new { t.DI, t.Adicao, t.Seq_Adicaostr });

            // Properties
            this.Property(t => t.DI)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Adicao)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Seq_Adicaostr)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Tipo_Declaração)
                .HasMaxLength(2);

            this.Property(t => t.NCM)
                .HasMaxLength(8);

            this.Property(t => t.SSMA_TimeStamp)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(8)
                .IsRowVersion();

            // Table & Column Mappings
            this.ToTable("RepetroMARINE");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.Seq_Adicaostr).HasColumnName("Seq_Adicaostr");
            this.Property(t => t.datadi).HasColumnName("datadi");
            this.Property(t => t.Tipo_Declaração).HasColumnName("Tipo_Declaração");
            this.Property(t => t.DESCBEM).HasColumnName("DESCBEM");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.VALOR).HasColumnName("VALOR");
            this.Property(t => t.SSMA_TimeStamp).HasColumnName("SSMA_TimeStamp");
        }
    }
}
