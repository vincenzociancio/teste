using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_IPSMap : EntityTypeConfiguration<Controle_IPS>
    {
        public Controle_IPSMap()
        {
            // Primary Key
            this.HasKey(t => new { t.IP1, t.IP2, t.IP3, t.IP4 });

            // Properties
            this.Property(t => t.IP1)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.IP2)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.IP3)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.IP4)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Setor)
                .HasMaxLength(4);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.MASCARA)
                .HasMaxLength(20);

            this.Property(t => t.GATEWAY)
                .HasMaxLength(20);

            this.Property(t => t.PROXY)
                .HasMaxLength(20);

            this.Property(t => t.DNS1)
                .HasMaxLength(20);

            this.Property(t => t.DNS2)
                .HasMaxLength(20);

            this.Property(t => t.Descricao)
                .HasMaxLength(255);

            this.Property(t => t.DetalheS)
                .HasMaxLength(255);

            this.Property(t => t.Plaqueta)
                .HasMaxLength(6);

            this.Property(t => t.ICONE)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_IPS");
            this.Property(t => t.IP1).HasColumnName("IP1");
            this.Property(t => t.IP2).HasColumnName("IP2");
            this.Property(t => t.IP3).HasColumnName("IP3");
            this.Property(t => t.IP4).HasColumnName("IP4");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.MASCARA).HasColumnName("MASCARA");
            this.Property(t => t.GATEWAY).HasColumnName("GATEWAY");
            this.Property(t => t.PROXY).HasColumnName("PROXY");
            this.Property(t => t.DNS1).HasColumnName("DNS1");
            this.Property(t => t.DNS2).HasColumnName("DNS2");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.DetalheS).HasColumnName("DetalheS");
            this.Property(t => t.Plaqueta).HasColumnName("Plaqueta");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
        }
    }
}
