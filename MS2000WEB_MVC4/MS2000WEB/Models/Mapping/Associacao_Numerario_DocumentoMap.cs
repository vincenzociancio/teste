using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Associacao_Numerario_DocumentoMap : EntityTypeConfiguration<Associacao_Numerario_Documento>
    {
        public Associacao_Numerario_DocumentoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Codigo, t.Cod_Tp_Numerarios });

            // Properties
            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Cod_Tp_Numerarios)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Cod_Tp_Documentos)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Cod_Sub_Tp_Documentos)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Associacao_Numerario_Documento");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Cod_Tp_Numerarios).HasColumnName("Cod_Tp_Numerarios");
            this.Property(t => t.Cod_Tp_Documentos).HasColumnName("Cod_Tp_Documentos");
            this.Property(t => t.Cod_Sub_Tp_Documentos).HasColumnName("Cod_Sub_Tp_Documentos");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
        }
    }
}
