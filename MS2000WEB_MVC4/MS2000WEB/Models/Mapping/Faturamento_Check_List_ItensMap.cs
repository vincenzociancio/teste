using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faturamento_Check_List_ItensMap : EntityTypeConfiguration<Faturamento_Check_List_Itens>
    {
        public Faturamento_Check_List_ItensMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Documentacao)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Faturamento_Check_List_Itens");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Fk_Codigo).HasColumnName("Fk_Codigo");
            this.Property(t => t.Documentacao).HasColumnName("Documentacao");
            this.Property(t => t.Original).HasColumnName("Original");
            this.Property(t => t.Assinado).HasColumnName("Assinado");
            this.Property(t => t.Carimbado).HasColumnName("Carimbado");
            this.Property(t => t.Impresso).HasColumnName("Impresso");
            this.Property(t => t.Copia).HasColumnName("Copia");
        }
    }
}
