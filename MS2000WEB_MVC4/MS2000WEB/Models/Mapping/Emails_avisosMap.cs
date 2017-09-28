using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Emails_avisosMap : EntityTypeConfiguration<Emails_avisos>
    {
        public Emails_avisosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Tipo, t.Email });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Email)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Nome_completo)
                .HasMaxLength(50);

            this.Property(t => t.Parametros)
                .HasMaxLength(255);

            this.Property(t => t.Plataforma)
                .HasMaxLength(100);

            this.Property(t => t.Cnpj_Importador)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Emails_avisos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Nome_completo).HasColumnName("Nome_completo");
            this.Property(t => t.Parametros).HasColumnName("Parametros");
            this.Property(t => t.HTML).HasColumnName("HTML");
            this.Property(t => t.Plataforma).HasColumnName("Plataforma");
            this.Property(t => t.Cnpj_Importador).HasColumnName("Cnpj_Importador");
            this.Property(t => t.Para).HasColumnName("Para");
            this.Property(t => t.Cc).HasColumnName("Cc");
            this.Property(t => t.CCo).HasColumnName("CCo");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
        }
    }
}
