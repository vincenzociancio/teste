using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_ProcessosMap : EntityTypeConfiguration<Pre_Processos>
    {
        public Pre_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_codigo);

            // Properties
            this.Property(t => t.codigo)
                .HasMaxLength(8);

            this.Property(t => t.invoice)
                .HasMaxLength(30);

            this.Property(t => t.packing_list)
                .HasMaxLength(30);

            this.Property(t => t.pedido_compra)
                .HasMaxLength(30);

            this.Property(t => t.fk_importador)
                .HasMaxLength(4);

            this.Property(t => t.fk_tipomoeda)
                .HasMaxLength(3);

            this.Property(t => t.fk_tipoprocesso)
                .HasMaxLength(2);

            this.Property(t => t.fk_tipodeclaracao)
                .HasMaxLength(2);

            this.Property(t => t.ref_cliente)
                .HasMaxLength(60);

            this.Property(t => t.dta)
                .HasMaxLength(60);

            this.Property(t => t.descricao)
                .HasMaxLength(300);

            this.Property(t => t.status)
                .HasMaxLength(25);

            this.Property(t => t.usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Pre_Processos");
            this.Property(t => t.pk_codigo).HasColumnName("pk_codigo");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.invoice).HasColumnName("invoice");
            this.Property(t => t.packing_list).HasColumnName("packing_list");
            this.Property(t => t.pedido_compra).HasColumnName("pedido_compra");
            this.Property(t => t.fk_importador).HasColumnName("fk_importador");
            this.Property(t => t.valor).HasColumnName("valor");
            this.Property(t => t.fk_tipomoeda).HasColumnName("fk_tipomoeda");
            this.Property(t => t.fk_tipoprocesso).HasColumnName("fk_tipoprocesso");
            this.Property(t => t.fk_tipodeclaracao).HasColumnName("fk_tipodeclaracao");
            this.Property(t => t.ref_cliente).HasColumnName("ref_cliente");
            this.Property(t => t.dta).HasColumnName("dta");
            this.Property(t => t.descricao).HasColumnName("descricao");
            this.Property(t => t.status).HasColumnName("status");
            this.Property(t => t.status_classificacao).HasColumnName("status_classificacao");
            this.Property(t => t.usuario).HasColumnName("usuario");

            // Relationships
            this.HasOptional(t => t.TAB_TIPO_DECLARACAO)
                .WithMany(t => t.Pre_Processos)
                .HasForeignKey(d => d.fk_tipodeclaracao);
            this.HasOptional(t => t.Tipos_de_Processos)
                .WithMany(t => t.Pre_Processos)
                .HasForeignKey(d => d.fk_tipoprocesso);

        }
    }
}
