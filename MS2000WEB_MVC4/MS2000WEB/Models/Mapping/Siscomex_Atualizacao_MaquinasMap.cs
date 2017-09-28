using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Siscomex_Atualizacao_MaquinasMap : EntityTypeConfiguration<Siscomex_Atualizacao_Maquinas>
    {
        public Siscomex_Atualizacao_MaquinasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Maquina, t.Tabela });

            // Properties
            this.Property(t => t.Maquina)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Tabela)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Siscomex_Atualizacao_Maquinas");
            this.Property(t => t.Maquina).HasColumnName("Maquina");
            this.Property(t => t.Tabela).HasColumnName("Tabela");
            this.Property(t => t.Data_Atualizacao).HasColumnName("Data_Atualizacao");
        }
    }
}
