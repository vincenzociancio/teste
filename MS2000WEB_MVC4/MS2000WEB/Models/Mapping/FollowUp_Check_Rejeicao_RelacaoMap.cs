using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowUp_Check_Rejeicao_RelacaoMap : EntityTypeConfiguration<FollowUp_Check_Rejeicao_Relacao>
    {
        public FollowUp_Check_Rejeicao_RelacaoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_Rejeicao_Tipo, t.FK_FollowUp_Check });

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Rejeicao_Tipo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FK_FollowUp_Check)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("FollowUp_Check_Rejeicao_Relacao");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.FK_Rejeicao_Tipo).HasColumnName("FK_Rejeicao_Tipo");
            this.Property(t => t.FK_FollowUp_Check).HasColumnName("FK_FollowUp_Check");
        }
    }
}
