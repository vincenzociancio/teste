using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Avaliacao_AvaliacaoMap : EntityTypeConfiguration<Avaliacao_Avaliacao>
    {
        public Avaliacao_AvaliacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Descricao)
                .HasMaxLength(150);

            this.Property(t => t.Tipo)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Avaliacao_Avaliacao");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Data_Criacao).HasColumnName("Data_Criacao");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Quantidade_Pergunta).HasColumnName("Quantidade_Pergunta");
            this.Property(t => t.Data_de_Aplicacao).HasColumnName("Data_de_Aplicacao");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
        }
    }
}
