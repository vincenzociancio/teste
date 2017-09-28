using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Relacao_Itens_Processo_PreProcessoMap : EntityTypeConfiguration<Relacao_Itens_Processo_PreProcesso>
    {
        public Relacao_Itens_Processo_PreProcessoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Codigo);

            // Properties
            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.FK_Processo_Fatura)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.FK_Processo_Fatura_Item_Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Relacao_Itens_Processo_PreProcesso");
            this.Property(t => t.PK_Codigo).HasColumnName("PK_Codigo");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.FK_Processo_Fatura).HasColumnName("FK_Processo_Fatura");
            this.Property(t => t.FK_Processo_Fatura_Item_Sequencial).HasColumnName("FK_Processo_Fatura_Item_Sequencial");
            this.Property(t => t.FK_PreProcesso).HasColumnName("FK_PreProcesso");
            this.Property(t => t.FK_PreProcesso_Item_Linha).HasColumnName("FK_PreProcesso_Item_Linha");
        }
    }
}
