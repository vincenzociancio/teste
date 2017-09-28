namespace Avaliacao.Gerenciador.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addTipofield : DbMigration
    {
        public override void Up()
        {
            //DropForeignKey("dbo.Avaliacao_Perguntas", "FK_Categoria", "dbo.Avaliacao_Categoria");
            //DropIndex("dbo.Avaliacao_Perguntas", new[] { "FK_Categoria" });
            AddColumn("dbo.Avaliacao_Avaliacao", "Tipo", c => c.String());
        }
        
        public override void Down()
        {
            //DropColumn("dbo.Avaliacao_Avaliacao", "Tipo");
            //CreateIndex("dbo.Avaliacao_Perguntas", "FK_Categoria");
            //AddForeignKey("dbo.Avaliacao_Perguntas", "FK_Categoria", "dbo.Avaliacao_Categoria", "ID");
        }
    }
}
