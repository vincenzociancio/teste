using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCGPO_POS_ITENSMap : EntityTypeConfiguration<MSCGPO_POS_ITENS>
    {
        public MSCGPO_POS_ITENSMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.REG_PO)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.SEQPO)
                .HasMaxLength(5);

            this.Property(t => t.FABRICANTE)
                .HasMaxLength(6);

            this.Property(t => t.CODIGO)
                .HasMaxLength(25);

            this.Property(t => t.PART_NUMBER)
                .HasMaxLength(25);

            this.Property(t => t.NCM)
                .HasMaxLength(8);

            this.Property(t => t.Destaque_NCM)
                .HasMaxLength(3);

            this.Property(t => t.NALADI)
                .HasMaxLength(8);

            this.Property(t => t.Unidade)
                .HasMaxLength(2);

            this.Property(t => t.Unidade_Medida_Estat)
                .HasMaxLength(2);

            this.Property(t => t.UOM)
                .HasMaxLength(25);

            this.Property(t => t.Vendor_Number)
                .HasMaxLength(25);

            this.Property(t => t.Tipo_Declaracao)
                .HasMaxLength(2);

            this.Property(t => t.STATUS)
                .HasMaxLength(2);

            // Table & Column Mappings
            this.ToTable("MSCGPO_POS_ITENS");
            this.Property(t => t.REG_PO).HasColumnName("REG_PO");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.SEQPO).HasColumnName("SEQPO");
            this.Property(t => t.FABRICANTE).HasColumnName("FABRICANTE");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.PART_NUMBER).HasColumnName("PART_NUMBER");
            this.Property(t => t.Descricao_ing).HasColumnName("Descricao_ing");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.Destaque_NCM).HasColumnName("Destaque_NCM");
            this.Property(t => t.NALADI).HasColumnName("NALADI");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Unidade_Medida_Estat).HasColumnName("Unidade_Medida_Estat");
            this.Property(t => t.QUANTIDADE).HasColumnName("QUANTIDADE");
            this.Property(t => t.QUANTIDADE_IMPORTADA).HasColumnName("QUANTIDADE_IMPORTADA");
            this.Property(t => t.Peso_Unitario).HasColumnName("Peso_Unitario");
            this.Property(t => t.Valor_Unitario).HasColumnName("Valor_Unitario");
            this.Property(t => t.Peso_Total).HasColumnName("Peso_Total");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.UOM).HasColumnName("UOM");
            this.Property(t => t.Vendor_Number).HasColumnName("Vendor_Number");
            this.Property(t => t.Tipo_Declaracao).HasColumnName("Tipo_Declaracao");
            this.Property(t => t.STATUS).HasColumnName("STATUS");
        }
    }
}
