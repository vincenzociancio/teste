using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Extrato_MCCMap : EntityTypeConfiguration<Extrato_MCC>
    {
        public Extrato_MCCMap()
        {
            // Primary Key
            this.HasKey(t => t.QREG);

            // Properties
            this.Property(t => t.Usuario)
                .HasMaxLength(50);

            this.Property(t => t.contacorrente)
                .HasMaxLength(45);

            this.Property(t => t.Empresa)
                .HasMaxLength(50);

            this.Property(t => t.Tipo)
                .HasMaxLength(50);

            this.Property(t => t.Doc)
                .HasMaxLength(15);

            this.Property(t => t.Historico)
                .HasMaxLength(255);

            this.Property(t => t.D_Processo)
                .HasMaxLength(8);

            this.Property(t => t.D_Historico)
                .HasMaxLength(255);

            this.Property(t => t.D_Detalhe)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Extrato_MCC");
            this.Property(t => t.QREG).HasColumnName("QREG");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.contacorrente).HasColumnName("contacorrente");
            this.Property(t => t.Codigo_mov).HasColumnName("Codigo_mov");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Doc).HasColumnName("Doc");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.D_Data).HasColumnName("D_Data");
            this.Property(t => t.D_REG).HasColumnName("D_REG");
            this.Property(t => t.D_Processo).HasColumnName("D_Processo");
            this.Property(t => t.D_Historico).HasColumnName("D_Historico");
            this.Property(t => t.D_Detalhe).HasColumnName("D_Detalhe");
            this.Property(t => t.D_Valor).HasColumnName("D_Valor");
        }
    }
}
