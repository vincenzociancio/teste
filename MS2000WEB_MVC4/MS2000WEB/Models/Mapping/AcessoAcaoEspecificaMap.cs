using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoAcaoEspecificaMap : EntityTypeConfiguration<AcessoAcaoEspecifica>
    {
        public AcessoAcaoEspecificaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_AcaoEspecifica);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Chave_Busca)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Controller)
                .IsRequired()
                .HasMaxLength(150);

            this.Property(t => t.Action)
                .IsRequired()
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("AcessoAcaoEspecifica");
            this.Property(t => t.PK_AcaoEspecifica).HasColumnName("PK_AcaoEspecifica");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.FK_AcessoPaginas).HasColumnName("FK_AcessoPaginas");
            this.Property(t => t.Chave_Busca).HasColumnName("Chave_Busca");
            this.Property(t => t.Controller).HasColumnName("Controller");
            this.Property(t => t.Action).HasColumnName("Action");
        }
    }
}
