using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FOLLOW_ANTIGOMap : EntityTypeConfiguration<FOLLOW_ANTIGO>
    {
        public FOLLOW_ANTIGOMap()
        {
            // Primary Key
            this.HasKey(t => t.num);

            // Properties
            this.Property(t => t.Processo)
                .HasMaxLength(25);

            this.Property(t => t.Parcial)
                .HasMaxLength(2);

            this.Property(t => t.Nosso_Nr)
                .HasMaxLength(25);

            this.Property(t => t.Cliente)
                .HasMaxLength(20);

            this.Property(t => t.senha)
                .HasMaxLength(10);

            this.Property(t => t.Mov_Cliente)
                .HasMaxLength(1);

            this.Property(t => t.Mov_Nosso)
                .HasMaxLength(1);

            this.Property(t => t.Tipo)
                .HasMaxLength(1);

            this.Property(t => t.Mercadoria)
                .HasMaxLength(50);

            this.Property(t => t.Fornecedor)
                .HasMaxLength(50);

            this.Property(t => t.Unidade)
                .HasMaxLength(6);

            this.Property(t => t.Quantidade)
                .HasMaxLength(10);

            this.Property(t => t.Moeda)
                .HasMaxLength(10);

            this.Property(t => t.Forma_Paga)
                .HasMaxLength(30);

            this.Property(t => t.LI_NR)
                .HasMaxLength(25);

            this.Property(t => t.Consigna)
                .HasMaxLength(30);

            this.Property(t => t.Origem)
                .HasMaxLength(25);

            this.Property(t => t.Porto_Embarque)
                .HasMaxLength(25);

            this.Property(t => t.Porto_Descarga)
                .HasMaxLength(25);

            this.Property(t => t.Carta_Credito)
                .HasMaxLength(25);

            this.Property(t => t.Embarque_Previsto)
                .HasMaxLength(10);

            this.Property(t => t.Aviao_Navio)
                .HasMaxLength(30);

            this.Property(t => t.Transportador)
                .HasMaxLength(35);

            this.Property(t => t.Chegada_Previsao)
                .HasMaxLength(10);

            this.Property(t => t.BLAWB)
                .HasMaxLength(25);

            this.Property(t => t.Despachante)
                .HasMaxLength(35);

            this.Property(t => t.DI)
                .HasMaxLength(25);

            this.Property(t => t.DTA)
                .HasMaxLength(10);

            this.Property(t => t.Invoice)
                .HasMaxLength(20);

            this.Property(t => t.Termo)
                .HasMaxLength(25);

            this.Property(t => t.outros_doc_1)
                .HasMaxLength(10);

            this.Property(t => t.txt_doc_1)
                .HasMaxLength(20);

            this.Property(t => t.outros_doc_2)
                .HasMaxLength(10);

            this.Property(t => t.txt_doc_2)
                .HasMaxLength(20);

            this.Property(t => t.outros_doc_3)
                .HasMaxLength(10);

            this.Property(t => t.txt_doc_3)
                .HasMaxLength(20);

            this.Property(t => t.outros_doc_4)
                .HasMaxLength(10);

            this.Property(t => t.txt_doc_4)
                .HasMaxLength(20);

            this.Property(t => t.outros_doc_5)
                .HasMaxLength(10);

            this.Property(t => t.txt_doc_5)
                .HasMaxLength(20);

            this.Property(t => t.Canal)
                .HasMaxLength(10);

            this.Property(t => t.container_1)
                .HasMaxLength(20);

            this.Property(t => t.container_2)
                .HasMaxLength(20);

            this.Property(t => t.container_3)
                .HasMaxLength(20);

            this.Property(t => t.container_4)
                .HasMaxLength(20);

            this.Property(t => t.container_5)
                .HasMaxLength(20);

            this.Property(t => t.container_6)
                .HasMaxLength(20);

            this.Property(t => t.container_7)
                .HasMaxLength(20);

            this.Property(t => t.container_8)
                .HasMaxLength(20);

            this.Property(t => t.container_9)
                .HasMaxLength(20);

            this.Property(t => t.container_10)
                .HasMaxLength(20);

            this.Property(t => t.container_11)
                .HasMaxLength(20);

            this.Property(t => t.container_12)
                .HasMaxLength(20);

            this.Property(t => t.container_13)
                .HasMaxLength(20);

            this.Property(t => t.container_14)
                .HasMaxLength(20);

            this.Property(t => t.container_15)
                .HasMaxLength(20);

            this.Property(t => t.container_16)
                .HasMaxLength(20);

            this.Property(t => t.container_17)
                .HasMaxLength(20);

            this.Property(t => t.container_18)
                .HasMaxLength(20);

            this.Property(t => t.container_19)
                .HasMaxLength(20);

            this.Property(t => t.container_20)
                .HasMaxLength(20);

            this.Property(t => t.container_21)
                .HasMaxLength(20);

            this.Property(t => t.container_22)
                .HasMaxLength(20);

            this.Property(t => t.container_23)
                .HasMaxLength(20);

            this.Property(t => t.container_24)
                .HasMaxLength(20);

            this.Property(t => t.container_25)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("FOLLOW_ANTIGO");
            this.Property(t => t.num).HasColumnName("num");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Parcial).HasColumnName("Parcial");
            this.Property(t => t.Nosso_Nr).HasColumnName("Nosso_Nr");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.senha).HasColumnName("senha");
            this.Property(t => t.Txt_Cliente).HasColumnName("Txt_Cliente");
            this.Property(t => t.Txt_Nosso).HasColumnName("Txt_Nosso");
            this.Property(t => t.Txt_Ultimo).HasColumnName("Txt_Ultimo");
            this.Property(t => t.Mov_Cliente).HasColumnName("Mov_Cliente");
            this.Property(t => t.Mov_Nosso).HasColumnName("Mov_Nosso");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Mercadoria).HasColumnName("Mercadoria");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Fob_Unitario).HasColumnName("Fob_Unitario");
            this.Property(t => t.Fob_Total).HasColumnName("Fob_Total");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Forma_Paga).HasColumnName("Forma_Paga");
            this.Property(t => t.Rec_Proforma).HasColumnName("Rec_Proforma");
            this.Property(t => t.LI_NR).HasColumnName("LI_NR");
            this.Property(t => t.Consigna).HasColumnName("Consigna");
            this.Property(t => t.Origem).HasColumnName("Origem");
            this.Property(t => t.Porto_Embarque).HasColumnName("Porto_Embarque");
            this.Property(t => t.Porto_Descarga).HasColumnName("Porto_Descarga");
            this.Property(t => t.PO_Fornecedor).HasColumnName("PO_Fornecedor");
            this.Property(t => t.Carta_Credito).HasColumnName("Carta_Credito");
            this.Property(t => t.Carta_Emite).HasColumnName("Carta_Emite");
            this.Property(t => t.Carta_Vence).HasColumnName("Carta_Vence");
            this.Property(t => t.Embarque_Previsto).HasColumnName("Embarque_Previsto");
            this.Property(t => t.Embarque_Real).HasColumnName("Embarque_Real");
            this.Property(t => t.Aviao_Navio).HasColumnName("Aviao_Navio");
            this.Property(t => t.Transportador).HasColumnName("Transportador");
            this.Property(t => t.Chegada_Previsao).HasColumnName("Chegada_Previsao");
            this.Property(t => t.Chegada_Real).HasColumnName("Chegada_Real");
            this.Property(t => t.BLAWB).HasColumnName("BLAWB");
            this.Property(t => t.Documentos_Cambio).HasColumnName("Documentos_Cambio");
            this.Property(t => t.Dias_Cambio).HasColumnName("Dias_Cambio");
            this.Property(t => t.Fecha_Cambio).HasColumnName("Fecha_Cambio");
            this.Property(t => t.Despachante).HasColumnName("Despachante");
            this.Property(t => t.Doc_Despachante).HasColumnName("Doc_Despachante");
            this.Property(t => t.Numerario).HasColumnName("Numerario");
            this.Property(t => t.Numerario_Para).HasColumnName("Numerario_Para");
            this.Property(t => t.Pag_Tributos).HasColumnName("Pag_Tributos");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.DTA).HasColumnName("DTA");
            this.Property(t => t.Invoice).HasColumnName("Invoice");
            this.Property(t => t.Desembaraco_Prev).HasColumnName("Desembaraco_Prev");
            this.Property(t => t.Desembaraco_Real).HasColumnName("Desembaraco_Real");
            this.Property(t => t.Termo).HasColumnName("Termo");
            this.Property(t => t.Venc_Termo).HasColumnName("Venc_Termo");
            this.Property(t => t.Armazenagem_1).HasColumnName("Armazenagem_1");
            this.Property(t => t.Armazenagem_2).HasColumnName("Armazenagem_2");
            this.Property(t => t.outros_doc_1).HasColumnName("outros_doc_1");
            this.Property(t => t.txt_doc_1).HasColumnName("txt_doc_1");
            this.Property(t => t.outros_doc_2).HasColumnName("outros_doc_2");
            this.Property(t => t.txt_doc_2).HasColumnName("txt_doc_2");
            this.Property(t => t.outros_doc_3).HasColumnName("outros_doc_3");
            this.Property(t => t.txt_doc_3).HasColumnName("txt_doc_3");
            this.Property(t => t.outros_doc_4).HasColumnName("outros_doc_4");
            this.Property(t => t.txt_doc_4).HasColumnName("txt_doc_4");
            this.Property(t => t.outros_doc_5).HasColumnName("outros_doc_5");
            this.Property(t => t.txt_doc_5).HasColumnName("txt_doc_5");
            this.Property(t => t.Canal).HasColumnName("Canal");
            this.Property(t => t.container_1).HasColumnName("container_1");
            this.Property(t => t.container_2).HasColumnName("container_2");
            this.Property(t => t.container_3).HasColumnName("container_3");
            this.Property(t => t.container_4).HasColumnName("container_4");
            this.Property(t => t.container_5).HasColumnName("container_5");
            this.Property(t => t.container_6).HasColumnName("container_6");
            this.Property(t => t.container_7).HasColumnName("container_7");
            this.Property(t => t.container_8).HasColumnName("container_8");
            this.Property(t => t.container_9).HasColumnName("container_9");
            this.Property(t => t.container_10).HasColumnName("container_10");
            this.Property(t => t.container_11).HasColumnName("container_11");
            this.Property(t => t.container_12).HasColumnName("container_12");
            this.Property(t => t.container_13).HasColumnName("container_13");
            this.Property(t => t.container_14).HasColumnName("container_14");
            this.Property(t => t.container_15).HasColumnName("container_15");
            this.Property(t => t.container_16).HasColumnName("container_16");
            this.Property(t => t.container_17).HasColumnName("container_17");
            this.Property(t => t.container_18).HasColumnName("container_18");
            this.Property(t => t.container_19).HasColumnName("container_19");
            this.Property(t => t.container_20).HasColumnName("container_20");
            this.Property(t => t.container_21).HasColumnName("container_21");
            this.Property(t => t.container_22).HasColumnName("container_22");
            this.Property(t => t.container_23).HasColumnName("container_23");
            this.Property(t => t.container_24).HasColumnName("container_24");
            this.Property(t => t.container_25).HasColumnName("container_25");
        }
    }
}
