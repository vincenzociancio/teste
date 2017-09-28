using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Notas_Fiscais_ServicosMap : EntityTypeConfiguration<Notas_Fiscais_Servicos>
    {
        public Notas_Fiscais_ServicosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.NFiscal });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.NFiscal)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.Importador)
                .HasMaxLength(4);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(60);

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

            this.Property(t => t.Cond_Pagto)
                .HasMaxLength(50);

            this.Property(t => t.Nat_Serv)
                .HasMaxLength(50);

            this.Property(t => t.Codigo_Fiscal)
                .HasMaxLength(50);

            this.Property(t => t.LOTE_RPS)
                .HasMaxLength(50);

            this.Property(t => t.Inscricao_Municipal)
                .HasMaxLength(15);

            this.Property(t => t.EMAIL)
                .HasMaxLength(80);

            this.Property(t => t.Telefone)
                .HasMaxLength(15);

            this.Property(t => t.NFiscal_e)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Notas_Fiscais_Servicos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
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
            this.Property(t => t.Cond_Pagto).HasColumnName("Cond_Pagto");
            this.Property(t => t.Nat_Serv).HasColumnName("Nat_Serv");
            this.Property(t => t.Codigo_Fiscal).HasColumnName("Codigo_Fiscal");
            this.Property(t => t.Data_emissao).HasColumnName("Data_emissao");
            this.Property(t => t.Percentual_ISS).HasColumnName("Percentual_ISS");
            this.Property(t => t.Percentual_IRRF).HasColumnName("Percentual_IRRF");
            this.Property(t => t.Percentual_PCC).HasColumnName("Percentual_PCC");
            this.Property(t => t.Vatotnota).HasColumnName("Vatotnota");
            this.Property(t => t.Cancelada).HasColumnName("Cancelada");
            this.Property(t => t.Valservico).HasColumnName("Valservico");
            this.Property(t => t.Data_Recebimento).HasColumnName("Data_Recebimento");
            this.Property(t => t.LOTE_RPS).HasColumnName("LOTE_RPS");
            this.Property(t => t.Inscricao_Municipal).HasColumnName("Inscricao_Municipal");
            this.Property(t => t.EMAIL).HasColumnName("EMAIL");
            this.Property(t => t.Telefone).HasColumnName("Telefone");
            this.Property(t => t.NFiscal_e).HasColumnName("NFiscal_e");
        }
    }
}
