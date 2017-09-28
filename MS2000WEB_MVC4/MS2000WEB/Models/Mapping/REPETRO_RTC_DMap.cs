using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class REPETRO_RTC_DMap : EntityTypeConfiguration<REPETRO_RTC_D>
    {
        public REPETRO_RTC_DMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            this.Property(t => t.NUMERO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.WELL)
                .HasMaxLength(50);

            this.Property(t => t.Contrato_Local_Origem)
                .HasMaxLength(12);

            this.Property(t => t.Contrato_Local_Destino)
                .HasMaxLength(12);

            this.Property(t => t.VESSEL)
                .HasMaxLength(50);

            this.Property(t => t.DATA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.VOYAGE)
                .HasMaxLength(50);

            this.Property(t => t.Usuario)
                .HasMaxLength(20);

            this.Property(t => t.Status)
                .HasMaxLength(1);

            this.Property(t => t.Usuario_REC)
                .HasMaxLength(20);

            this.Property(t => t.DATA_RTC_REC)
                .HasMaxLength(10);

            this.Property(t => t.Status_REC)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("REPETRO_RTC_D");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.NUMERO_RTC).HasColumnName("NUMERO_RTC");
            this.Property(t => t.WELL).HasColumnName("WELL");
            this.Property(t => t.Contrato_Local_Origem).HasColumnName("Contrato_Local_Origem");
            this.Property(t => t.Contrato_Local_Destino).HasColumnName("Contrato_Local_Destino");
            this.Property(t => t.VESSEL).HasColumnName("VESSEL");
            this.Property(t => t.DATA_RTC).HasColumnName("DATA_RTC");
            this.Property(t => t.VOYAGE).HasColumnName("VOYAGE");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Usuario_REC).HasColumnName("Usuario_REC");
            this.Property(t => t.DATA_RTC_REC).HasColumnName("DATA_RTC_REC");
            this.Property(t => t.Status_REC).HasColumnName("Status_REC");
        }
    }
}
