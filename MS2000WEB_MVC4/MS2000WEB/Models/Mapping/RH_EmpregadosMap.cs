using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RH_EmpregadosMap : EntityTypeConfiguration<RH_Empregados>
    {
        public RH_EmpregadosMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Matricula)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.EstadoCivil)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.CPF)
                .IsRequired()
                .HasMaxLength(11);

            this.Property(t => t.Sexo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.RG)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.RG_Orgao)
                .HasMaxLength(10);

            this.Property(t => t.PIS)
                .HasMaxLength(11);

            this.Property(t => t.CTPS)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.CTPS_Serie)
                .HasMaxLength(20);

            this.Property(t => t.CTPS_UF)
                .HasMaxLength(2);

            this.Property(t => t.Titulo_Secao)
                .HasMaxLength(10);

            this.Property(t => t.Pai_Nome)
                .HasMaxLength(100);

            this.Property(t => t.Mae_Nome)
                .HasMaxLength(100);

            this.Property(t => t.Endereco_Logradouro)
                .HasMaxLength(100);

            this.Property(t => t.Endereco_Numero)
                .HasMaxLength(10);

            this.Property(t => t.Endereco_Complemento)
                .HasMaxLength(30);

            this.Property(t => t.Endereco_Bairro)
                .HasMaxLength(30);

            this.Property(t => t.Endereco_Cidade)
                .HasMaxLength(30);

            this.Property(t => t.Endereco_UF)
                .HasMaxLength(2);

            this.Property(t => t.Endereco_CEP)
                .HasMaxLength(8);

            this.Property(t => t.Naturalidade)
                .HasMaxLength(30);

            this.Property(t => t.Escolaridade)
                .HasMaxLength(1);

            this.Property(t => t.Certificado_Reservista)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("RH_Empregados");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Matricula).HasColumnName("Matricula");
            this.Property(t => t.DataNascimento).HasColumnName("DataNascimento");
            this.Property(t => t.EstadoCivil).HasColumnName("EstadoCivil");
            this.Property(t => t.CPF).HasColumnName("CPF");
            this.Property(t => t.Sexo).HasColumnName("Sexo");
            this.Property(t => t.RG).HasColumnName("RG");
            this.Property(t => t.RG_Orgao).HasColumnName("RG_Orgao");
            this.Property(t => t.RG_Emissao).HasColumnName("RG_Emissao");
            this.Property(t => t.PIS).HasColumnName("PIS");
            this.Property(t => t.CTPS).HasColumnName("CTPS");
            this.Property(t => t.CTPS_Serie).HasColumnName("CTPS_Serie");
            this.Property(t => t.CTPS_UF).HasColumnName("CTPS_UF");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
            this.Property(t => t.Titulo_Zona).HasColumnName("Titulo_Zona");
            this.Property(t => t.Titulo_Secao).HasColumnName("Titulo_Secao");
            this.Property(t => t.Pai_Nome).HasColumnName("Pai_Nome");
            this.Property(t => t.Mae_Nome).HasColumnName("Mae_Nome");
            this.Property(t => t.Endereco_Logradouro).HasColumnName("Endereco_Logradouro");
            this.Property(t => t.Endereco_Numero).HasColumnName("Endereco_Numero");
            this.Property(t => t.Endereco_Complemento).HasColumnName("Endereco_Complemento");
            this.Property(t => t.Endereco_Bairro).HasColumnName("Endereco_Bairro");
            this.Property(t => t.Endereco_Cidade).HasColumnName("Endereco_Cidade");
            this.Property(t => t.Endereco_UF).HasColumnName("Endereco_UF");
            this.Property(t => t.Endereco_CEP).HasColumnName("Endereco_CEP");
            this.Property(t => t.Nacionalidade).HasColumnName("Nacionalidade");
            this.Property(t => t.Naturalidade).HasColumnName("Naturalidade");
            this.Property(t => t.Escolaridade).HasColumnName("Escolaridade");
            this.Property(t => t.Raca_Cor).HasColumnName("Raca_Cor");
            this.Property(t => t.Certificado_Reservista).HasColumnName("Certificado_Reservista");
        }
    }
}
