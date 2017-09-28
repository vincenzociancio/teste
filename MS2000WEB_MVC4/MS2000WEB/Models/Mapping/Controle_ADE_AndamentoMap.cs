using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_ADE_AndamentoMap : EntityTypeConfiguration<Controle_ADE_Andamento>
    {
        public Controle_ADE_AndamentoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_ADEA, t.FK_Importador, t.FK_Fiscais, t.FK_Status });

            // Properties
            this.Property(t => t.PK_ADEA)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.FK_Processo)
                .HasMaxLength(8);

            this.Property(t => t.Num_Processo_Receita)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.FK_Fiscais)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FK_Status)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_ADE_Andamento");
            this.Property(t => t.PK_ADEA).HasColumnName("PK_ADEA");
            this.Property(t => t.FK_Importador).HasColumnName("FK_Importador");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.Num_Processo_Receita).HasColumnName("Num_Processo_Receita");
            this.Property(t => t.FK_Fiscais).HasColumnName("FK_Fiscais");
            this.Property(t => t.FK_Status).HasColumnName("FK_Status");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.FK_Tipo).HasColumnName("FK_Tipo");
            this.Property(t => t.DT_COANA).HasColumnName("DT_COANA");
            this.Property(t => t.DT_DITEC).HasColumnName("DT_DITEC");
            this.Property(t => t.DT_DIANA).HasColumnName("DT_DIANA");
            this.Property(t => t.DT_Abertura_Processo).HasColumnName("DT_Abertura_Processo");
            this.Property(t => t.DT_ADE_Plublicacao).HasColumnName("DT_ADE_Plublicacao");
            this.Property(t => t.ADE_Num).HasColumnName("ADE_Num");
            this.Property(t => t.Finalizado).HasColumnName("Finalizado");
        }
    }
}
