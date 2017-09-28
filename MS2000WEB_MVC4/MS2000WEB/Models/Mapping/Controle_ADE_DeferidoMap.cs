using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_ADE_DeferidoMap : EntityTypeConfiguration<Controle_ADE_Deferido>
    {
        public Controle_ADE_DeferidoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_ADED, t.FK_Importador });

            // Properties
            this.Property(t => t.PK_ADED)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Embarcacao)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Num_ADE_Executivo)
                .HasMaxLength(3);

            this.Property(t => t.Path_PDF)
                .HasMaxLength(200);

            this.Property(t => t.Num_Contrato)
                .HasMaxLength(50);

            this.Property(t => t.Num_Processo)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Controle_ADE_Deferido");
            this.Property(t => t.PK_ADED).HasColumnName("PK_ADED");
            this.Property(t => t.FK_Importador).HasColumnName("FK_Importador");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.DT_VECTO_ADE).HasColumnName("DT_VECTO_ADE");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
            this.Property(t => t.DT_Publicacao).HasColumnName("DT_Publicacao");
            this.Property(t => t.Num_ADE_Executivo).HasColumnName("Num_ADE_Executivo");
            this.Property(t => t.Path_PDF).HasColumnName("Path_PDF");
            this.Property(t => t.Finalizado).HasColumnName("Finalizado");
            this.Property(t => t.Vencido).HasColumnName("Vencido");
            this.Property(t => t.Num_Contrato).HasColumnName("Num_Contrato");
            this.Property(t => t.Num_Processo).HasColumnName("Num_Processo");
        }
    }
}
