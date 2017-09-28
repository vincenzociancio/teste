using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ATUALIZANETMap : EntityTypeConfiguration<ATUALIZANET>
    {
        public ATUALIZANETMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Tabela, t.Chave, t.Tipo });

            // Properties
            this.Property(t => t.Tabela)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Chave)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("ATUALIZANET");
            this.Property(t => t.Tabela).HasColumnName("Tabela");
            this.Property(t => t.Chave).HasColumnName("Chave");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Processa).HasColumnName("Processa");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.Enviou).HasColumnName("Enviou");
        }
    }
}
