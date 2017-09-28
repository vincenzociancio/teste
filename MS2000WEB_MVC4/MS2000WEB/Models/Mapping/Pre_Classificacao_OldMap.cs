using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_Classificacao_OldMap : EntityTypeConfiguration<Pre_Classificacao_Old>
    {
        public Pre_Classificacao_OldMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("Pre_Classificacao_Old");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.col001).HasColumnName("col001");
            this.Property(t => t.col002).HasColumnName("col002");
            this.Property(t => t.col003).HasColumnName("col003");
            this.Property(t => t.col004).HasColumnName("col004");
            this.Property(t => t.col005).HasColumnName("col005");
            this.Property(t => t.col006).HasColumnName("col006");
            this.Property(t => t.col007).HasColumnName("col007");
            this.Property(t => t.col008).HasColumnName("col008");
            this.Property(t => t.col009).HasColumnName("col009");
            this.Property(t => t.col010).HasColumnName("col010");
            this.Property(t => t.col011).HasColumnName("col011");
            this.Property(t => t.col012).HasColumnName("col012");
            this.Property(t => t.col013).HasColumnName("col013");
            this.Property(t => t.col014).HasColumnName("col014");
            this.Property(t => t.col015).HasColumnName("col015");
            this.Property(t => t.col016).HasColumnName("col016");
            this.Property(t => t.col017).HasColumnName("col017");
            this.Property(t => t.col018).HasColumnName("col018");
            this.Property(t => t.col019).HasColumnName("col019");
            this.Property(t => t.col020).HasColumnName("col020");
            this.Property(t => t.col021).HasColumnName("col021");
            this.Property(t => t.col022).HasColumnName("col022");
            this.Property(t => t.col023).HasColumnName("col023");
            this.Property(t => t.col024).HasColumnName("col024");
            this.Property(t => t.col025).HasColumnName("col025");
            this.Property(t => t.col026).HasColumnName("col026");
            this.Property(t => t.col027).HasColumnName("col027");
            this.Property(t => t.col028).HasColumnName("col028");
            this.Property(t => t.col029).HasColumnName("col029");
            this.Property(t => t.col030).HasColumnName("col030");
            this.Property(t => t.col031).HasColumnName("col031");
            this.Property(t => t.col032).HasColumnName("col032");
            this.Property(t => t.col033).HasColumnName("col033");
            this.Property(t => t.col034).HasColumnName("col034");
            this.Property(t => t.col035).HasColumnName("col035");
            this.Property(t => t.col036).HasColumnName("col036");
            this.Property(t => t.col037).HasColumnName("col037");
            this.Property(t => t.col038).HasColumnName("col038");
            this.Property(t => t.col039).HasColumnName("col039");
            this.Property(t => t.col040).HasColumnName("col040");
            this.Property(t => t.col041).HasColumnName("col041");
            this.Property(t => t.col042).HasColumnName("col042");
            this.Property(t => t.col043).HasColumnName("col043");
            this.Property(t => t.col044).HasColumnName("col044");
            this.Property(t => t.col045).HasColumnName("col045");
            this.Property(t => t.col046).HasColumnName("col046");
            this.Property(t => t.col047).HasColumnName("col047");
            this.Property(t => t.col048).HasColumnName("col048");
            this.Property(t => t.col049).HasColumnName("col049");
            this.Property(t => t.col050).HasColumnName("col050");
            this.Property(t => t.col051).HasColumnName("col051");
            this.Property(t => t.col052).HasColumnName("col052");
            this.Property(t => t.col053).HasColumnName("col053");
            this.Property(t => t.col054).HasColumnName("col054");
            this.Property(t => t.col055).HasColumnName("col055");
            this.Property(t => t.col056).HasColumnName("col056");
            this.Property(t => t.col057).HasColumnName("col057");
            this.Property(t => t.col058).HasColumnName("col058");
            this.Property(t => t.col059).HasColumnName("col059");
            this.Property(t => t.col060).HasColumnName("col060");
            this.Property(t => t.col061).HasColumnName("col061");
            this.Property(t => t.col062).HasColumnName("col062");
            this.Property(t => t.col063).HasColumnName("col063");
            this.Property(t => t.col064).HasColumnName("col064");
            this.Property(t => t.col065).HasColumnName("col065");
            this.Property(t => t.col066).HasColumnName("col066");
            this.Property(t => t.col067).HasColumnName("col067");
            this.Property(t => t.col068).HasColumnName("col068");
            this.Property(t => t.col069).HasColumnName("col069");
            this.Property(t => t.col070).HasColumnName("col070");
            this.Property(t => t.col071).HasColumnName("col071");
            this.Property(t => t.col072).HasColumnName("col072");
            this.Property(t => t.col073).HasColumnName("col073");
            this.Property(t => t.col074).HasColumnName("col074");
            this.Property(t => t.col075).HasColumnName("col075");
            this.Property(t => t.col076).HasColumnName("col076");
            this.Property(t => t.col077).HasColumnName("col077");
            this.Property(t => t.col078).HasColumnName("col078");
            this.Property(t => t.col079).HasColumnName("col079");
            this.Property(t => t.col080).HasColumnName("col080");
            this.Property(t => t.col081).HasColumnName("col081");
            this.Property(t => t.col082).HasColumnName("col082");
            this.Property(t => t.col083).HasColumnName("col083");
            this.Property(t => t.col084).HasColumnName("col084");
            this.Property(t => t.id_preprocesso).HasColumnName("id_preprocesso");
            this.Property(t => t.fk_layout).HasColumnName("fk_layout");
        }
    }
}
