using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowUp_Check_Rejeicao_TipoMap : EntityTypeConfiguration<FollowUp_Check_Rejeicao_Tipo>
    {
        public FollowUp_Check_Rejeicao_TipoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("FollowUp_Check_Rejeicao_Tipo");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Lixo).HasColumnName("Lixo");
        }
    }
}
