using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FiliaiMap : EntityTypeConfiguration<Filiai>
    {
        public FiliaiMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Codigo_Empresa, t.Codigo_Filial });

            // Properties
            this.Property(t => t.Codigo_Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo_Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

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

            this.Property(t => t.UF)
                .HasMaxLength(2);

            this.Property(t => t.CEP)
                .HasMaxLength(10);

            this.Property(t => t.Telefone)
                .HasMaxLength(40);

            this.Property(t => t.Fax)
                .HasMaxLength(40);

            // Table & Column Mappings
            this.ToTable("Filiais");
            this.Property(t => t.Codigo_Empresa).HasColumnName("Codigo_Empresa");
            this.Property(t => t.Codigo_Filial).HasColumnName("Codigo_Filial");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Endereco).HasColumnName("Endereco");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Complemento).HasColumnName("Complemento");
            this.Property(t => t.Bairro).HasColumnName("Bairro");
            this.Property(t => t.Cidade).HasColumnName("Cidade");
            this.Property(t => t.UF).HasColumnName("UF");
            this.Property(t => t.CEP).HasColumnName("CEP");
            this.Property(t => t.Telefone).HasColumnName("Telefone");
            this.Property(t => t.Fax).HasColumnName("Fax");
        }
    }
}
