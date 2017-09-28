using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_Medicao_Honorarios_ItensMap : EntityTypeConfiguration<Planilha_Medicao_Honorarios_Itens>
    {
        public Planilha_Medicao_Honorarios_ItensMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.Ref_Cliente)
                .HasMaxLength(60);

            this.Property(t => t.Importador)
                .HasMaxLength(4);

            this.Property(t => t.Di_Pad_Ass_Dse)
                .HasMaxLength(10);

            this.Property(t => t.Tipo_Processo)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Planilha_Medicao_Honorarios_Itens");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Sequencial_Planilha).HasColumnName("Sequencial_Planilha");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Ref_Cliente).HasColumnName("Ref_Cliente");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Di_Pad_Ass_Dse).HasColumnName("Di_Pad_Ass_Dse");
            this.Property(t => t.Tipo_Processo).HasColumnName("Tipo_Processo");
            this.Property(t => t.Honorario).HasColumnName("Honorario");
            this.Property(t => t.Irrf).HasColumnName("Irrf");
            this.Property(t => t.Csll).HasColumnName("Csll");
            this.Property(t => t.Vlr_Liquido).HasColumnName("Vlr_Liquido");
        }
    }
}
