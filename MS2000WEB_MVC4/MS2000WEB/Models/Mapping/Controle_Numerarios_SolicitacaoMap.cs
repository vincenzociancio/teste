using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Numerarios_SolicitacaoMap : EntityTypeConfiguration<Controle_Numerarios_Solicitacao>
    {
        public Controle_Numerarios_SolicitacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Solicitacao);

            // Properties
            this.Property(t => t.FK_MsNumero)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Solicitante)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Autorizador_Atual)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Cancelado_Por)
                .HasMaxLength(20);

            this.Property(t => t.OBS_Cancelamento)
                .HasMaxLength(500);

            this.Property(t => t.OBS_NaoAutorizado)
                .HasMaxLength(500);

            this.Property(t => t.OBS_Solicitacao)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("Controle_Numerarios_Solicitacao");
            this.Property(t => t.PK_Solicitacao).HasColumnName("PK_Solicitacao");
            this.Property(t => t.FK_MsNumero).HasColumnName("FK_MsNumero");
            this.Property(t => t.Data_Solicitacao).HasColumnName("Data_Solicitacao");
            this.Property(t => t.Hora_Solicitacao).HasColumnName("Hora_Solicitacao");
            this.Property(t => t.Solicitante).HasColumnName("Solicitante");
            this.Property(t => t.Autorizador_Atual).HasColumnName("Autorizador_Atual");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Status_Atual).HasColumnName("Status_Atual");
            this.Property(t => t.Cancelado_Por).HasColumnName("Cancelado_Por");
            this.Property(t => t.OBS_Cancelamento).HasColumnName("OBS_Cancelamento");
            this.Property(t => t.OBS_NaoAutorizado).HasColumnName("OBS_NaoAutorizado");
            this.Property(t => t.OBS_Solicitacao).HasColumnName("OBS_Solicitacao");
            this.Property(t => t.Flag).HasColumnName("Flag");
        }
    }
}
