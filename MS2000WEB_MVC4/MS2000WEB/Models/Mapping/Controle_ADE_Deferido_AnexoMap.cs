using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_ADE_Deferido_AnexoMap : EntityTypeConfiguration<Controle_ADE_Deferido_Anexo>
    {
        public Controle_ADE_Deferido_AnexoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Anexo);

            // Properties
            this.Property(t => t.Descricao)
                .HasMaxLength(30);

            this.Property(t => t.Caminho)
                .IsFixedLength()
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("Controle_ADE_Deferido_Anexo");
            this.Property(t => t.PK_Anexo).HasColumnName("PK_Anexo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Caminho).HasColumnName("Caminho");
            this.Property(t => t.FK_ADED).HasColumnName("FK_ADED");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
