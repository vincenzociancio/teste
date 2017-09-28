using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class verifica_repetroMap : EntityTypeConfiguration<verifica_repetro>
    {
        public verifica_repetroMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.situacao)
                .HasMaxLength(100);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.cond_fiscal)
                .HasMaxLength(40);

            this.Property(t => t.Importador)
                .HasMaxLength(4);

            this.Property(t => t.Contrato)
                .HasMaxLength(8);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(4);

            this.Property(t => t.NR_DECLARACAO_IMP)
                .HasMaxLength(10);

            this.Property(t => t.INs)
                .HasMaxLength(20);

            this.Property(t => t.tipo)
                .HasMaxLength(2);

            this.Property(t => t.tipo_declaracao)
                .HasMaxLength(2);

            // Table & Column Mappings
            this.ToTable("verifica_repetro");
            this.Property(t => t.situacao).HasColumnName("situacao");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.cond_fiscal).HasColumnName("cond_fiscal");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.Repetro).HasColumnName("Repetro");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.DT_DESEMBARACO).HasColumnName("DT_DESEMBARACO");
            this.Property(t => t.NR_DECLARACAO_IMP).HasColumnName("NR_DECLARACAO_IMP");
            this.Property(t => t.INs).HasColumnName("INs");
            this.Property(t => t.tipo).HasColumnName("tipo");
            this.Property(t => t.tipo_declaracao).HasColumnName("tipo_declaracao");
        }
    }
}
