using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_CorrentesMap : EntityTypeConfiguration<Contas_Correntes>
    {
        public Contas_CorrentesMap()
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
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Banco_Caixa)
                .HasMaxLength(1);

            this.Property(t => t.Descricao)
                .HasMaxLength(45);

            this.Property(t => t.Banco)
                .HasMaxLength(5);

            this.Property(t => t.Agencia)
                .HasMaxLength(5);

            this.Property(t => t.Conta_Corrente)
                .HasMaxLength(8);

            this.Property(t => t.Nivel)
                .HasMaxLength(4);

            this.Property(t => t.Empresacc)
                .HasMaxLength(4);

            this.Property(t => t.Filialcc)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Contas_Correntes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Banco_Caixa).HasColumnName("Banco_Caixa");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Empresacc).HasColumnName("Empresacc");
            this.Property(t => t.Filialcc).HasColumnName("Filialcc");
            this.Property(t => t.ASCAA).HasColumnName("ASCAA");
            this.Property(t => t.Ativa).HasColumnName("Ativa");
        }
    }
}
