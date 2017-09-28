using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MesMap : EntityTypeConfiguration<Mes>
    {
        public MesMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.descricao)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Meses");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
        }
    }
}
