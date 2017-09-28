using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_BLMap : EntityTypeConfiguration<Controle_BL>
    {
        public Controle_BLMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Controle_BL);

            // Properties
            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Nome_Navio)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Unidade_Receita)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Num_BL)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.RE)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("Controle_BL");
            this.Property(t => t.PK_Controle_BL).HasColumnName("PK_Controle_BL");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.Nome_Navio).HasColumnName("Nome_Navio");
            this.Property(t => t.Unidade_Receita).HasColumnName("Unidade_Receita");
            this.Property(t => t.DT_Vecto).HasColumnName("DT_Vecto");
            this.Property(t => t.Num_BL).HasColumnName("Num_BL");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
            this.Property(t => t.RE).HasColumnName("RE");
        }
    }
}
