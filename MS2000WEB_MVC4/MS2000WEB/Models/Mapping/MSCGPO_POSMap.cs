using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCGPO_POSMap : EntityTypeConfiguration<MSCGPO_POS>
    {
        public MSCGPO_POSMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            this.Property(t => t.PO)
                .HasMaxLength(15);

            this.Property(t => t.EXPORTADOR)
                .HasMaxLength(4);

            this.Property(t => t.Via)
                .HasMaxLength(1);

            this.Property(t => t.INCOTERM)
                .HasMaxLength(3);

            this.Property(t => t.CONDICAO_PAGAMENTO)
                .HasMaxLength(50);

            this.Property(t => t.AGENTE_COMPANY)
                .HasMaxLength(15);

            this.Property(t => t.CUSTOMER)
                .HasMaxLength(15);

            this.Property(t => t.MOT)
                .HasMaxLength(15);

            this.Property(t => t.PLANILHA)
                .HasMaxLength(50);

            this.Property(t => t.STATUS)
                .HasMaxLength(2);

            // Table & Column Mappings
            this.ToTable("MSCGPO_POS");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.DATA_PO).HasColumnName("DATA_PO");
            this.Property(t => t.PO).HasColumnName("PO");
            this.Property(t => t.EXPORTADOR).HasColumnName("EXPORTADOR");
            this.Property(t => t.Via).HasColumnName("Via");
            this.Property(t => t.INCOTERM).HasColumnName("INCOTERM");
            this.Property(t => t.CONDICAO_PAGAMENTO).HasColumnName("CONDICAO_PAGAMENTO");
            this.Property(t => t.AGENTE_COMPANY).HasColumnName("AGENTE_COMPANY");
            this.Property(t => t.CUSTOMER).HasColumnName("CUSTOMER");
            this.Property(t => t.MOT).HasColumnName("MOT");
            this.Property(t => t.PESO_TOTAL).HasColumnName("PESO_TOTAL");
            this.Property(t => t.VALOR_TOTAL).HasColumnName("VALOR_TOTAL");
            this.Property(t => t.OBS_LABEL_NOTE).HasColumnName("OBS_LABEL_NOTE");
            this.Property(t => t.PLANILHA).HasColumnName("PLANILHA");
            this.Property(t => t.STATUS).HasColumnName("STATUS");
        }
    }
}
