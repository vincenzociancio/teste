using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_Classificacao_MatrizMap : EntityTypeConfiguration<Pre_Classificacao_Matriz>
    {
        public Pre_Classificacao_MatrizMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Descricao_Coluna)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Coluna_Excel)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Pre_Classificacao_Matriz");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Fk_layout).HasColumnName("Fk_layout");
            this.Property(t => t.Descricao_Coluna).HasColumnName("Descricao_Coluna");
            this.Property(t => t.Coluna_Excel).HasColumnName("Coluna_Excel");
            this.Property(t => t.Exibir).HasColumnName("Exibir");
            this.Property(t => t.Formatacao).HasColumnName("Formatacao");
        }
    }
}
