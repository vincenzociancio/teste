using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Rede_LogicaMap : EntityTypeConfiguration<Controle_Rede_Logica>
    {
        public Controle_Rede_LogicaMap()
        {
            // Primary Key
            this.HasKey(t => t.PONTO);

            // Properties
            this.Property(t => t.PONTO)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Setor)
                .HasMaxLength(4);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.PATCH_PANEL)
                .HasMaxLength(10);

            this.Property(t => t.SWITCH)
                .HasMaxLength(10);

            this.Property(t => t.Descricao)
                .HasMaxLength(255);

            this.Property(t => t.DetalheS)
                .HasMaxLength(255);

            this.Property(t => t.Plaqueta)
                .HasMaxLength(6);

            // Table & Column Mappings
            this.ToTable("Controle_Rede_Logica");
            this.Property(t => t.PONTO).HasColumnName("PONTO");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.PATCH_PANEL).HasColumnName("PATCH_PANEL");
            this.Property(t => t.PORTA_PATCH_PANEL).HasColumnName("PORTA_PATCH_PANEL");
            this.Property(t => t.SWITCH).HasColumnName("SWITCH");
            this.Property(t => t.PORTA_SWITCH).HasColumnName("PORTA_SWITCH");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.DetalheS).HasColumnName("DetalheS");
            this.Property(t => t.Plaqueta).HasColumnName("Plaqueta");
        }
    }
}
