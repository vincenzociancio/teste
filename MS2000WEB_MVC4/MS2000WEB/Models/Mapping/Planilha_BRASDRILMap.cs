using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_BRASDRILMap : EntityTypeConfiguration<Planilha_BRASDRIL>
    {
        public Planilha_BRASDRILMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Planilha)
                .HasMaxLength(100);

            this.Property(t => t.Responsavel)
                .HasMaxLength(10);

            this.Property(t => t.Status)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Planilha_BRASDRIL");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Planilha).HasColumnName("Planilha");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Responsavel).HasColumnName("Responsavel");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Data_Recebimento).HasColumnName("Data_Recebimento");
        }
    }
}
