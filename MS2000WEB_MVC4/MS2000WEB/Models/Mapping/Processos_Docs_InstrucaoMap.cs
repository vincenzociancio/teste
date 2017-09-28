using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Docs_InstrucaoMap : EntityTypeConfiguration<Processos_Docs_Instrucao>
    {
        public Processos_Docs_InstrucaoMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.NR_DCTO_INSTRUCAO)
                .HasMaxLength(25);

            this.Property(t => t.CD_TIPO_DCTO_INSTR)
                .HasMaxLength(2);

            this.Property(t => t.NM_DCTO_INSTRUCAO)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Processos_Docs_Instrucao");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.NR_DCTO_INSTRUCAO).HasColumnName("NR_DCTO_INSTRUCAO");
            this.Property(t => t.CD_TIPO_DCTO_INSTR).HasColumnName("CD_TIPO_DCTO_INSTR");
            this.Property(t => t.NM_DCTO_INSTRUCAO).HasColumnName("NM_DCTO_INSTRUCAO");
        }
    }
}
