using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipo_Documentos_IngMap : EntityTypeConfiguration<Tipo_Documentos_Ing>
    {
        public Tipo_Documentos_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.descricao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Tipo_Documentos_Ing");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
            this.Property(t => t.Tem_Vencimento).HasColumnName("Tem_Vencimento");
            this.Property(t => t.Mostra_usuario_net).HasColumnName("Mostra_usuario_net");
        }
    }
}
