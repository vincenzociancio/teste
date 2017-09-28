using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Solicitacao_Cheques_ItensMap : EntityTypeConfiguration<Solicitacao_Cheques_Itens>
    {
        public Solicitacao_Cheques_ItensMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo, t.Sequencial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Sequencial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.Descricao)
                .HasMaxLength(100);

            this.Property(t => t.Numerario)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Solicitacao_Cheques_Itens");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.REG_numerario).HasColumnName("REG_numerario");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Numerario).HasColumnName("Numerario");
        }
    }
}
