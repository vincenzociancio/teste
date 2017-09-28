using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Hitorico_Fragmentacao_IndiceMap : EntityTypeConfiguration<Hitorico_Fragmentacao_Indice>
    {
        public Hitorico_Fragmentacao_IndiceMap()
        {
            // Primary Key
            this.HasKey(t => t.Id_Hitorico_Fragmentacao_Indice);

            // Properties
            this.Property(t => t.Nm_Servidor)
                .HasMaxLength(20);

            this.Property(t => t.Nm_Database)
                .HasMaxLength(20);

            this.Property(t => t.Nm_Tabela)
                .HasMaxLength(50);

            this.Property(t => t.Nm_Indice)
                .HasMaxLength(70);

            // Table & Column Mappings
            this.ToTable("Hitorico_Fragmentacao_Indice");
            this.Property(t => t.Id_Hitorico_Fragmentacao_Indice).HasColumnName("Id_Hitorico_Fragmentacao_Indice");
            this.Property(t => t.Dt_Referencia).HasColumnName("Dt_Referencia");
            this.Property(t => t.Nm_Servidor).HasColumnName("Nm_Servidor");
            this.Property(t => t.Nm_Database).HasColumnName("Nm_Database");
            this.Property(t => t.Nm_Tabela).HasColumnName("Nm_Tabela");
            this.Property(t => t.Nm_Indice).HasColumnName("Nm_Indice");
            this.Property(t => t.Avg_Fragmentation_In_Percent).HasColumnName("Avg_Fragmentation_In_Percent");
            this.Property(t => t.Page_Count).HasColumnName("Page_Count");
            this.Property(t => t.Fill_Factor).HasColumnName("Fill_Factor");
        }
    }
}
