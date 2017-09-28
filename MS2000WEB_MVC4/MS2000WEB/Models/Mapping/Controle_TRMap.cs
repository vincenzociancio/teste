using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_TRMap : EntityTypeConfiguration<Controle_TR>
    {
        public Controle_TRMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_TR);

            // Properties
            this.Property(t => t.FK_Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(50);

            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.DI)
                .HasMaxLength(10);

            this.Property(t => t.IN)
                .HasMaxLength(120);

            this.Property(t => t.Despacho)
                .HasMaxLength(100);

            this.Property(t => t.FK_Documento_Arquivo)
                .IsRequired()
                .HasMaxLength(11);

            this.Property(t => t.Excluido)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Controle_TR");
            this.Property(t => t.PK_TR).HasColumnName("PK_TR");
            this.Property(t => t.FK_Importador).HasColumnName("FK_Importador");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.IN).HasColumnName("IN");
            this.Property(t => t.Despacho).HasColumnName("Despacho");
            this.Property(t => t.FK_Documento_Arquivo).HasColumnName("FK_Documento_Arquivo");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
