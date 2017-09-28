using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Fabricantes_ProdutoresMap : EntityTypeConfiguration<Fabricantes_Produtores>
    {
        public Fabricantes_ProdutoresMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(60);

            this.Property(t => t.Pais)
                .HasMaxLength(3);

            this.Property(t => t.CGC_CPF)
                .HasMaxLength(18);

            this.Property(t => t.Endereco)
                .HasMaxLength(40);

            this.Property(t => t.Numero)
                .HasMaxLength(6);

            this.Property(t => t.Complemento)
                .HasMaxLength(21);

            this.Property(t => t.Bairro)
                .HasMaxLength(25);

            this.Property(t => t.Cidade)
                .HasMaxLength(25);

            this.Property(t => t.CEP)
                .HasMaxLength(10);

            this.Property(t => t.UF)
                .HasMaxLength(2);

            this.Property(t => t.Estado)
                .HasMaxLength(25);

            this.Property(t => t.Inscricao_Estadual)
                .HasMaxLength(15);

            this.Property(t => t.PaisOrigem)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Fabricantes_Produtores");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
            this.Property(t => t.Pais).HasColumnName("Pais");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Endereco).HasColumnName("Endereco");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Complemento).HasColumnName("Complemento");
            this.Property(t => t.Bairro).HasColumnName("Bairro");
            this.Property(t => t.Cidade).HasColumnName("Cidade");
            this.Property(t => t.CEP).HasColumnName("CEP");
            this.Property(t => t.UF).HasColumnName("UF");
            this.Property(t => t.Estado).HasColumnName("Estado");
            this.Property(t => t.Inscricao_Estadual).HasColumnName("Inscricao_Estadual");
            this.Property(t => t.PaisOrigem).HasColumnName("PaisOrigem");
        }
    }
}
