using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ParametroMap : EntityTypeConfiguration<Parametro>
    {
        public ParametroMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numerador_Processos)
                .HasMaxLength(8);

            this.Property(t => t.Numerador_Documentos)
                .HasMaxLength(8);

            this.Property(t => t.Endereco_ftp)
                .HasMaxLength(30);

            this.Property(t => t.Usuario_ftp)
                .HasMaxLength(30);

            this.Property(t => t.Senha_ftp)
                .HasMaxLength(16);

            this.Property(t => t.Host)
                .HasMaxLength(15);

            this.Property(t => t.Versao)
                .HasMaxLength(50);

            this.Property(t => t.keycrypt)
                .HasMaxLength(255);

            this.Property(t => t.Host_smtp)
                .HasMaxLength(60);

            this.Property(t => t.Usuario_smtp)
                .HasMaxLength(60);

            this.Property(t => t.Senha_smtp)
                .HasMaxLength(16);

            this.Property(t => t.Numerador_Transmittal)
                .HasMaxLength(8);

            this.Property(t => t.PATH_SERVER)
                .HasMaxLength(100);

            this.Property(t => t.Numerador_Sol_Cheques)
                .HasMaxLength(50);

            this.Property(t => t.Numerador_Sol_Reg)
                .HasMaxLength(50);

            this.Property(t => t.Numerador_Sol_Tracla)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Parametros");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Numerador_Processos).HasColumnName("Numerador_Processos");
            this.Property(t => t.Numerador_Documentos).HasColumnName("Numerador_Documentos");
            this.Property(t => t.Endereco_ftp).HasColumnName("Endereco_ftp");
            this.Property(t => t.Usuario_ftp).HasColumnName("Usuario_ftp");
            this.Property(t => t.Senha_ftp).HasColumnName("Senha_ftp");
            this.Property(t => t.Host).HasColumnName("Host");
            this.Property(t => t.Versao).HasColumnName("Versao");
            this.Property(t => t.Alerta_Atualizacao).HasColumnName("Alerta_Atualizacao");
            this.Property(t => t.keycrypt).HasColumnName("keycrypt");
            this.Property(t => t.Host_smtp).HasColumnName("Host_smtp");
            this.Property(t => t.Porta_smtp).HasColumnName("Porta_smtp");
            this.Property(t => t.Usuario_smtp).HasColumnName("Usuario_smtp");
            this.Property(t => t.Senha_smtp).HasColumnName("Senha_smtp");
            this.Property(t => t.Numerador_Transmittal).HasColumnName("Numerador_Transmittal");
            this.Property(t => t.PATH_SERVER).HasColumnName("PATH_SERVER");
            this.Property(t => t.Aliq_PIS_PASEP).HasColumnName("Aliq_PIS_PASEP");
            this.Property(t => t.Aliq_COFINS).HasColumnName("Aliq_COFINS");
            this.Property(t => t.Aliq_ICMS).HasColumnName("Aliq_ICMS");
            this.Property(t => t.Aliq_ICMS_EXTRA).HasColumnName("Aliq_ICMS_EXTRA");
            this.Property(t => t.Numerador_Sol_Cheques).HasColumnName("Numerador_Sol_Cheques");
            this.Property(t => t.Numerador_Sol_Reg).HasColumnName("Numerador_Sol_Reg");
            this.Property(t => t.Numerador_Sol_Tracla).HasColumnName("Numerador_Sol_Tracla");
            this.Property(t => t.ValorMinimoRegistroDI).HasColumnName("ValorMinimoRegistroDI");
            this.Property(t => t.ValorMaximoRegistroDI).HasColumnName("ValorMaximoRegistroDI");
        }
    }
}
