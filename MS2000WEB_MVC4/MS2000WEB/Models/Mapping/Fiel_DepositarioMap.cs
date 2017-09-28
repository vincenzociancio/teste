using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Fiel_DepositarioMap : EntityTypeConfiguration<Fiel_Depositario>
    {
        public Fiel_DepositarioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CNPJ, t.Codigo_Fiel });

            // Properties
            this.Property(t => t.CNPJ)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Codigo_Fiel)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.CNPJ_Empresa_Fiel)
                .HasMaxLength(18);

            this.Property(t => t.Razao_Social_Fiel)
                .HasMaxLength(200);

            this.Property(t => t.Endereco)
                .HasMaxLength(200);

            this.Property(t => t.Descricao)
                .HasMaxLength(200);

            this.Property(t => t.Nome_Fiel)
                .HasMaxLength(200);

            this.Property(t => t.CPF_Fiel)
                .HasMaxLength(11);

            // Table & Column Mappings
            this.ToTable("Fiel_Depositario");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.Codigo_Fiel).HasColumnName("Codigo_Fiel");
            this.Property(t => t.CNPJ_Empresa_Fiel).HasColumnName("CNPJ_Empresa_Fiel");
            this.Property(t => t.Razao_Social_Fiel).HasColumnName("Razao_Social_Fiel");
            this.Property(t => t.Endereco).HasColumnName("Endereco");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Nome_Fiel).HasColumnName("Nome_Fiel");
            this.Property(t => t.CPF_Fiel).HasColumnName("CPF_Fiel");
        }
    }
}
