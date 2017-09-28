using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_Classificacao_NewMap : EntityTypeConfiguration<Pre_Classificacao_New>
    {
        public Pre_Classificacao_NewMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Tipo)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Pre_Classificacao_New");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.FK_PreProcesso).HasColumnName("FK_PreProcesso");
            this.Property(t => t.FK_Layout).HasColumnName("FK_Layout");
            this.Property(t => t.Linha).HasColumnName("Linha");
            this.Property(t => t.Coluna).HasColumnName("Coluna");
            this.Property(t => t.Conteudo).HasColumnName("Conteudo");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.TipoFormato).HasColumnName("TipoFormato");
        }
    }
}
