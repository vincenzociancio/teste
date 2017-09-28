using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ImportadoreMap : EntityTypeConfiguration<Importadore>
    {
        public ImportadoreMap()
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
                .HasMaxLength(4);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(250);

            this.Property(t => t.Pais)
                .HasMaxLength(3);

            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .HasMaxLength(14);

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

            this.Property(t => t.link)
                .HasMaxLength(50);

            this.Property(t => t.CAE)
                .HasMaxLength(15);

            this.Property(t => t.Telefone)
                .HasMaxLength(15);

            this.Property(t => t.Inscricao_Municipal)
                .HasMaxLength(15);

            this.Property(t => t.EMAIL)
                .HasMaxLength(80);

            this.Property(t => t.EMAIL_MONITORACAO)
                .HasMaxLength(80);

            // Table & Column Mappings
            this.ToTable("Importadores");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
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
            this.Property(t => t.link).HasColumnName("link");
            this.Property(t => t.CAE).HasColumnName("CAE");
            this.Property(t => t.Telefone).HasColumnName("Telefone");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.Acesso_WEB_MS).HasColumnName("Acesso_WEB_MS");
            this.Property(t => t.Acesso_WEB_CLI).HasColumnName("Acesso_WEB_CLI");
            this.Property(t => t.Acesso_WEB_REC).HasColumnName("Acesso_WEB_REC");
            this.Property(t => t.BASE_ICMS).HasColumnName("BASE_ICMS");
            this.Property(t => t.MOV_REPETRO).HasColumnName("MOV_REPETRO");
            this.Property(t => t.Inscricao_Municipal).HasColumnName("Inscricao_Municipal");
            this.Property(t => t.EMAIL).HasColumnName("EMAIL");
            this.Property(t => t.FATURA_ISS).HasColumnName("FATURA_ISS");
            this.Property(t => t.EMAIL_MONITORACAO).HasColumnName("EMAIL_MONITORACAO");
            this.Property(t => t.Exporta_Para_Siscomex).HasColumnName("Exporta_Para_Siscomex");
            this.Property(t => t.Apenc_Liberado).HasColumnName("Apenc_Liberado");
            this.Property(t => t.fk_contrato_financ).HasColumnName("fk_contrato_financ");
            this.Property(t => t.lixo).HasColumnName("lixo");
        }
    }
}
