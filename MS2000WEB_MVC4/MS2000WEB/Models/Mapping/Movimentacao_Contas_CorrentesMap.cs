using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Movimentacao_Contas_CorrentesMap : EntityTypeConfiguration<Movimentacao_Contas_Correntes>
    {
        public Movimentacao_Contas_CorrentesMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo_Mov);

            // Properties
            this.Property(t => t.Empresa)
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .HasMaxLength(4);

            this.Property(t => t.Doc)
                .HasMaxLength(15);

            this.Property(t => t.Historico)
                .HasMaxLength(255);

            this.Property(t => t.Cliente)
                .HasMaxLength(4);

            this.Property(t => t.Plano_Contas)
                .HasMaxLength(8);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.Codigo_SOLREG)
                .HasMaxLength(50);

            this.Property(t => t.Codigo_SOLCHEQUE)
                .HasMaxLength(8);

            this.Property(t => t.Codigo_ContasAPagar)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Movimentacao_Contas_Correntes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Doc).HasColumnName("Doc");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Codigo_Mov).HasColumnName("Codigo_Mov");
            this.Property(t => t.Plano_Contas).HasColumnName("Plano_Contas");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data_apuracao_cpmf_inicial).HasColumnName("Data_apuracao_cpmf_inicial");
            this.Property(t => t.Data_apuracao_cpmf_final).HasColumnName("Data_apuracao_cpmf_final");
            this.Property(t => t.Desmembra).HasColumnName("Desmembra");
            this.Property(t => t.Digitaliza).HasColumnName("Digitaliza");
            this.Property(t => t.Codigo_SOLREG).HasColumnName("Codigo_SOLREG");
            this.Property(t => t.Codigo_SOLCHEQUE).HasColumnName("Codigo_SOLCHEQUE");
            this.Property(t => t.Codigo_ContasAPagar).HasColumnName("Codigo_ContasAPagar");
        }
    }
}
