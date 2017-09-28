using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class DocumentoMap : EntityTypeConfiguration<Documento>
    {
        public DocumentoMap()
        {
            // Primary Key
            this.HasKey(t => t.Arquivo);

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.Tipo_Doc)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Sub_Tipo_Doc)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numero_Doc)
                .HasMaxLength(30);

            this.Property(t => t.Pagina)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(11);

            this.Property(t => t.Arquivo)
                .IsRequired()
                .HasMaxLength(11);

            this.Property(t => t.Observacoes)
                .HasMaxLength(255);

            this.Property(t => t.Contrato)
                .HasMaxLength(8);

            this.Property(t => t.Local)
                .HasMaxLength(4);

            this.Property(t => t.Status)
                .HasMaxLength(2);

            this.Property(t => t.usuario_dig)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Documentos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Tipo_Doc).HasColumnName("Tipo_Doc");
            this.Property(t => t.Sub_Tipo_Doc).HasColumnName("Sub_Tipo_Doc");
            this.Property(t => t.Numero_Doc).HasColumnName("Numero_Doc");
            this.Property(t => t.Pagina).HasColumnName("Pagina");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Arquivo).HasColumnName("Arquivo");
            this.Property(t => t.ftp).HasColumnName("ftp");
            this.Property(t => t.Vigencia_inicial).HasColumnName("Vigencia_inicial");
            this.Property(t => t.Vigencia_final).HasColumnName("Vigencia_final");
            this.Property(t => t.Observacoes).HasColumnName("Observacoes");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Data_inclusao).HasColumnName("Data_inclusao");
            this.Property(t => t.Data_baixa).HasColumnName("Data_baixa");
            this.Property(t => t.Data_renovacao).HasColumnName("Data_renovacao");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Data_envio).HasColumnName("Data_envio");
            this.Property(t => t.usuario_dig).HasColumnName("usuario_dig");
            this.Property(t => t.PDF).HasColumnName("PDF");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Reg_Numerario).HasColumnName("Reg_Numerario");
        }
    }
}
