using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contratos_Fornecedores_Cadastrados_UploadMap : EntityTypeConfiguration<Contratos_Fornecedores_Cadastrados_Upload>
    {
        public Contratos_Fornecedores_Cadastrados_UploadMap()
        {
            // Primary Key
            this.HasKey(t => t.id);

            // Properties
            this.Property(t => t.Descricao_Arquivo)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Caminho)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Tipo_Arquivo)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.Titulo)
                .HasMaxLength(50);

            this.Property(t => t.fk_usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Contratos_Fornecedores_Cadastrados_Upload");
            this.Property(t => t.id).HasColumnName("id");
            this.Property(t => t.fk_contrato).HasColumnName("fk_contrato");
            this.Property(t => t.Descricao_Arquivo).HasColumnName("Descricao_Arquivo");
            this.Property(t => t.Caminho).HasColumnName("Caminho");
            this.Property(t => t.Tipo_Arquivo).HasColumnName("Tipo_Arquivo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Lixo).HasColumnName("Lixo");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
            this.Property(t => t.fk_usuario).HasColumnName("fk_usuario");

            // Relationships
            this.HasRequired(t => t.Contratos_Fornecedores_Cadastrados_Financeiro)
                .WithMany(t => t.Contratos_Fornecedores_Cadastrados_Upload)
                .HasForeignKey(d => d.fk_contrato);

        }
    }
}
