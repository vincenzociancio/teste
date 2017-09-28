using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Autorizacao_Registros_ContasMap : EntityTypeConfiguration<Autorizacao_Registros_Contas>
    {
        public Autorizacao_Registros_ContasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Banco, t.Agencia, t.Conta });

            // Properties
            this.Property(t => t.Banco)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.Agencia)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.Conta)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Autorizacao_Registros_Contas");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.Conta).HasColumnName("Conta");
            this.Property(t => t.CONTAC).HasColumnName("CONTAC");
        }
    }
}
