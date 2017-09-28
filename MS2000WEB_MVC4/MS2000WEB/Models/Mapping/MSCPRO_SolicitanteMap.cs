using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_SolicitanteMap : EntityTypeConfiguration<MSCPRO_Solicitante>
    {
        public MSCPRO_SolicitanteMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Matricula_Receita)
                .HasMaxLength(50);

            this.Property(t => t.Telefone)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Solicitante");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Matricula_Receita).HasColumnName("Matricula_Receita");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Cargo).HasColumnName("Cargo");
            this.Property(t => t.Telefone).HasColumnName("Telefone");
            this.Property(t => t.Observacao).HasColumnName("Observacao");
        }
    }
}
