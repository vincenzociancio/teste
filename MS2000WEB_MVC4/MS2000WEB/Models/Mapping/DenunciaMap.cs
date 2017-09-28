using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class DenunciaMap : EntityTypeConfiguration<Denuncia>
    {
        public DenunciaMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Nome)
                .HasMaxLength(100);

            this.Property(t => t.Email)
                .HasMaxLength(100);

            this.Property(t => t.Protocolo)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Denuncia");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Mensagem).HasColumnName("Mensagem");
            this.Property(t => t.Data_Abertura).HasColumnName("Data_Abertura");
            this.Property(t => t.Protocolo).HasColumnName("Protocolo");
            this.Property(t => t.Resposta).HasColumnName("Resposta");
            this.Property(t => t.Body).HasColumnName("Body");
        }
    }
}
