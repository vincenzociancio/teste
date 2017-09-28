using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_TimelineMap : EntityTypeConfiguration<Processos_Timeline>
    {
        public Processos_TimelineMap()
        {
            // Primary Key
            this.HasKey(t => t.Processo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Tipo_Declaracao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Processos_Timeline");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Data_Chegada_Carga).HasColumnName("Data_Chegada_Carga");
            this.Property(t => t.Data_Liberacao_Doc).HasColumnName("Data_Liberacao_Doc");
            this.Property(t => t.Data_Solicitacao_Numerario).HasColumnName("Data_Solicitacao_Numerario");
            this.Property(t => t.Data_Numerario_Recebido).HasColumnName("Data_Numerario_Recebido");
            this.Property(t => t.Data_Registro_DI).HasColumnName("Data_Registro_DI");
            this.Property(t => t.Data_TR_Enviado).HasColumnName("Data_TR_Enviado");
            this.Property(t => t.Data_TR_Recebido).HasColumnName("Data_TR_Recebido");
            this.Property(t => t.Data_ICMS_Entrada).HasColumnName("Data_ICMS_Entrada");
            this.Property(t => t.Data_ICMS_Exonercao).HasColumnName("Data_ICMS_Exonercao");
            this.Property(t => t.Data_Desembaraco).HasColumnName("Data_Desembaraco");
            this.Property(t => t.Tipo_Declaracao).HasColumnName("Tipo_Declaracao");
        }
    }
}
