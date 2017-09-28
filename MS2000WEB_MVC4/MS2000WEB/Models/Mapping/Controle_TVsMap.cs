using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_TVsMap : EntityTypeConfiguration<Controle_TVs>
    {
        public Controle_TVsMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_TV);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Computador)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Controle_TVs");
            this.Property(t => t.PK_TV).HasColumnName("PK_TV");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Computador).HasColumnName("Computador");
            this.Property(t => t.Exibir_Todos_Importadores).HasColumnName("Exibir_Todos_Importadores");
            this.Property(t => t.Inativo).HasColumnName("Inativo");
            this.Property(t => t.FK_Programa).HasColumnName("FK_Programa");
        }
    }
}
