using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSTabelas_FOLLOWUPMap : EntityTypeConfiguration<MSTabelas_FOLLOWUP>
    {
        public MSTabelas_FOLLOWUPMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Nome_Tabela_SQL)
                .HasMaxLength(50);

            this.Property(t => t.Nome_Tabela_Access)
                .HasMaxLength(50);

            this.Property(t => t.Processado)
                .HasMaxLength(1);

            this.Property(t => t.Data)
                .HasMaxLength(20);

            this.Property(t => t.Observacao)
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("MSTabelas_FOLLOWUP");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Nome_Tabela_SQL).HasColumnName("Nome_Tabela_SQL");
            this.Property(t => t.Nome_Tabela_Access).HasColumnName("Nome_Tabela_Access");
            this.Property(t => t.Processado).HasColumnName("Processado");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Observacao).HasColumnName("Observacao");
        }
    }
}
