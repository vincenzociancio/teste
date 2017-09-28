using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_DocumentosMap : EntityTypeConfiguration<Pre_Documentos>
    {
        public Pre_DocumentosMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_codigo);

            // Properties
            this.Property(t => t.fk_tipodocumento)
                .HasMaxLength(4);

            this.Property(t => t.fk_subtipodocumento)
                .HasMaxLength(4);

            this.Property(t => t.numero_doc)
                .HasMaxLength(30);

            this.Property(t => t.pagina)
                .HasMaxLength(3);

            this.Property(t => t.codigo)
                .HasMaxLength(11);

            this.Property(t => t.arquivo)
                .HasMaxLength(11);

            this.Property(t => t.tipo_arquivo)
                .HasMaxLength(8);

            this.Property(t => t.descricao_arquivo)
                .HasMaxLength(300);

            this.Property(t => t.observacao)
                .HasMaxLength(255);

            this.Property(t => t.usuario)
                .HasMaxLength(10);

            this.Property(t => t.caminho)
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("Pre_Documentos");
            this.Property(t => t.pk_codigo).HasColumnName("pk_codigo");
            this.Property(t => t.fk_preprocesso).HasColumnName("fk_preprocesso");
            this.Property(t => t.fk_tipodocumento).HasColumnName("fk_tipodocumento");
            this.Property(t => t.fk_subtipodocumento).HasColumnName("fk_subtipodocumento");
            this.Property(t => t.numero_doc).HasColumnName("numero_doc");
            this.Property(t => t.pagina).HasColumnName("pagina");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.arquivo).HasColumnName("arquivo");
            this.Property(t => t.ftp).HasColumnName("ftp");
            this.Property(t => t.data_inclusao).HasColumnName("data_inclusao");
            this.Property(t => t.data_envio).HasColumnName("data_envio");
            this.Property(t => t.tipo_arquivo).HasColumnName("tipo_arquivo");
            this.Property(t => t.descricao_arquivo).HasColumnName("descricao_arquivo");
            this.Property(t => t.observacao).HasColumnName("observacao");
            this.Property(t => t.usuario).HasColumnName("usuario");
            this.Property(t => t.caminho).HasColumnName("caminho");

            // Relationships
            this.HasOptional(t => t.Pre_Processos)
                .WithMany(t => t.Pre_Documentos)
                .HasForeignKey(d => d.fk_preprocesso);
            this.HasOptional(t => t.Tipo_Documentos)
                .WithMany(t => t.Pre_Documentos)
                .HasForeignKey(d => d.fk_tipodocumento);

        }
    }
}
