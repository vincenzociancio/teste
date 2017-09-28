using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Atas_ArquivosMap : EntityTypeConfiguration<Controle_Atas_Arquivos>
    {
        public Controle_Atas_ArquivosMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_atas_arquivos);

            // Properties
            this.Property(t => t.caminho)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.tipo_arquivo)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.descricao_arquivo)
                .IsRequired()
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("Controle_Atas_Arquivos");
            this.Property(t => t.pk_atas_arquivos).HasColumnName("pk_atas_arquivos");
            this.Property(t => t.fk_atas).HasColumnName("fk_atas");
            this.Property(t => t.caminho).HasColumnName("caminho");
            this.Property(t => t.tipo_arquivo).HasColumnName("tipo_arquivo");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.lixo).HasColumnName("lixo");
            this.Property(t => t.descricao_arquivo).HasColumnName("descricao_arquivo");

            // Relationships
            this.HasRequired(t => t.Controle_Atas)
                .WithMany(t => t.Controle_Atas_Arquivos)
                .HasForeignKey(d => d.fk_atas);

        }
    }
}
