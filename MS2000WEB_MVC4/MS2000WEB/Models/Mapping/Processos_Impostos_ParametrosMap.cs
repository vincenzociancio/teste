using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Impostos_ParametrosMap : EntityTypeConfiguration<Processos_Impostos_Parametros>
    {
        public Processos_Impostos_ParametrosMap()
        {
            // Primary Key
            this.HasKey(t => t.Data);

            // Properties
            // Table & Column Mappings
            this.ToTable("Processos_Impostos_Parametros");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
