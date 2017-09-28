using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Movimentacao_Repetro_23122010Map : EntityTypeConfiguration<Movimentacao_Repetro_23122010>
    {
        public Movimentacao_Repetro_23122010Map()
        {
            // Primary Key
            this.HasKey(t => t.Movimento);

            // Properties
            this.Property(t => t.Movimento)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            this.Property(t => t.DI)
                .HasMaxLength(10);

            this.Property(t => t.ADICAO)
                .HasMaxLength(3);

            this.Property(t => t.Seq_Adicaostr)
                .HasMaxLength(3);

            this.Property(t => t.Tipo_Movimentacao)
                .HasMaxLength(2);

            this.Property(t => t.DDE)
                .HasMaxLength(15);

            this.Property(t => t.RE)
                .HasMaxLength(15);

            this.Property(t => t.Processo_ADM)
                .HasMaxLength(25);

            this.Property(t => t.Requerimento)
                .HasMaxLength(20);

            this.Property(t => t.Termo_Recebimento)
                .HasMaxLength(20);

            this.Property(t => t.DI_MOV)
                .HasMaxLength(10);

            this.Property(t => t.ADICAO_MOV)
                .HasMaxLength(3);

            this.Property(t => t.Seq_Adicao_MOV)
                .HasMaxLength(2);

            this.Property(t => t.Novo_benef)
                .HasMaxLength(50);

            this.Property(t => t.cnpj_novo)
                .HasMaxLength(18);

            this.Property(t => t.Situacao_Fiscal)
                .HasMaxLength(1);

            this.Property(t => t.Codigo_Fiel)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Movimentacao_Repetro_23122010");
            this.Property(t => t.Movimento).HasColumnName("Movimento");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.ADICAO).HasColumnName("ADICAO");
            this.Property(t => t.Seq_Adicaostr).HasColumnName("Seq_Adicaostr");
            this.Property(t => t.Data_movimentacao).HasColumnName("Data_movimentacao");
            this.Property(t => t.Tipo_Movimentacao).HasColumnName("Tipo_Movimentacao");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.DDE).HasColumnName("DDE");
            this.Property(t => t.RE).HasColumnName("RE");
            this.Property(t => t.Processo_ADM).HasColumnName("Processo_ADM");
            this.Property(t => t.Requerimento).HasColumnName("Requerimento");
            this.Property(t => t.Termo_Recebimento).HasColumnName("Termo_Recebimento");
            this.Property(t => t.DI_MOV).HasColumnName("DI_MOV");
            this.Property(t => t.ADICAO_MOV).HasColumnName("ADICAO_MOV");
            this.Property(t => t.Seq_Adicao_MOV).HasColumnName("Seq_Adicao_MOV");
            this.Property(t => t.Novo_benef).HasColumnName("Novo_benef");
            this.Property(t => t.cnpj_novo).HasColumnName("cnpj_novo");
            this.Property(t => t.Situacao_Fiscal).HasColumnName("Situacao_Fiscal");
            this.Property(t => t.Codigo_Fiel).HasColumnName("Codigo_Fiel");
        }
    }
}
