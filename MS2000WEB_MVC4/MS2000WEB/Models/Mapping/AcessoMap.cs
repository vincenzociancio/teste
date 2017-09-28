using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoMap : EntityTypeConfiguration<Acesso>
    {
        public AcessoMap()
        {
            // Primary Key
            this.HasKey(t => t.Num);

            // Properties
            this.Property(t => t.ID)
                .HasMaxLength(10);

            this.Property(t => t.Filial)
                .HasMaxLength(3);

            this.Property(t => t.Tipo)
                .HasMaxLength(7);

            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .HasMaxLength(14);

            this.Property(t => t.Empresa)
                .HasMaxLength(60);

            this.Property(t => t.Usuario)
                .HasMaxLength(250);

            this.Property(t => t.Pagina)
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("Acesso");
            this.Property(t => t.Num).HasColumnName("Num");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.Pagina).HasColumnName("Pagina");
            this.Property(t => t.Parametros).HasColumnName("Parametros");
        }
    }
}
