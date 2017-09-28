using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipo_Doc_ChegadaMap : EntityTypeConfiguration<Tipo_Doc_Chegada>
    {
        public Tipo_Doc_ChegadaMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.descricao)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("Tipo_Doc_Chegada");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
        }
    }
}
