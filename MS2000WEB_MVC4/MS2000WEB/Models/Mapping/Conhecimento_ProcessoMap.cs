using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Conhecimento_ProcessoMap : EntityTypeConfiguration<Conhecimento_Processo>
    {
        public Conhecimento_ProcessoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo });

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

            this.Property(t => t.Via)
                .HasMaxLength(1);

            this.Property(t => t.PLaca)
                .HasMaxLength(15);

            this.Property(t => t.Lacre)
                .HasMaxLength(15);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(30);

            this.Property(t => t.Transportador)
                .HasMaxLength(4);

            this.Property(t => t.Tipodoccarga)
                .HasMaxLength(2);

            this.Property(t => t.Numerodoccarga)
                .HasMaxLength(25);

            this.Property(t => t.Numeromaster)
                .HasMaxLength(18);

            this.Property(t => t.Local)
                .HasMaxLength(50);

            this.Property(t => t.Utilizacao)
                .HasMaxLength(1);

            this.Property(t => t.Tipomanifesto)
                .HasMaxLength(1);

            this.Property(t => t.Numeromanifesto)
                .HasMaxLength(15);

            this.Property(t => t.Codigo_Presenca_Carga)
                .HasMaxLength(50);

            this.Property(t => t.Agente)
                .HasMaxLength(30);

            this.Property(t => t.Pais_Procedencia)
                .HasMaxLength(3);

            this.Property(t => t.URF_chegada)
                .HasMaxLength(7);

            this.Property(t => t.URF_Despacho)
                .HasMaxLength(7);

            this.Property(t => t.Recinto_Alfandegario)
                .HasMaxLength(7);

            this.Property(t => t.Setor_Alfandegario)
                .HasMaxLength(3);

            this.Property(t => t.Armazem)
                .HasMaxLength(30);

            this.Property(t => t.Contratante_OPCAMBIAL)
                .HasMaxLength(18);

            this.Property(t => t.Moeda_Frete)
                .HasMaxLength(3);

            this.Property(t => t.Moeda_Seguro)
                .HasMaxLength(3);

            this.Property(t => t.Moeda_Despesas_ate_FOB)
                .HasMaxLength(3);

            this.Property(t => t.Unidade)
                .HasMaxLength(2);

            this.Property(t => t.Data_Follow)
                .IsFixedLength()
                .HasMaxLength(5);

            this.Property(t => t.Moeda_TXCE)
                .HasMaxLength(3);

            this.Property(t => t.Moeda_BAF)
                .HasMaxLength(3);

            this.Property(t => t.Moeda_Outros_Componentes)
                .HasMaxLength(3);

            this.Property(t => t.Bandeira)
                .HasMaxLength(5);

            this.Property(t => t.Autorizacao_Marinha)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Conhecimento_Processo");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Via).HasColumnName("Via");
            this.Property(t => t.Multimodal).HasColumnName("Multimodal");
            this.Property(t => t.PLaca).HasColumnName("PLaca");
            this.Property(t => t.Lacre).HasColumnName("Lacre");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.Transportador).HasColumnName("Transportador");
            this.Property(t => t.Tipodoccarga).HasColumnName("Tipodoccarga");
            this.Property(t => t.Numerodoccarga).HasColumnName("Numerodoccarga");
            this.Property(t => t.Numeromaster).HasColumnName("Numeromaster");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Utilizacao).HasColumnName("Utilizacao");
            this.Property(t => t.Tipomanifesto).HasColumnName("Tipomanifesto");
            this.Property(t => t.Numeromanifesto).HasColumnName("Numeromanifesto");
            this.Property(t => t.Codigo_Presenca_Carga).HasColumnName("Codigo_Presenca_Carga");
            this.Property(t => t.Peso_Bruto).HasColumnName("Peso_Bruto");
            this.Property(t => t.Peso_Liquido).HasColumnName("Peso_Liquido");
            this.Property(t => t.Agente).HasColumnName("Agente");
            this.Property(t => t.Pais_Procedencia).HasColumnName("Pais_Procedencia");
            this.Property(t => t.URF_chegada).HasColumnName("URF_chegada");
            this.Property(t => t.Data_Chegada_URF_Cheg).HasColumnName("Data_Chegada_URF_Cheg");
            this.Property(t => t.URF_Despacho).HasColumnName("URF_Despacho");
            this.Property(t => t.Data_Chegada_URF_Desp).HasColumnName("Data_Chegada_URF_Desp");
            this.Property(t => t.Recinto_Alfandegario).HasColumnName("Recinto_Alfandegario");
            this.Property(t => t.Setor_Alfandegario).HasColumnName("Setor_Alfandegario");
            this.Property(t => t.Armazem).HasColumnName("Armazem");
            this.Property(t => t.Operacao_FUNDAP).HasColumnName("Operacao_FUNDAP");
            this.Property(t => t.Contratante_OPCAMBIAL).HasColumnName("Contratante_OPCAMBIAL");
            this.Property(t => t.Moeda_Frete).HasColumnName("Moeda_Frete");
            this.Property(t => t.Frete_Prepaid).HasColumnName("Frete_Prepaid");
            this.Property(t => t.Frete_Collect).HasColumnName("Frete_Collect");
            this.Property(t => t.Frete_Ter_Nac).HasColumnName("Frete_Ter_Nac");
            this.Property(t => t.Moeda_Seguro).HasColumnName("Moeda_Seguro");
            this.Property(t => t.Valor_Seguro).HasColumnName("Valor_Seguro");
            this.Property(t => t.Moeda_Despesas_ate_FOB).HasColumnName("Moeda_Despesas_ate_FOB");
            this.Property(t => t.Valor_Despesas_ate_FOB).HasColumnName("Valor_Despesas_ate_FOB");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.DT_ETA).HasColumnName("DT_ETA");
            this.Property(t => t.Data_Follow).HasColumnName("Data_Follow");
            this.Property(t => t.TX_CE).HasColumnName("TX_CE");
            this.Property(t => t.Moeda_TXCE).HasColumnName("Moeda_TXCE");
            this.Property(t => t.BAF).HasColumnName("BAF");
            this.Property(t => t.Moeda_BAF).HasColumnName("Moeda_BAF");
            this.Property(t => t.Outros_Componentes_Frete).HasColumnName("Outros_Componentes_Frete");
            this.Property(t => t.Moeda_Outros_Componentes).HasColumnName("Moeda_Outros_Componentes");
            this.Property(t => t.Bandeira).HasColumnName("Bandeira");
            this.Property(t => t.Autorizacao_Marinha).HasColumnName("Autorizacao_Marinha");
        }
    }
}
