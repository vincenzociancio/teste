using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Hierarquico_Clientes_CelMap : EntityTypeConfiguration<Controle_Hierarquico_Clientes_Cel>
    {
        public Controle_Hierarquico_Clientes_CelMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Cliente_Cel);

            // Properties
            this.Property(t => t.FK_Cliente)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_Hierarquico_Clientes_Cel");
            this.Property(t => t.PK_Cliente_Cel).HasColumnName("PK_Cliente_Cel");
            this.Property(t => t.FK_Cliente).HasColumnName("FK_Cliente");
            this.Property(t => t.FK_Celula).HasColumnName("FK_Celula");
        }
    }
}
