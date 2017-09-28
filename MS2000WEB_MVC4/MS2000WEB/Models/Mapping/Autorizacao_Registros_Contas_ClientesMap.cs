using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Autorizacao_Registros_Contas_ClientesMap : EntityTypeConfiguration<Autorizacao_Registros_Contas_Clientes>
    {
        public Autorizacao_Registros_Contas_ClientesMap()
        {
            // Primary Key
            this.HasKey(t => t.Importador);

            // Properties
            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(250);

            this.Property(t => t.Banco)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.Agencia)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.Conta_Corrente)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Autorizacao_Registros_Contas_Clientes");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
        }
    }
}
