using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RAT_RepetroMap : EntityTypeConfiguration<RAT_Repetro>
    {
        public RAT_RepetroMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Nome_Empresa_Estrangeira)
                .HasMaxLength(150);

            this.Property(t => t.Endereco_Empresa_Estrangeira)
                .HasMaxLength(150);

            this.Property(t => t.FK_Fundamentacao)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Num_Processo_Bem_Principal)
                .HasMaxLength(50);

            this.Property(t => t.Num_DI_Bem_Principal)
                .HasMaxLength(50);

            this.Property(t => t.Num_DI_Bem_Acessorio)
                .HasMaxLength(50);

            this.Property(t => t.Localizacao_Fisica_Bem)
                .HasMaxLength(300);

            this.Property(t => t.Unidade_Jurisdicionante)
                .HasMaxLength(100);

            this.Property(t => t.Representante_Nome)
                .HasMaxLength(100);

            this.Property(t => t.Representante_CPF)
                .HasMaxLength(100);

            this.Property(t => t.Representante_Email)
                .HasMaxLength(100);

            this.Property(t => t.Representante_Telefone)
                .HasMaxLength(30);

            this.Property(t => t.Usuario_Criacao)
                .HasMaxLength(50);

            this.Property(t => t.Finalidade_Outra)
                .HasMaxLength(30);

            this.Property(t => t.Moeda)
                .HasMaxLength(10);
            this.Property(t => t.Num_Rat)
                .HasMaxLength(50); 

            // Table & Column Mappings
            this.ToTable("RAT_Repetro");
            this.Property(t => t.ID).HasColumnName("ID");            
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.Nome_Empresa_Estrangeira).HasColumnName("Nome_Empresa_Estrangeira");
            this.Property(t => t.Endereco_Empresa_Estrangeira).HasColumnName("Endereco_Empresa_Estrangeira");
            this.Property(t => t.Enquadramento_Pedido).HasColumnName("Enquadramento_Pedido");
            this.Property(t => t.FK_Fundamentacao).HasColumnName("FK_Fundamentacao");
            this.Property(t => t.Finalidade).HasColumnName("Finalidade");
            this.Property(t => t.Num_Processo_Bem_Principal).HasColumnName("Num_Processo_Bem_Principal");
            this.Property(t => t.Num_DI_Bem_Principal).HasColumnName("Num_DI_Bem_Principal");
            this.Property(t => t.Num_DI_Bem_Acessorio).HasColumnName("Num_DI_Bem_Acessorio");
            this.Property(t => t.Localizacao_Fisica_Bem).HasColumnName("Localizacao_Fisica_Bem");
            this.Property(t => t.Unidade_Jurisdicionante).HasColumnName("Unidade_Jurisdicionante");
            this.Property(t => t.Representante_Nome).HasColumnName("Representante_Nome");
            this.Property(t => t.Representante_CPF).HasColumnName("Representante_CPF");
            this.Property(t => t.Representante_Email).HasColumnName("Representante_Email");
            this.Property(t => t.Representante_Telefone).HasColumnName("Representante_Telefone");
            this.Property(t => t.Enquadramento_Prazo_Solicitado).HasColumnName("Enquadramento_Prazo_Solicitado");
            this.Property(t => t.Data_Criacao_Rat).HasColumnName("Data_Criacao_Rat");
            this.Property(t => t.Usuario_Criacao).HasColumnName("Usuario_Criacao");
            this.Property(t => t.Finalidade_Outra).HasColumnName("Finalidade_Outra");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Num_Rat).HasColumnName("Num_Rat"); 
        }
    }
}
