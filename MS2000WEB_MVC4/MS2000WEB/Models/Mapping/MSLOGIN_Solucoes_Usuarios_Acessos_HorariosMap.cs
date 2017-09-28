using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Solucoes_Usuarios_Acessos_HorariosMap : EntityTypeConfiguration<MSLOGIN_Solucoes_Usuarios_Acessos_Horarios>
    {
        public MSLOGIN_Solucoes_Usuarios_Acessos_HorariosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_USUARIO_ACESSO_HORARIO);

            // Properties
            this.Property(t => t.HORARIO_INICIAL)
                .HasMaxLength(8);

            this.Property(t => t.HORARIO_FINAL)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes_Usuarios_Acessos_Horarios");
            this.Property(t => t.PK_USUARIO_ACESSO_HORARIO).HasColumnName("PK_USUARIO_ACESSO_HORARIO");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.HORARIO_INICIAL).HasColumnName("HORARIO_INICIAL");
            this.Property(t => t.HORARIO_FINAL).HasColumnName("HORARIO_FINAL");
            this.Property(t => t.SEGUNDA).HasColumnName("SEGUNDA");
            this.Property(t => t.TERCA).HasColumnName("TERCA");
            this.Property(t => t.QUARTA).HasColumnName("QUARTA");
            this.Property(t => t.QUINTA).HasColumnName("QUINTA");
            this.Property(t => t.SEXTA).HasColumnName("SEXTA");
            this.Property(t => t.SABADO).HasColumnName("SABADO");
            this.Property(t => t.DOMINGO).HasColumnName("DOMINGO");
            this.Property(t => t.FERIADOS).HasColumnName("FERIADOS");
        }
    }
}
