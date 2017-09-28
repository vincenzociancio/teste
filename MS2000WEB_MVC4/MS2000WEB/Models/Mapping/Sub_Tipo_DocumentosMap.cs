using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Sub_Tipo_DocumentosMap : EntityTypeConfiguration<Sub_Tipo_Documentos>
    {
        public Sub_Tipo_DocumentosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Tipo_doc, t.codigo });

            // Properties
            this.Property(t => t.Tipo_doc)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(70);

            this.Property(t => t.Orgao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Sub_Tipo_Documentos");
            this.Property(t => t.Tipo_doc).HasColumnName("Tipo_doc");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Orgao).HasColumnName("Orgao");
            this.Property(t => t.Mostra_usuario_net).HasColumnName("Mostra_usuario_net");
        }
    }
}
