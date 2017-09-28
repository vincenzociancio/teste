using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_Numerario_ObrigatorioMap : EntityTypeConfiguration<Tipos_Numerario_Obrigatorio>
    {
        public Tipos_Numerario_ObrigatorioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_ID, t.FK_Tipo_Processo, t.FK_Tipo_Declaracao, t.FK_Tipo_Numerario, t.Plano_Contas });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Tipo_Processo)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.FK_Tipo_Declaracao)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.FK_Tipo_Numerario)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Plano_Contas)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Tipos_Numerario_Obrigatorio");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Tipo_Processo).HasColumnName("FK_Tipo_Processo");
            this.Property(t => t.FK_Tipo_Declaracao).HasColumnName("FK_Tipo_Declaracao");
            this.Property(t => t.FK_Tipo_Numerario).HasColumnName("FK_Tipo_Numerario");
            this.Property(t => t.Plano_Contas).HasColumnName("Plano_Contas");
        }
    }
}
