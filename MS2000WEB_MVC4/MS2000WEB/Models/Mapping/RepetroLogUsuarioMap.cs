using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RepetroLogUsuarioMap : EntityTypeConfiguration<RepetroLogUsuario>
    {
        public RepetroLogUsuarioMap()
        {
            // Primary Key
            this.HasKey(t => t.Id_Vigia);

            // Properties
            this.Property(t => t.Usuario)
                .HasMaxLength(40);

            this.Property(t => t.Tela)
                .HasMaxLength(30);

            this.Property(t => t.Procedimento)
                .HasMaxLength(80);

            this.Property(t => t.DI)
                .HasMaxLength(20);

            this.Property(t => t.Adicao)
                .HasMaxLength(10);

            this.Property(t => t.Seq_AdicaoStr)
                .HasMaxLength(10);

            this.Property(t => t.Movimento_ini)
                .HasMaxLength(30);

            this.Property(t => t.Movimento_fim)
                .HasMaxLength(30);

            this.Property(t => t.Origem)
                .HasMaxLength(30);

            this.Property(t => t.Destino)
                .HasMaxLength(30);

            this.Property(t => t.RTC_REG)
                .HasMaxLength(10);

            this.Property(t => t.RTC_ITEM_REG)
                .HasMaxLength(10);

            this.Property(t => t.PIN)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("RepetroLogUsuario");
            this.Property(t => t.Id_Vigia).HasColumnName("Id_Vigia");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Tela).HasColumnName("Tela");
            this.Property(t => t.Procedimento).HasColumnName("Procedimento");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.Seq_AdicaoStr).HasColumnName("Seq_AdicaoStr");
            this.Property(t => t.Movimento_ini).HasColumnName("Movimento_ini");
            this.Property(t => t.Movimento_fim).HasColumnName("Movimento_fim");
            this.Property(t => t.Origem).HasColumnName("Origem");
            this.Property(t => t.Destino).HasColumnName("Destino");
            this.Property(t => t.RTC_REG).HasColumnName("RTC_REG");
            this.Property(t => t.RTC_ITEM_REG).HasColumnName("RTC_ITEM_REG");
            this.Property(t => t.Saldo_Rep_Antigo).HasColumnName("Saldo_Rep_Antigo");
            this.Property(t => t.Saldo_Rep_Novo).HasColumnName("Saldo_Rep_Novo");
            this.Property(t => t.PIN).HasColumnName("PIN");
        }
    }
}
