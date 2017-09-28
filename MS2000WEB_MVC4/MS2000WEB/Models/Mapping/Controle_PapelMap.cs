using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_PapelMap : EntityTypeConfiguration<Controle_Papel>
    {
        public Controle_PapelMap()
        {
            // Primary Key
            this.HasKey(t => t.Data);

            // Properties
            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Fechado)
                .HasMaxLength(3);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Controle_Papel");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Debitos).HasColumnName("Debitos");
            this.Property(t => t.Creditos).HasColumnName("Creditos");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.Impressoes).HasColumnName("Impressoes");
            this.Property(t => t.Impressoes_Dia).HasColumnName("Impressoes_Dia");
            this.Property(t => t.Fechado).HasColumnName("Fechado");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
        }
    }
}
