using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_de_ProcessosMap : EntityTypeConfiguration<Tipos_de_Processos>
    {
        public Tipos_de_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(100);

            this.Property(t => t.Responsavel_EmpresaC)
                .HasMaxLength(10);

            this.Property(t => t.Responsavel_EmpresaO)
                .HasMaxLength(10);

            this.Property(t => t.Responsavel_EmpresaF)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Tipos_de_Processos");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.Responsavel_EmpresaC).HasColumnName("Responsavel_EmpresaC");
            this.Property(t => t.Responsavel_EmpresaO).HasColumnName("Responsavel_EmpresaO");
            this.Property(t => t.Responsavel_EmpresaF).HasColumnName("Responsavel_EmpresaF");
        }
    }
}
