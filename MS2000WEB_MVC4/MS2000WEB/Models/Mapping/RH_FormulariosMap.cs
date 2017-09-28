using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RH_FormulariosMap : EntityTypeConfiguration<RH_Formularios>
    {
        public RH_FormulariosMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Descricao_Arquivo)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Caminho)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Tipo_Arquivo)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.Titulo)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("RH_Formularios");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Descricao_Arquivo).HasColumnName("Descricao_Arquivo");
            this.Property(t => t.Caminho).HasColumnName("Caminho");
            this.Property(t => t.Tipo_Arquivo).HasColumnName("Tipo_Arquivo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Lixo).HasColumnName("Lixo");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
        }
    }
}
