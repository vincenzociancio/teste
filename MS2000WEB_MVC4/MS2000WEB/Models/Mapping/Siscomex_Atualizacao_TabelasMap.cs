using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Siscomex_Atualizacao_TabelasMap : EntityTypeConfiguration<Siscomex_Atualizacao_Tabelas>
    {
        public Siscomex_Atualizacao_TabelasMap()
        {
            // Primary Key
            this.HasKey(t => t.Tabela);

            // Properties
            this.Property(t => t.Tabela)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Descricao)
                .HasMaxLength(100);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Siscomex_Atualizacao_Tabelas");
            this.Property(t => t.Tabela).HasColumnName("Tabela");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Atualiza_WEB).HasColumnName("Atualiza_WEB");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data_Atualizacao).HasColumnName("Data_Atualizacao");
        }
    }
}
