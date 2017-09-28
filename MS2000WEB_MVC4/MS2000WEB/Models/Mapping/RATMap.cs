using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RATMap : EntityTypeConfiguration<RAT>
    {
        public RATMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Fk_Importador)
                .HasMaxLength(4);

            this.Property(t => t.Fk_Processo)
                .HasMaxLength(8);

            this.Property(t => t.Fund_Pedido)
                .HasMaxLength(200);

            this.Property(t => t.Cod_Fatura)
                .HasMaxLength(50);

            this.Property(t => t.Numero_Rat)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("RAT");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Fk_Importador).HasColumnName("Fk_Importador");
            this.Property(t => t.Fk_Processo).HasColumnName("Fk_Processo");
            this.Property(t => t.Fund_Pedido).HasColumnName("Fund_Pedido");
            this.Property(t => t.Data_Criacao).HasColumnName("Data_Criacao");
            this.Property(t => t.Prazo_Requerido).HasColumnName("Prazo_Requerido");
            this.Property(t => t.Opcao_Tributario).HasColumnName("Opcao_Tributario");
            this.Property(t => t.Inst_Ped_Contrato).HasColumnName("Inst_Ped_Contrato");
            this.Property(t => t.Inst_Ped_Procuracao).HasColumnName("Inst_Ped_Procuracao");
            this.Property(t => t.Inst_Ped_Outros).HasColumnName("Inst_Ped_Outros");
            this.Property(t => t.Inst_Ped_Contrato_arrendamento).HasColumnName("Inst_Ped_Contrato_arrendamento");
            this.Property(t => t.Inst_Ped_Fatura).HasColumnName("Inst_Ped_Fatura");
            this.Property(t => t.Cod_Fatura).HasColumnName("Cod_Fatura");
            this.Property(t => t.Inf_Adicionais).HasColumnName("Inf_Adicionais");
            this.Property(t => t.Inf_Complementares).HasColumnName("Inf_Complementares");
            this.Property(t => t.Data_Inicial).HasColumnName("Data_Inicial");
            this.Property(t => t.Numero_Rat).HasColumnName("Numero_Rat");
            this.Property(t => t.Data_Entrada).HasColumnName("Data_Entrada");
            this.Property(t => t.Data_Aprovacao).HasColumnName("Data_Aprovacao");
        }
    }
}
