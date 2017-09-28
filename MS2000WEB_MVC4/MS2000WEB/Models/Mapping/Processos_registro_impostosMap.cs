using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_registro_impostosMap : EntityTypeConfiguration<Processos_registro_impostos>
    {
        public Processos_registro_impostosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo });

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

            this.Property(t => t.Banco)
                .HasMaxLength(5);

            this.Property(t => t.Agencia)
                .HasMaxLength(5);

            this.Property(t => t.Conta_Corrente)
                .HasMaxLength(8);

            this.Property(t => t.Bancoc)
                .HasMaxLength(5);

            this.Property(t => t.Agenciac)
                .HasMaxLength(5);

            this.Property(t => t.Conta_Correntec)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Processos_registro_impostos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.II).HasColumnName("II");
            this.Property(t => t.IPI).HasColumnName("IPI");
            this.Property(t => t.Taxa_SISCOMEX).HasColumnName("Taxa_SISCOMEX");
            this.Property(t => t.Bancoc).HasColumnName("Bancoc");
            this.Property(t => t.Agenciac).HasColumnName("Agenciac");
            this.Property(t => t.Conta_Correntec).HasColumnName("Conta_Correntec");
            this.Property(t => t.IIc).HasColumnName("IIc");
            this.Property(t => t.IPIc).HasColumnName("IPIc");
            this.Property(t => t.Taxa_SISCOMEXc).HasColumnName("Taxa_SISCOMEXc");
            this.Property(t => t.Enviou_adcc).HasColumnName("Enviou_adcc");
            this.Property(t => t.Enviou_adcc_c).HasColumnName("Enviou_adcc_c");
            this.Property(t => t.Enviou_adr).HasColumnName("Enviou_adr");
            this.Property(t => t.Enviou_adr_c).HasColumnName("Enviou_adr_c");
        }
    }
}
