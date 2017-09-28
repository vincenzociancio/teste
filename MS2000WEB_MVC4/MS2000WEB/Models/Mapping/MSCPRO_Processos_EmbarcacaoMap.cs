using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Processos_EmbarcacaoMap : EntityTypeConfiguration<MSCPRO_Processos_Embarcacao>
    {
        public MSCPRO_Processos_EmbarcacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo_Assunto)
                .HasMaxLength(20);

            this.Property(t => t.Processo)
                .HasMaxLength(20);

            this.Property(t => t.TR)
                .HasMaxLength(20);

            this.Property(t => t.Volumes)
                .HasMaxLength(20);

            this.Property(t => t.Caixa)
                .HasMaxLength(40);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Processos_Embarcacao");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Codigo_Assunto).HasColumnName("Codigo_Assunto");
            this.Property(t => t.FK_Embarcacao).HasColumnName("FK_Embarcacao");
            this.Property(t => t.FK_Contribuinte).HasColumnName("FK_Contribuinte");
            this.Property(t => t.Data_Entrada).HasColumnName("Data_Entrada");
            this.Property(t => t.Data_Despacho).HasColumnName("Data_Despacho");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.TR).HasColumnName("TR");
            this.Property(t => t.Data_Vencimento).HasColumnName("Data_Vencimento");
            this.Property(t => t.FK_Grupo).HasColumnName("FK_Grupo");
            this.Property(t => t.Volumes).HasColumnName("Volumes");
            this.Property(t => t.Caixa).HasColumnName("Caixa");
            this.Property(t => t.Observacao).HasColumnName("Observacao");
            this.Property(t => t.Status_Emprestimo).HasColumnName("Status_Emprestimo");
        }
    }
}
