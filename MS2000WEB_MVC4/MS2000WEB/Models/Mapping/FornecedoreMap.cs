using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FornecedoreMap : EntityTypeConfiguration<Fornecedore>
    {
        public FornecedoreMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.id });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(60);

            this.Property(t => t.Pais)
                .HasMaxLength(3);

            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .HasMaxLength(18);

            this.Property(t => t.CGC_CPF)
                .HasMaxLength(10);

            this.Property(t => t.Tipo_Importador)
                .HasMaxLength(1);

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

            this.Property(t => t.Banco)
                .HasMaxLength(5);

            this.Property(t => t.Agencia)
                .HasMaxLength(5);

            this.Property(t => t.Conta_Corrente)
                .HasMaxLength(8);

            this.Property(t => t.Contato)
                .HasMaxLength(50);

            this.Property(t => t.Telefone)
                .HasMaxLength(15);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.Fantasia)
                .HasMaxLength(60);

            // Table & Column Mappings
            this.ToTable("Fornecedores");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.id).HasColumnName("id");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
            this.Property(t => t.Pais).HasColumnName("Pais");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Tipo_Importador).HasColumnName("Tipo_Importador");
            this.Property(t => t.Endereco).HasColumnName("Endereco");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Complemento).HasColumnName("Complemento");
            this.Property(t => t.Bairro).HasColumnName("Bairro");
            this.Property(t => t.Cidade).HasColumnName("Cidade");
            this.Property(t => t.CEP).HasColumnName("CEP");
            this.Property(t => t.UF).HasColumnName("UF");
            this.Property(t => t.Estado).HasColumnName("Estado");
            this.Property(t => t.Inscricao_Estadual).HasColumnName("Inscricao_Estadual");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Conta_Corrente_Registro).HasColumnName("Conta_Corrente_Registro");
            this.Property(t => t.Conta_Corrente_Deposito).HasColumnName("Conta_Corrente_Deposito");
            this.Property(t => t.Contato).HasColumnName("Contato");
            this.Property(t => t.Telefone).HasColumnName("Telefone");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.Fantasia).HasColumnName("Fantasia");
            this.Property(t => t.Ind_Qualidade).HasColumnName("Ind_Qualidade");
            this.Property(t => t.Ind_EmpresaResponsabilidade).HasColumnName("Ind_EmpresaResponsabilidade");
            this.Property(t => t.Ind_Garantia).HasColumnName("Ind_Garantia");
            this.Property(t => t.Dias_Garantia).HasColumnName("Dias_Garantia");
        }
    }
}
