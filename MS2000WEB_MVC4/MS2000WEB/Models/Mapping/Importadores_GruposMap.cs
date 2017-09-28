using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Importadores_GruposMap : EntityTypeConfiguration<Importadores_Grupos>
    {
        public Importadores_GruposMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Codigo, t.Nome_Grupo });

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Nome_Grupo)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Avisos_Operacionais)
                .HasMaxLength(500);

            this.Property(t => t.Avisos_Financeiros)
                .HasMaxLength(500);

            this.Property(t => t.Avisos_Gerenciais)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("Importadores_Grupos");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Nome_Grupo).HasColumnName("Nome_Grupo");
            this.Property(t => t.Avisos_Operacionais).HasColumnName("Avisos_Operacionais");
            this.Property(t => t.Avisos_Financeiros).HasColumnName("Avisos_Financeiros");
            this.Property(t => t.Avisos_Gerenciais).HasColumnName("Avisos_Gerenciais");
        }
    }
}
