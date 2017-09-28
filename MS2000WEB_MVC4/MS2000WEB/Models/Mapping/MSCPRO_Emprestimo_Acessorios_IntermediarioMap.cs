using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Emprestimo_Acessorios_IntermediarioMap : EntityTypeConfiguration<MSCPRO_Emprestimo_Acessorios_Intermediario>
    {
        public MSCPRO_Emprestimo_Acessorios_IntermediarioMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Emprestimo_Acessorios_Intermediario");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.FK_Solicitante).HasColumnName("FK_Solicitante");
            this.Property(t => t.Data_Emprestimo).HasColumnName("Data_Emprestimo");
            this.Property(t => t.Data_Prevista_Devolucao).HasColumnName("Data_Prevista_Devolucao");
            this.Property(t => t.Observacao).HasColumnName("Observacao");
            this.Property(t => t.Data_Devolucao).HasColumnName("Data_Devolucao");
        }
    }
}
