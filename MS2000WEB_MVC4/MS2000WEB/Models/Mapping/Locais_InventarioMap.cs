using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Locais_InventarioMap : EntityTypeConfiguration<Locais_Inventario>
    {
        public Locais_InventarioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Contrato, t.Local });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Contrato)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Local)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(250);

            this.Property(t => t.Tipo_local)
                .HasMaxLength(4);

            this.Property(t => t.Processo_Adm)
                .HasMaxLength(25);

            this.Property(t => t.CNPJ)
                .HasMaxLength(18);

            this.Property(t => t.Unidade_Jur)
                .HasMaxLength(7);

            this.Property(t => t.Fiel_nome)
                .HasMaxLength(100);

            this.Property(t => t.Fiel_cpf)
                .HasMaxLength(18);

            this.Property(t => t.SIGLA)
                .HasMaxLength(4);

            this.Property(t => t.Centro_Custo)
                .HasMaxLength(20);

            this.Property(t => t.Codigo_Contabil)
                .HasMaxLength(20);

            this.Property(t => t.Setor)
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Locais_Inventario");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Tipo_local).HasColumnName("Tipo_local");
            this.Property(t => t.Processo_Adm).HasColumnName("Processo_Adm");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.Unidade_Jur).HasColumnName("Unidade_Jur");
            this.Property(t => t.Fiel_nome).HasColumnName("Fiel_nome");
            this.Property(t => t.Fiel_cpf).HasColumnName("Fiel_cpf");
            this.Property(t => t.SIGLA).HasColumnName("SIGLA");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.Centro_Custo).HasColumnName("Centro_Custo");
            this.Property(t => t.Codigo_Contabil).HasColumnName("Codigo_Contabil");
            this.Property(t => t.ACESSO_RF_ANGRA).HasColumnName("ACESSO_RF_ANGRA");
            this.Property(t => t.Setor).HasColumnName("Setor");
        }
    }
}
