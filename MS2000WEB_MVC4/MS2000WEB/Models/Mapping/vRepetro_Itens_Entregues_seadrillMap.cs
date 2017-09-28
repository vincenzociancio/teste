using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class vRepetro_Itens_Entregues_seadrillMap : EntityTypeConfiguration<vRepetro_Itens_Entregues_seadrill>
    {
        public vRepetro_Itens_Entregues_seadrillMap()
        {
            // Primary Key
            this.HasKey(t => new { t.DI, t.Adicao, t.Seq_Adicaostr });

            // Properties
            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            this.Property(t => t.Codigo_Fiel)
                .HasMaxLength(20);

            this.Property(t => t.Processo_ADM)
                .HasMaxLength(25);

            this.Property(t => t.DI)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Adicao)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.Seq_Adicaostr)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Contratos_Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Locais_Inventario_Descricao)
                .HasMaxLength(250);

            this.Property(t => t.Produto)
                .HasMaxLength(50);

            this.Property(t => t.Numero_serie)
                .HasMaxLength(140);

            this.Property(t => t.CNPJ_COMPLETO)
                .HasMaxLength(14);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(250);

            this.Property(t => t.Nome_Fiel)
                .HasMaxLength(200);

            this.Property(t => t.Novo_benef)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("vRepetro_Itens_Entregues_seadrill");
            this.Property(t => t.ITENS_ENTREGUES).HasColumnName("ITENS_ENTREGUES");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.Codigo_Fiel).HasColumnName("Codigo_Fiel");
            this.Property(t => t.Processo_ADM).HasColumnName("Processo_ADM");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.Seq_Adicaostr).HasColumnName("Seq_Adicaostr");
            this.Property(t => t.Contratos_Descricao).HasColumnName("Contratos_Descricao");
            this.Property(t => t.Locais_Inventario_Descricao).HasColumnName("Locais_Inventario_Descricao");
            this.Property(t => t.Produto).HasColumnName("Produto");
            this.Property(t => t.DESCBEM).HasColumnName("DESCBEM");
            this.Property(t => t.DESCBEM_Ing).HasColumnName("DESCBEM_Ing");
            this.Property(t => t.Numero_serie).HasColumnName("Numero_serie");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.CNPJ_COMPLETO).HasColumnName("CNPJ_COMPLETO");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
            this.Property(t => t.Nome_Fiel).HasColumnName("Nome_Fiel");
            this.Property(t => t.Data_movimentacao).HasColumnName("Data_movimentacao");
            this.Property(t => t.Novo_benef).HasColumnName("Novo_benef");
        }
    }
}
