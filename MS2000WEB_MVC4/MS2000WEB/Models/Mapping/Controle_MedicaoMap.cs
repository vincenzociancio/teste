using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_MedicaoMap : EntityTypeConfiguration<Controle_Medicao>
    {
        public Controle_MedicaoMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Importador_Agrupado)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(50);

            this.Property(t => t.NFiscal)
                .HasMaxLength(6);

            // Table & Column Mappings
            this.ToTable("Controle_Medicao");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Importador_Agrupado).HasColumnName("Importador_Agrupado");
            this.Property(t => t.Data_Medicao).HasColumnName("Data_Medicao");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
        }
    }
}
