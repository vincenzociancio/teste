using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Numerarios_MovimentosMap : EntityTypeConfiguration<Controle_Numerarios_Movimentos>
    {
        public Controle_Numerarios_MovimentosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Movimento);

            // Properties
            this.Property(t => t.Autorizador)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Cancelado_Por)
                .HasMaxLength(20);

            this.Property(t => t.Enviado_Por)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Controle_Numerarios_Movimentos");
            this.Property(t => t.PK_Movimento).HasColumnName("PK_Movimento");
            this.Property(t => t.FK_Solicitacao).HasColumnName("FK_Solicitacao");
            this.Property(t => t.Data_Movimento).HasColumnName("Data_Movimento");
            this.Property(t => t.Hora_Movimento).HasColumnName("Hora_Movimento");
            this.Property(t => t.Autorizador).HasColumnName("Autorizador");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Cancelado_Por).HasColumnName("Cancelado_Por");
            this.Property(t => t.Validade).HasColumnName("Validade");
            this.Property(t => t.Enviado_Por).HasColumnName("Enviado_Por");
        }
    }
}
