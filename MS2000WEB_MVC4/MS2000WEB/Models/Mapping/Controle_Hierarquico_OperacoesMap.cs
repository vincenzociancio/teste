using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Hierarquico_OperacoesMap : EntityTypeConfiguration<Controle_Hierarquico_Operacoes>
    {
        public Controle_Hierarquico_OperacoesMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_Operacao, t.Formulario, t.Operacao, t.Usuario, t.DataHora });

            // Properties
            this.Property(t => t.PK_Operacao)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Formulario)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Operacao)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Controle_Hierarquico_Operacoes");
            this.Property(t => t.PK_Operacao).HasColumnName("PK_Operacao");
            this.Property(t => t.Formulario).HasColumnName("Formulario");
            this.Property(t => t.Operacao).HasColumnName("Operacao");
            this.Property(t => t.PK_Registro).HasColumnName("PK_Registro");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.DataHora).HasColumnName("DataHora");
        }
    }
}
