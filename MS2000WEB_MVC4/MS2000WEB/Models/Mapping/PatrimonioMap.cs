using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class PatrimonioMap : EntityTypeConfiguration<Patrimonio>
    {
        public PatrimonioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Plaqueta });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Plaqueta)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.Descricao)
                .HasMaxLength(255);

            this.Property(t => t.Tipo_Patrimonio)
                .HasMaxLength(4);

            this.Property(t => t.Sub_Tipo_Patrimonio)
                .HasMaxLength(4);

            this.Property(t => t.Setor)
                .HasMaxLength(4);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.Nserie)
                .HasMaxLength(50);

            this.Property(t => t.Fornecedor)
                .HasMaxLength(4);

            this.Property(t => t.Nfiscal_entrada)
                .HasMaxLength(20);

            this.Property(t => t.IP)
                .HasMaxLength(15);

            this.Property(t => t.PREDE)
                .HasMaxLength(2);

            this.Property(t => t.Status_Patrimonio)
                .HasMaxLength(4);

            this.Property(t => t.Detalhe)
                .HasMaxLength(50);

            this.Property(t => t.Plaqueta2)
                .HasMaxLength(6);

            // Table & Column Mappings
            this.ToTable("Patrimonio");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Plaqueta).HasColumnName("Plaqueta");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Tipo_Patrimonio).HasColumnName("Tipo_Patrimonio");
            this.Property(t => t.Sub_Tipo_Patrimonio).HasColumnName("Sub_Tipo_Patrimonio");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Nserie).HasColumnName("Nserie");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Nfiscal_entrada).HasColumnName("Nfiscal_entrada");
            this.Property(t => t.IP).HasColumnName("IP");
            this.Property(t => t.PREDE).HasColumnName("PREDE");
            this.Property(t => t.Status_Patrimonio).HasColumnName("Status_Patrimonio");
            this.Property(t => t.OBS).HasColumnName("OBS");
            this.Property(t => t.Detalhe).HasColumnName("Detalhe");
            this.Property(t => t.Plaqueta2).HasColumnName("Plaqueta2");
        }
    }
}
