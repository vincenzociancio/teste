using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RH_FuncaoMap : EntityTypeConfiguration<RH_Funcao>
    {
        public RH_FuncaoMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.CBO)
                .HasMaxLength(6);

            // Table & Column Mappings
            this.ToTable("RH_Funcao");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.CBO).HasColumnName("CBO");
        }
    }
}
