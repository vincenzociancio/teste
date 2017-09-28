using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RAT_ProrrogacaoMap : EntityTypeConfiguration<RAT_Prorrogacao>
    {
        public RAT_ProrrogacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Fk_Processo)
                .HasMaxLength(8);

            this.Property(t => t.Numero_RAT)
                .HasMaxLength(20);

            this.Property(t => t.Fund_Pedido)
                .HasMaxLength(10);

            this.Property(t => t.Numero_AITEE)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("RAT_Prorrogacao");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Fk_Processo).HasColumnName("Fk_Processo");
            this.Property(t => t.Numero_RAT).HasColumnName("Numero_RAT");
            this.Property(t => t.Data_Criacao).HasColumnName("Data_Criacao");
            this.Property(t => t.Fund_Pedido).HasColumnName("Fund_Pedido");
            this.Property(t => t.Opcao_Tributario).HasColumnName("Opcao_Tributario");
            this.Property(t => t.Inst_Ped_Contrato).HasColumnName("Inst_Ped_Contrato");
            this.Property(t => t.Inst_Ped_Procuracao).HasColumnName("Inst_Ped_Procuracao");
            this.Property(t => t.Inst_Ped_Outros).HasColumnName("Inst_Ped_Outros");
            this.Property(t => t.Inst_Ped_Contrato_arrendamento).HasColumnName("Inst_Ped_Contrato_arrendamento");
            this.Property(t => t.Inst_Ped_Fatura).HasColumnName("Inst_Ped_Fatura");
            this.Property(t => t.Inf_Complementares).HasColumnName("Inf_Complementares");
            this.Property(t => t.Numero_AITEE).HasColumnName("Numero_AITEE");
            this.Property(t => t.Data_AITEE).HasColumnName("Data_AITEE");
            this.Property(t => t.Data_ADE).HasColumnName("Data_ADE");
        }
    }
}
