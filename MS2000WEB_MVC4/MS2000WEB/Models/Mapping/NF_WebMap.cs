using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NF_WebMap : EntityTypeConfiguration<NF_Web>
    {
        public NF_WebMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CNPJ_CPF_COMPLETO, t.Tiponf, t.NFiscal });

            // Properties
            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .IsRequired()
                .HasMaxLength(14);

            this.Property(t => t.Tiponf)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.NFiscal)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Layout)
                .HasMaxLength(4);

            this.Property(t => t.NatOpe)
                .HasMaxLength(80);

            this.Property(t => t.CFOP)
                .HasMaxLength(4);

            this.Property(t => t.InscEstadualsubs)
                .HasMaxLength(15);

            this.Property(t => t.InscEstadual)
                .HasMaxLength(15);

            this.Property(t => t.Nomedestrem)
                .HasMaxLength(60);

            this.Property(t => t.CNPJCPF)
                .HasMaxLength(18);

            this.Property(t => t.Endereco)
                .HasMaxLength(50);

            this.Property(t => t.Bairrodistrito)
                .HasMaxLength(20);

            this.Property(t => t.Cep)
                .HasMaxLength(10);

            this.Property(t => t.Municipio)
                .HasMaxLength(25);

            this.Property(t => t.FoneFax)
                .HasMaxLength(20);

            this.Property(t => t.UF)
                .HasMaxLength(2);

            this.Property(t => t.InscEstDestRem)
                .HasMaxLength(15);

            this.Property(t => t.DuplicataNr)
                .HasMaxLength(10);

            this.Property(t => t.CondEspeciais)
                .HasMaxLength(50);

            this.Property(t => t.Cnpj_Transportador)
                .HasMaxLength(14);

            this.Property(t => t.InscEstadual_Transportador)
                .HasMaxLength(15);

            this.Property(t => t.Nome_Transportador)
                .HasMaxLength(50);

            this.Property(t => t.Endereco_Transportador)
                .HasMaxLength(50);

            this.Property(t => t.Municipio_Transportador)
                .HasMaxLength(50);

            this.Property(t => t.UF_Transportador)
                .HasMaxLength(2);

            this.Property(t => t.Frete)
                .HasMaxLength(1);

            this.Property(t => t.Placa)
                .HasMaxLength(10);

            this.Property(t => t.UFVeiculo)
                .HasMaxLength(2);

            this.Property(t => t.Especie)
                .HasMaxLength(20);

            this.Property(t => t.Marca)
                .HasMaxLength(10);

            this.Property(t => t.Numero)
                .HasMaxLength(10);

            this.Property(t => t.Incoterm)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("NF_Web");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.Tiponf).HasColumnName("Tiponf");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
            this.Property(t => t.Layout).HasColumnName("Layout");
            this.Property(t => t.NatOpe).HasColumnName("NatOpe");
            this.Property(t => t.CFOP).HasColumnName("CFOP");
            this.Property(t => t.InscEstadualsubs).HasColumnName("InscEstadualsubs");
            this.Property(t => t.InscEstadual).HasColumnName("InscEstadual");
            this.Property(t => t.Nomedestrem).HasColumnName("Nomedestrem");
            this.Property(t => t.CNPJCPF).HasColumnName("CNPJCPF");
            this.Property(t => t.Endereco).HasColumnName("Endereco");
            this.Property(t => t.Bairrodistrito).HasColumnName("Bairrodistrito");
            this.Property(t => t.Cep).HasColumnName("Cep");
            this.Property(t => t.Municipio).HasColumnName("Municipio");
            this.Property(t => t.FoneFax).HasColumnName("FoneFax");
            this.Property(t => t.UF).HasColumnName("UF");
            this.Property(t => t.InscEstDestRem).HasColumnName("InscEstDestRem");
            this.Property(t => t.DtEmissao).HasColumnName("DtEmissao");
            this.Property(t => t.Dtsaidaentrada).HasColumnName("Dtsaidaentrada");
            this.Property(t => t.Horasaida).HasColumnName("Horasaida");
            this.Property(t => t.DuplicataNr).HasColumnName("DuplicataNr");
            this.Property(t => t.Vencimento).HasColumnName("Vencimento");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.CondEspeciais).HasColumnName("CondEspeciais");
            this.Property(t => t.DA1).HasColumnName("DA1");
            this.Property(t => t.DA2).HasColumnName("DA2");
            this.Property(t => t.DA3).HasColumnName("DA3");
            this.Property(t => t.DA4).HasColumnName("DA4");
            this.Property(t => t.DA5).HasColumnName("DA5");
            this.Property(t => t.DA6).HasColumnName("DA6");
            this.Property(t => t.DA7).HasColumnName("DA7");
            this.Property(t => t.BaseCalcICMS).HasColumnName("BaseCalcICMS");
            this.Property(t => t.ValICMS).HasColumnName("ValICMS");
            this.Property(t => t.BaseCalcICMSsubst).HasColumnName("BaseCalcICMSsubst");
            this.Property(t => t.ValICMSsubs).HasColumnName("ValICMSsubs");
            this.Property(t => t.Valtotprodutos).HasColumnName("Valtotprodutos");
            this.Property(t => t.Valfrete).HasColumnName("Valfrete");
            this.Property(t => t.Valseguro).HasColumnName("Valseguro");
            this.Property(t => t.Outrasdesp).HasColumnName("Outrasdesp");
            this.Property(t => t.ValtotIPI).HasColumnName("ValtotIPI");
            this.Property(t => t.Vatotnota).HasColumnName("Vatotnota");
            this.Property(t => t.Cnpj_Transportador).HasColumnName("Cnpj_Transportador");
            this.Property(t => t.InscEstadual_Transportador).HasColumnName("InscEstadual_Transportador");
            this.Property(t => t.Nome_Transportador).HasColumnName("Nome_Transportador");
            this.Property(t => t.Endereco_Transportador).HasColumnName("Endereco_Transportador");
            this.Property(t => t.Municipio_Transportador).HasColumnName("Municipio_Transportador");
            this.Property(t => t.UF_Transportador).HasColumnName("UF_Transportador");
            this.Property(t => t.Frete).HasColumnName("Frete");
            this.Property(t => t.Placa).HasColumnName("Placa");
            this.Property(t => t.UFVeiculo).HasColumnName("UFVeiculo");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Especie).HasColumnName("Especie");
            this.Property(t => t.Marca).HasColumnName("Marca");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.PesoBruto).HasColumnName("PesoBruto");
            this.Property(t => t.PesoLiquido).HasColumnName("PesoLiquido");
            this.Property(t => t.Incoterm).HasColumnName("Incoterm");
            this.Property(t => t.ValTotII).HasColumnName("ValTotII");
            this.Property(t => t.ValTotFOB).HasColumnName("ValTotFOB");
            this.Property(t => t.ValTotPIS).HasColumnName("ValTotPIS");
            this.Property(t => t.ValTotCOFINS).HasColumnName("ValTotCOFINS");
            this.Property(t => t.ValTxSiscomex).HasColumnName("ValTxSiscomex");
        }
    }
}
