using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class REPETRO_PLANILHA_GERALMap : EntityTypeConfiguration<REPETRO_PLANILHA_GERAL>
    {
        public REPETRO_PLANILHA_GERALMap()
        {
            // Primary Key
            this.HasKey(t => t.Doc_Importacao);

            // Properties
            this.Property(t => t.Empresa)
                .HasMaxLength(60);

            this.Property(t => t.Contratos_Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(250);

            this.Property(t => t.cod_tipo_local)
                .HasMaxLength(4);

            this.Property(t => t.tipo_local)
                .HasMaxLength(50);

            this.Property(t => t.Doc_Importacao)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.REF_ITEM)
                .HasMaxLength(25);

            this.Property(t => t.Numero_serie)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("REPETRO_PLANILHA_GERAL");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Contratos_Descricao).HasColumnName("Contratos_Descricao");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.cod_tipo_local).HasColumnName("cod_tipo_local");
            this.Property(t => t.tipo_local).HasColumnName("tipo_local");
            this.Property(t => t.Doc_Importacao).HasColumnName("Doc_Importacao");
            this.Property(t => t.REF_ITEM).HasColumnName("REF_ITEM");
            this.Property(t => t.Numero_serie).HasColumnName("Numero_serie");
            this.Property(t => t.DESCBEM).HasColumnName("DESCBEM");
            this.Property(t => t.DESCBEM_Ing).HasColumnName("DESCBEM_Ing");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
        }
    }
}
