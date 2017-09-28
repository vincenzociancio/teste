using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_NumerariosMap : EntityTypeConfiguration<Controle_Numerarios>
    {
        public Controle_NumerariosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Codigo, t.Processo, t.Cliente, t.Data_Solicitacao, t.Total, t.Status, t.Ativo });

            // Properties
            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Cliente)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.Solicitante)
                .HasMaxLength(10);

            this.Property(t => t.Autorizador)
                .HasMaxLength(10);

            this.Property(t => t.Status)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Ativo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Controle_Numerarios");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data_Solicitacao).HasColumnName("Data_Solicitacao");
            this.Property(t => t.Total).HasColumnName("Total");
            this.Property(t => t.Solicitante).HasColumnName("Solicitante");
            this.Property(t => t.Autorizador).HasColumnName("Autorizador");
            this.Property(t => t.Data_Recebimento).HasColumnName("Data_Recebimento");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
        }
    }
}
