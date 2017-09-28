using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Rede_TelefoniaMap : EntityTypeConfiguration<Controle_Rede_Telefonia>
    {
        public Controle_Rede_TelefoniaMap()
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

            this.Property(t => t.TELEFONE_RAMAL)
                .HasMaxLength(50);

            this.Property(t => t.ID01)
                .HasMaxLength(20);

            this.Property(t => t.ID02)
                .HasMaxLength(20);

            this.Property(t => t.Descricao)
                .HasMaxLength(255);

            this.Property(t => t.DetalheS)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Controle_Rede_Telefonia");
            this.Property(t => t.PONTO).HasColumnName("PONTO");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.TELEFONE_RAMAL).HasColumnName("TELEFONE_RAMAL");
            this.Property(t => t.POSICAO_CENTRAL).HasColumnName("POSICAO_CENTRAL");
            this.Property(t => t.ID01).HasColumnName("ID01");
            this.Property(t => t.ID01_BLOCO).HasColumnName("ID01_BLOCO");
            this.Property(t => t.ID01_PAR).HasColumnName("ID01_PAR");
            this.Property(t => t.ID02).HasColumnName("ID02");
            this.Property(t => t.ID02_PORTA).HasColumnName("ID02_PORTA");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.DetalheS).HasColumnName("DetalheS");
        }
    }
}
