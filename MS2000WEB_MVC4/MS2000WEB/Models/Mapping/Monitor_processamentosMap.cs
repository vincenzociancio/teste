using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Monitor_processamentosMap : EntityTypeConfiguration<Monitor_processamentos>
    {
        public Monitor_processamentosMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(100);

            this.Property(t => t.Executavel)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Monitor_processamentos");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Executavel).HasColumnName("Executavel");
            this.Property(t => t.Ligado).HasColumnName("Ligado");
            this.Property(t => t.Dia_monitor).HasColumnName("Dia_monitor");
            this.Property(t => t.Mes_monitor).HasColumnName("Mes_monitor");
            this.Property(t => t.Ano_monitor).HasColumnName("Ano_monitor");
            this.Property(t => t.Segunda).HasColumnName("Segunda");
            this.Property(t => t.Terca).HasColumnName("Terca");
            this.Property(t => t.Quarta).HasColumnName("Quarta");
            this.Property(t => t.Quinta).HasColumnName("Quinta");
            this.Property(t => t.Sexta).HasColumnName("Sexta");
            this.Property(t => t.Sabado).HasColumnName("Sabado");
            this.Property(t => t.Domingo).HasColumnName("Domingo");
            this.Property(t => t.Horario_monitor).HasColumnName("Horario_monitor");
            this.Property(t => t.Data_Ultimo_Processamento).HasColumnName("Data_Ultimo_Processamento");
            this.Property(t => t.Hora_Ultimo_Processamento).HasColumnName("Hora_Ultimo_Processamento");
            this.Property(t => t.Tempo_repeticao).HasColumnName("Tempo_repeticao");
            this.Property(t => t.Horario_nao_processar).HasColumnName("Horario_nao_processar");
        }
    }
}
