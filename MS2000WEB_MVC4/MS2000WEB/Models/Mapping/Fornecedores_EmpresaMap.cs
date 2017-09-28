using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Fornecedores_EmpresaMap : EntityTypeConfiguration<Fornecedores_Empresa>
    {
        public Fornecedores_EmpresaMap()
        {
            // Primary Key
            this.HasKey(t => t.id);

            // Properties
            this.Property(t => t.Razao_Social)
                .IsRequired()
                .HasMaxLength(40);

            this.Property(t => t.Telefone)
                .HasMaxLength(15);

            this.Property(t => t.Contato)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Fornecedores_Empresa");
            this.Property(t => t.id).HasColumnName("id");
            this.Property(t => t.fk_fornecedor).HasColumnName("fk_fornecedor");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
            this.Property(t => t.Telefone).HasColumnName("Telefone");
            this.Property(t => t.Contato).HasColumnName("Contato");
        }
    }
}
