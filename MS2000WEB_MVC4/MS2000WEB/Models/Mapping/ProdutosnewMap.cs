using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ProdutosnewMap : EntityTypeConfiguration<Produtosnew>
    {
        public ProdutosnewMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.Importador)
                .HasMaxLength(4);

            this.Property(t => t.Fabricante)
                .HasMaxLength(6);

            this.Property(t => t.CODIGO)
                .HasMaxLength(50);

            this.Property(t => t.PART_NUMBER)
                .HasMaxLength(50);

            this.Property(t => t.NCM)
                .HasMaxLength(8);

            this.Property(t => t.Destaque_NCM)
                .HasMaxLength(3);

            this.Property(t => t.NALADI)
                .HasMaxLength(8);

            this.Property(t => t.Unidade)
                .HasMaxLength(2);

            this.Property(t => t.Unidade_Medida_Estat)
                .HasMaxLength(2);

            this.Property(t => t.Usuario_INCLUSAO)
                .HasMaxLength(10);

            this.Property(t => t.Usuario_ALTERACAO)
                .HasMaxLength(10);

            this.Property(t => t.Revisao_Usuario)
                .HasMaxLength(10);

            this.Property(t => t.PaisOrigem)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Produtosnew");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Fabricante).HasColumnName("Fabricante");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.PART_NUMBER).HasColumnName("PART_NUMBER");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_ing).HasColumnName("Descricao_ing");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.Destaque_NCM).HasColumnName("Destaque_NCM");
            this.Property(t => t.NALADI).HasColumnName("NALADI");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Unidade_Medida_Estat).HasColumnName("Unidade_Medida_Estat");
            this.Property(t => t.DATA_INCLUSAO).HasColumnName("DATA_INCLUSAO");
            this.Property(t => t.Usuario_INCLUSAO).HasColumnName("Usuario_INCLUSAO");
            this.Property(t => t.DATA_ULTIMA_ALTERACAO).HasColumnName("DATA_ULTIMA_ALTERACAO");
            this.Property(t => t.Usuario_ALTERACAO).HasColumnName("Usuario_ALTERACAO");
            this.Property(t => t.Revisado).HasColumnName("Revisado");
            this.Property(t => t.Revisao_Data).HasColumnName("Revisao_Data");
            this.Property(t => t.Revisao_Usuario).HasColumnName("Revisao_Usuario");
            this.Property(t => t.Revisao_OBS).HasColumnName("Revisao_OBS");
            this.Property(t => t.PaisOrigem).HasColumnName("PaisOrigem");
        }
    }
}
