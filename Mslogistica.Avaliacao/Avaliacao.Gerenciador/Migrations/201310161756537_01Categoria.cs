namespace Avaliacao.Gerenciador.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _01Categoria : DbMigration
    {
        public override void Up()
        {
            //CreateTable(
            //    "dbo.Avaliacao_Categoria",
            //    c => new
            //        {
            //            ID = c.Int(nullable: false, identity: true),
            //            Descricao = c.String(),
            //        })
            //    .PrimaryKey(t => t.ID);
            
            //AddColumn("dbo.Avaliacao_Perguntas", "FK_Categoria", c => c.Int());
            AddForeignKey("dbo.Avaliacao_Perguntas", "FK_Categoria", "dbo.Avaliacao_Categoria", "ID");
            CreateIndex("dbo.Avaliacao_Perguntas", "FK_Categoria");
        }
        
        public override void Down()
        {
            //DropIndex("dbo.Avaliacao_Perguntas", new[] { "FK_Categoria" });
            //DropForeignKey("dbo.Avaliacao_Perguntas", "FK_Categoria", "dbo.Avaliacao_Categoria");
            //DropColumn("dbo.Avaliacao_Perguntas", "FK_Categoria");
            //DropTable("dbo.Avaliacao_Categoria");
        }
    }
}
