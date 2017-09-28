using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Visao_GeralMap : EntityTypeConfiguration<Processos_Visao_Geral>
    {
        public Processos_Visao_GeralMap()
        {
            // Primary Key
            this.HasKey(t => t.Processo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Importador)
                .HasMaxLength(5);

            this.Property(t => t.CGC_CPF)
                .HasMaxLength(10);

            this.Property(t => t.Contratos)
                .HasMaxLength(100);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(300);

            this.Property(t => t.Periodo_Registro)
                .HasMaxLength(10);

            this.Property(t => t.Periodo_Desembaraco)
                .HasMaxLength(10);

            this.Property(t => t.Data_Desembaraco)
                .HasMaxLength(10);

            this.Property(t => t.Status_Followup)
                .HasMaxLength(100);

            this.Property(t => t.Ref_Empresa)
                .HasMaxLength(60);

            this.Property(t => t.Tipo_Processo)
                .HasMaxLength(40);

            this.Property(t => t.Tipo_Declaracao)
                .HasMaxLength(120);

            this.Property(t => t.Doc_Carga)
                .HasMaxLength(20);

            this.Property(t => t.Doc_Master)
                .HasMaxLength(20);

            this.Property(t => t.Incoterm)
                .HasMaxLength(3);

            this.Property(t => t.DI)
                .HasMaxLength(15);

            this.Property(t => t.DDE)
                .HasMaxLength(30);

            this.Property(t => t.TR)
                .HasMaxLength(20);

            this.Property(t => t.Vencimento_TR)
                .HasMaxLength(10);

            this.Property(t => t.RCR)
                .HasMaxLength(20);

            this.Property(t => t.NFISCAL)
                .HasMaxLength(6);

            this.Property(t => t.NFISCAL_E)
                .HasMaxLength(15);

            this.Property(t => t.CENTRO_CUSTO)
                .HasMaxLength(20);

            this.Property(t => t.CODIGO_CONTABIL)
                .HasMaxLength(20);

            this.Property(t => t.Numeromanifesto)
                .HasMaxLength(15);

            this.Property(t => t.CANAL)
                .HasMaxLength(50);

            this.Property(t => t.LOCAL_CONDICAO)
                .HasMaxLength(50);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(30);

            this.Property(t => t.URF_Despacho)
                .HasMaxLength(7);

            this.Property(t => t.Recinto_Alfandegario)
                .HasMaxLength(7);

            // Table & Column Mappings
            this.ToTable("Processos_Visao_Geral");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Atualizado).HasColumnName("Atualizado");
            this.Property(t => t.Contratos).HasColumnName("Contratos");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.Data_Chegada).HasColumnName("Data_Chegada");
            this.Property(t => t.Periodo_Registro).HasColumnName("Periodo_Registro");
            this.Property(t => t.Data_Registro).HasColumnName("Data_Registro");
            this.Property(t => t.Periodo_Desembaraco).HasColumnName("Periodo_Desembaraco");
            this.Property(t => t.Data_Desembaraco).HasColumnName("Data_Desembaraco");
            this.Property(t => t.Status_Followup).HasColumnName("Status_Followup");
            this.Property(t => t.Ref_Empresa).HasColumnName("Ref_Empresa");
            this.Property(t => t.Tipo_Processo).HasColumnName("Tipo_Processo");
            this.Property(t => t.Tipo_Declaracao).HasColumnName("Tipo_Declaracao");
            this.Property(t => t.Doc_Carga).HasColumnName("Doc_Carga");
            this.Property(t => t.Doc_Master).HasColumnName("Doc_Master");
            this.Property(t => t.Faturas).HasColumnName("Faturas");
            this.Property(t => t.Pos).HasColumnName("Pos");
            this.Property(t => t.Incoterm).HasColumnName("Incoterm");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.DDE).HasColumnName("DDE");
            this.Property(t => t.TR).HasColumnName("TR");
            this.Property(t => t.Vencimento_TR).HasColumnName("Vencimento_TR");
            this.Property(t => t.RCR).HasColumnName("RCR");
            this.Property(t => t.TR_VALOR_FOB).HasColumnName("TR_VALOR_FOB");
            this.Property(t => t.TR_VALOR_CIF).HasColumnName("TR_VALOR_CIF");
            this.Property(t => t.TR_VALOR_II).HasColumnName("TR_VALOR_II");
            this.Property(t => t.TR_VALOR_IPI).HasColumnName("TR_VALOR_IPI");
            this.Property(t => t.TR_VALOR_PIS).HasColumnName("TR_VALOR_PIS");
            this.Property(t => t.TR_VALOR_CONFINS).HasColumnName("TR_VALOR_CONFINS");
            this.Property(t => t.TR_VALOR_IMPOSTOS).HasColumnName("TR_VALOR_IMPOSTOS");
            this.Property(t => t.VALOR_FOB_CONSUMO).HasColumnName("VALOR_FOB_CONSUMO");
            this.Property(t => t.VALOR_CIF_CONSUMO).HasColumnName("VALOR_CIF_CONSUMO");
            this.Property(t => t.VALOR_FOB_ADMISSAO).HasColumnName("VALOR_FOB_ADMISSAO");
            this.Property(t => t.VALOR_CIF_ADMISSAO).HasColumnName("VALOR_CIF_ADMISSAO");
            this.Property(t => t.TOTAL_VALOR_FOB).HasColumnName("TOTAL_VALOR_FOB");
            this.Property(t => t.TOTAL_VALOR_CIF).HasColumnName("TOTAL_VALOR_CIF");
            this.Property(t => t.TOT_DEB_76).HasColumnName("TOT_DEB_76");
            this.Property(t => t.TOT_DEB_77).HasColumnName("TOT_DEB_77");
            this.Property(t => t.TOT_DEB_78).HasColumnName("TOT_DEB_78");
            this.Property(t => t.TOT_DEB_79).HasColumnName("TOT_DEB_79");
            this.Property(t => t.TOT_DEB_80).HasColumnName("TOT_DEB_80");
            this.Property(t => t.TOT_DEB_81).HasColumnName("TOT_DEB_81");
            this.Property(t => t.TOT_DEB_82).HasColumnName("TOT_DEB_82");
            this.Property(t => t.TOT_DEB_83).HasColumnName("TOT_DEB_83");
            this.Property(t => t.TOT_DEB_84).HasColumnName("TOT_DEB_84");
            this.Property(t => t.TOT_DEB_85).HasColumnName("TOT_DEB_85");
            this.Property(t => t.TOT_DEB_86).HasColumnName("TOT_DEB_86");
            this.Property(t => t.TOT_DEB_87).HasColumnName("TOT_DEB_87");
            this.Property(t => t.TOT_DEB_88).HasColumnName("TOT_DEB_88");
            this.Property(t => t.TOT_DEB_89).HasColumnName("TOT_DEB_89");
            this.Property(t => t.TOT_DEB_90).HasColumnName("TOT_DEB_90");
            this.Property(t => t.TOT_DEB_91).HasColumnName("TOT_DEB_91");
            this.Property(t => t.TOT_DEB_92).HasColumnName("TOT_DEB_92");
            this.Property(t => t.TOT_DEB_93).HasColumnName("TOT_DEB_93");
            this.Property(t => t.TOT_DEB_94).HasColumnName("TOT_DEB_94");
            this.Property(t => t.TOT_DEB_95).HasColumnName("TOT_DEB_95");
            this.Property(t => t.TOT_DEB_96).HasColumnName("TOT_DEB_96");
            this.Property(t => t.TOT_DEB_97).HasColumnName("TOT_DEB_97");
            this.Property(t => t.TOT_DEB_98).HasColumnName("TOT_DEB_98");
            this.Property(t => t.TOT_DEB_99).HasColumnName("TOT_DEB_99");
            this.Property(t => t.TOT_DEB_100).HasColumnName("TOT_DEB_100");
            this.Property(t => t.TOT_DEB_101).HasColumnName("TOT_DEB_101");
            this.Property(t => t.TOT_DEB_102).HasColumnName("TOT_DEB_102");
            this.Property(t => t.TOT_DEB_103).HasColumnName("TOT_DEB_103");
            this.Property(t => t.TOT_DEB_104).HasColumnName("TOT_DEB_104");
            this.Property(t => t.TOT_DEB_105).HasColumnName("TOT_DEB_105");
            this.Property(t => t.TOT_DEB_106).HasColumnName("TOT_DEB_106");
            this.Property(t => t.TOT_DEB_107).HasColumnName("TOT_DEB_107");
            this.Property(t => t.TOT_DEB_108).HasColumnName("TOT_DEB_108");
            this.Property(t => t.TOT_DEB_109).HasColumnName("TOT_DEB_109");
            this.Property(t => t.TOT_DEB_111).HasColumnName("TOT_DEB_111");
            this.Property(t => t.TOT_DEB_112).HasColumnName("TOT_DEB_112");
            this.Property(t => t.TOT_DEB_113).HasColumnName("TOT_DEB_113");
            this.Property(t => t.TOT_DEB_114).HasColumnName("TOT_DEB_114");
            this.Property(t => t.TOT_DEB_115).HasColumnName("TOT_DEB_115");
            this.Property(t => t.TOT_DEB_116).HasColumnName("TOT_DEB_116");
            this.Property(t => t.TOT_DEB_117).HasColumnName("TOT_DEB_117");
            this.Property(t => t.TOT_DEB_118).HasColumnName("TOT_DEB_118");
            this.Property(t => t.TOT_DEB_119).HasColumnName("TOT_DEB_119");
            this.Property(t => t.TOT_DEB_120).HasColumnName("TOT_DEB_120");
            this.Property(t => t.TOT_DEB_122).HasColumnName("TOT_DEB_122");
            this.Property(t => t.TOT_DEB_123).HasColumnName("TOT_DEB_123");
            this.Property(t => t.TOT_DEB_124).HasColumnName("TOT_DEB_124");
            this.Property(t => t.TOT_DEB_125).HasColumnName("TOT_DEB_125");
            this.Property(t => t.TOT_DEB_126).HasColumnName("TOT_DEB_126");
            this.Property(t => t.TOT_DEB_127).HasColumnName("TOT_DEB_127");
            this.Property(t => t.TOT_DEB_128).HasColumnName("TOT_DEB_128");
            this.Property(t => t.TOT_DEB_129).HasColumnName("TOT_DEB_129");
            this.Property(t => t.TOT_DEB_130).HasColumnName("TOT_DEB_130");
            this.Property(t => t.TOT_DEB_131).HasColumnName("TOT_DEB_131");
            this.Property(t => t.TOT_DEB_132).HasColumnName("TOT_DEB_132");
            this.Property(t => t.TOT_DEB_133).HasColumnName("TOT_DEB_133");
            this.Property(t => t.TOT_DEB_134).HasColumnName("TOT_DEB_134");
            this.Property(t => t.TOT_DEB_135).HasColumnName("TOT_DEB_135");
            this.Property(t => t.TOT_DEB_136).HasColumnName("TOT_DEB_136");
            this.Property(t => t.TOT_DEB_137).HasColumnName("TOT_DEB_137");
            this.Property(t => t.TOT_DEB_138).HasColumnName("TOT_DEB_138");
            this.Property(t => t.TOT_DEB_139).HasColumnName("TOT_DEB_139");
            this.Property(t => t.TOT_DEB_140).HasColumnName("TOT_DEB_140");
            this.Property(t => t.TOT_DEB_141).HasColumnName("TOT_DEB_141");
            this.Property(t => t.TOT_DEB_142).HasColumnName("TOT_DEB_142");
            this.Property(t => t.TOT_DEB_143).HasColumnName("TOT_DEB_143");
            this.Property(t => t.TOT_DEB_144).HasColumnName("TOT_DEB_144");
            this.Property(t => t.TOT_DEB_145).HasColumnName("TOT_DEB_145");
            this.Property(t => t.TOT_DEB_146).HasColumnName("TOT_DEB_146");
            this.Property(t => t.TOT_DEB_147).HasColumnName("TOT_DEB_147");
            this.Property(t => t.TOT_DEB_148).HasColumnName("TOT_DEB_148");
            this.Property(t => t.TOT_DEB_149).HasColumnName("TOT_DEB_149");
            this.Property(t => t.TOT_DEB_150).HasColumnName("TOT_DEB_150");
            this.Property(t => t.TOT_DEB_151).HasColumnName("TOT_DEB_151");
            this.Property(t => t.TOT_DEB_152).HasColumnName("TOT_DEB_152");
            this.Property(t => t.TOT_DEB_153).HasColumnName("TOT_DEB_153");
            this.Property(t => t.TOT_DEB_154).HasColumnName("TOT_DEB_154");
            this.Property(t => t.TOT_DEB_155).HasColumnName("TOT_DEB_155");
            this.Property(t => t.TOT_DEB_156).HasColumnName("TOT_DEB_156");
            this.Property(t => t.TOT_DEB_157).HasColumnName("TOT_DEB_157");
            this.Property(t => t.TOT_DEB_158).HasColumnName("TOT_DEB_158");
            this.Property(t => t.TOT_DEB_159).HasColumnName("TOT_DEB_159");
            this.Property(t => t.TOT_DEB_160).HasColumnName("TOT_DEB_160");
            this.Property(t => t.TOT_DEB_161).HasColumnName("TOT_DEB_161");
            this.Property(t => t.TOT_DEB_162).HasColumnName("TOT_DEB_162");
            this.Property(t => t.TOT_DEB_163).HasColumnName("TOT_DEB_163");
            this.Property(t => t.TOT_DEB_164).HasColumnName("TOT_DEB_164");
            this.Property(t => t.TOT_DEB_165).HasColumnName("TOT_DEB_165");
            this.Property(t => t.TOT_DEB_166).HasColumnName("TOT_DEB_166");
            this.Property(t => t.TOT_DEB_167).HasColumnName("TOT_DEB_167");
            this.Property(t => t.TOT_DEB_168).HasColumnName("TOT_DEB_168");
            this.Property(t => t.TOT_DEB_169).HasColumnName("TOT_DEB_169");
            this.Property(t => t.TOT_DEB_170).HasColumnName("TOT_DEB_170");
            this.Property(t => t.TOT_DEB_171).HasColumnName("TOT_DEB_171");
            this.Property(t => t.TOT_DEB_172).HasColumnName("TOT_DEB_172");
            this.Property(t => t.TOT_DEB_173).HasColumnName("TOT_DEB_173");
            this.Property(t => t.TOT_DEB_174).HasColumnName("TOT_DEB_174");
            this.Property(t => t.TOT_DEB_175).HasColumnName("TOT_DEB_175");
            this.Property(t => t.TOT_DEB_176).HasColumnName("TOT_DEB_176");
            this.Property(t => t.TOT_DEB_177).HasColumnName("TOT_DEB_177");
            this.Property(t => t.TOT_DEB_178).HasColumnName("TOT_DEB_178");
            this.Property(t => t.TOT_DEB_179).HasColumnName("TOT_DEB_179");
            this.Property(t => t.TOT_DEB_180).HasColumnName("TOT_DEB_180");
            this.Property(t => t.TOT_DEB_181).HasColumnName("TOT_DEB_181");
            this.Property(t => t.TOT_DEB_182).HasColumnName("TOT_DEB_182");
            this.Property(t => t.TOT_DEB_183).HasColumnName("TOT_DEB_183");
            this.Property(t => t.TOT_DEB_184).HasColumnName("TOT_DEB_184");
            this.Property(t => t.TOT_DEB_185).HasColumnName("TOT_DEB_185");
            this.Property(t => t.TOT_DEB_186).HasColumnName("TOT_DEB_186");
            this.Property(t => t.TOT_DEB_187).HasColumnName("TOT_DEB_187");
            this.Property(t => t.TOT_DEB_188).HasColumnName("TOT_DEB_188");
            this.Property(t => t.TOT_DEB_189).HasColumnName("TOT_DEB_189");
            this.Property(t => t.TOT_DEB_190).HasColumnName("TOT_DEB_190");
            this.Property(t => t.TOT_DEB_191).HasColumnName("TOT_DEB_191");
            this.Property(t => t.TOT_DEB_192).HasColumnName("TOT_DEB_192");
            this.Property(t => t.TOT_DEB_193).HasColumnName("TOT_DEB_193");
            this.Property(t => t.TOT_DEB_194).HasColumnName("TOT_DEB_194");
            this.Property(t => t.TOT_DEB_195).HasColumnName("TOT_DEB_195");
            this.Property(t => t.TOT_DEB_196).HasColumnName("TOT_DEB_196");
            this.Property(t => t.TOT_DEB_197).HasColumnName("TOT_DEB_197");
            this.Property(t => t.TOT_DEB_198).HasColumnName("TOT_DEB_198");
            this.Property(t => t.TOT_DEB_199).HasColumnName("TOT_DEB_199");
            this.Property(t => t.TOT_DEB_200).HasColumnName("TOT_DEB_200");
            this.Property(t => t.TOT_DEB_201).HasColumnName("TOT_DEB_201");
            this.Property(t => t.TOT_DEB_202).HasColumnName("TOT_DEB_202");
            this.Property(t => t.TOT_DEB_203).HasColumnName("TOT_DEB_203");
            this.Property(t => t.TOT_DEB_204).HasColumnName("TOT_DEB_204");
            this.Property(t => t.TOT_DEB_205).HasColumnName("TOT_DEB_205");
            this.Property(t => t.TOT_DEB_206).HasColumnName("TOT_DEB_206");
            this.Property(t => t.TOT_DEB_207).HasColumnName("TOT_DEB_207");
            this.Property(t => t.TOT_DEB_208).HasColumnName("TOT_DEB_208");
            this.Property(t => t.TOT_DEB_209).HasColumnName("TOT_DEB_209");
            this.Property(t => t.TOT_DEB_210).HasColumnName("TOT_DEB_210");
            this.Property(t => t.TOT_DEB_211).HasColumnName("TOT_DEB_211");
            this.Property(t => t.TOT_DEB_212).HasColumnName("TOT_DEB_212");
            this.Property(t => t.TOT_DEB_213).HasColumnName("TOT_DEB_213");
            this.Property(t => t.TOT_DEB_214).HasColumnName("TOT_DEB_214");
            this.Property(t => t.TOT_DEB_215).HasColumnName("TOT_DEB_215");
            this.Property(t => t.TOT_DEB_216).HasColumnName("TOT_DEB_216");
            this.Property(t => t.TOT_DEB_217).HasColumnName("TOT_DEB_217");
            this.Property(t => t.TOT_DEB_218).HasColumnName("TOT_DEB_218");
            this.Property(t => t.TOT_DEB_219).HasColumnName("TOT_DEB_219");
            this.Property(t => t.TOT_DEB_220).HasColumnName("TOT_DEB_220");
            this.Property(t => t.TOT_DEB_221).HasColumnName("TOT_DEB_221");
            this.Property(t => t.TOT_DEB_222).HasColumnName("TOT_DEB_222");
            this.Property(t => t.TOT_DEB_223).HasColumnName("TOT_DEB_223");
            this.Property(t => t.TOT_DEB_224).HasColumnName("TOT_DEB_224");
            this.Property(t => t.TOT_DEB_225).HasColumnName("TOT_DEB_225");
            this.Property(t => t.TOT_DEB_226).HasColumnName("TOT_DEB_226");
            this.Property(t => t.TOT_DEB_227).HasColumnName("TOT_DEB_227");
            this.Property(t => t.TOT_DEB_228).HasColumnName("TOT_DEB_228");
            this.Property(t => t.TOT_DEB_229).HasColumnName("TOT_DEB_229");
            this.Property(t => t.TOT_DEB_230).HasColumnName("TOT_DEB_230");
            this.Property(t => t.TOT_DEB_231).HasColumnName("TOT_DEB_231");
            this.Property(t => t.TOT_DEB_232).HasColumnName("TOT_DEB_232");
            this.Property(t => t.TOT_DEB_233).HasColumnName("TOT_DEB_233");
            this.Property(t => t.TOT_DEB_234).HasColumnName("TOT_DEB_234");
            this.Property(t => t.TOT_DEB_235).HasColumnName("TOT_DEB_235");
            this.Property(t => t.TOT_DEB_236).HasColumnName("TOT_DEB_236");
            this.Property(t => t.TOT_DEB_237).HasColumnName("TOT_DEB_237");
            this.Property(t => t.TOT_DEB_238).HasColumnName("TOT_DEB_238");
            this.Property(t => t.TOT_DEB_239).HasColumnName("TOT_DEB_239");
            this.Property(t => t.TOT_DEB_240).HasColumnName("TOT_DEB_240");
            this.Property(t => t.TOT_DEB_241).HasColumnName("TOT_DEB_241");
            this.Property(t => t.TOT_DEB_242).HasColumnName("TOT_DEB_242");
            this.Property(t => t.TOT_DEB_243).HasColumnName("TOT_DEB_243");
            this.Property(t => t.TOT_DEB_244).HasColumnName("TOT_DEB_244");
            this.Property(t => t.TOT_DEB_245).HasColumnName("TOT_DEB_245");
            this.Property(t => t.TOT_DEB_246).HasColumnName("TOT_DEB_246");
            this.Property(t => t.TOT_DEB_248).HasColumnName("TOT_DEB_248");
            this.Property(t => t.TOT_DEB_249).HasColumnName("TOT_DEB_249");
            this.Property(t => t.TOT_DEB_250).HasColumnName("TOT_DEB_250");
            this.Property(t => t.TOT_DEB_251).HasColumnName("TOT_DEB_251");
            this.Property(t => t.TOT_DEB_252).HasColumnName("TOT_DEB_252");
            this.Property(t => t.TOT_DEB_253).HasColumnName("TOT_DEB_253");
            this.Property(t => t.TOT_DEB_254).HasColumnName("TOT_DEB_254");
            this.Property(t => t.TOT_DEB_255).HasColumnName("TOT_DEB_255");
            this.Property(t => t.TOT_DEB_256).HasColumnName("TOT_DEB_256");
            this.Property(t => t.TOT_DEB_257).HasColumnName("TOT_DEB_257");
            this.Property(t => t.TOT_DEB_259).HasColumnName("TOT_DEB_259");
            this.Property(t => t.TOT_DEB_260).HasColumnName("TOT_DEB_260");
            this.Property(t => t.TOT_DEB_261).HasColumnName("TOT_DEB_261");
            this.Property(t => t.TOT_DEB_262).HasColumnName("TOT_DEB_262");
            this.Property(t => t.TOT_DEB_263).HasColumnName("TOT_DEB_263");
            this.Property(t => t.TOT_DEB_264).HasColumnName("TOT_DEB_264");
            this.Property(t => t.TOT_DEB_265).HasColumnName("TOT_DEB_265");
            this.Property(t => t.DEBITOS_CONSUMO).HasColumnName("DEBITOS_CONSUMO");
            this.Property(t => t.DEBITOS_ADMISSAO).HasColumnName("DEBITOS_ADMISSAO");
            this.Property(t => t.DEBITOS_TOTAIS).HasColumnName("DEBITOS_TOTAIS");
            this.Property(t => t.TOT_CRED_1).HasColumnName("TOT_CRED_1");
            this.Property(t => t.TOT_CRED_2).HasColumnName("TOT_CRED_2");
            this.Property(t => t.TOT_CRED_3).HasColumnName("TOT_CRED_3");
            this.Property(t => t.TOT_CRED_4).HasColumnName("TOT_CRED_4");
            this.Property(t => t.TOT_CRED_5).HasColumnName("TOT_CRED_5");
            this.Property(t => t.TOT_CRED_6).HasColumnName("TOT_CRED_6");
            this.Property(t => t.TOT_CRED_7).HasColumnName("TOT_CRED_7");
            this.Property(t => t.TOT_CRED_8).HasColumnName("TOT_CRED_8");
            this.Property(t => t.TOT_CRED_9).HasColumnName("TOT_CRED_9");
            this.Property(t => t.TOT_CRED_10).HasColumnName("TOT_CRED_10");
            this.Property(t => t.TOT_CRED_11).HasColumnName("TOT_CRED_11");
            this.Property(t => t.TOT_CRED_12).HasColumnName("TOT_CRED_12");
            this.Property(t => t.TOT_CRED_13).HasColumnName("TOT_CRED_13");
            this.Property(t => t.TOT_CRED_14).HasColumnName("TOT_CRED_14");
            this.Property(t => t.TOT_CRED_15).HasColumnName("TOT_CRED_15");
            this.Property(t => t.TOT_CRED_16).HasColumnName("TOT_CRED_16");
            this.Property(t => t.TOT_CRED_17).HasColumnName("TOT_CRED_17");
            this.Property(t => t.TOT_CRED_18).HasColumnName("TOT_CRED_18");
            this.Property(t => t.TOT_CRED_19).HasColumnName("TOT_CRED_19");
            this.Property(t => t.TOT_CRED_20).HasColumnName("TOT_CRED_20");
            this.Property(t => t.TOT_CRED_21).HasColumnName("TOT_CRED_21");
            this.Property(t => t.TOT_CRED_23).HasColumnName("TOT_CRED_23");
            this.Property(t => t.TOT_CRED_24).HasColumnName("TOT_CRED_24");
            this.Property(t => t.TOT_CRED_25).HasColumnName("TOT_CRED_25");
            this.Property(t => t.TOT_CRED_26).HasColumnName("TOT_CRED_26");
            this.Property(t => t.TOT_CRED_27).HasColumnName("TOT_CRED_27");
            this.Property(t => t.TOT_CRED_28).HasColumnName("TOT_CRED_28");
            this.Property(t => t.TOT_CRED_29).HasColumnName("TOT_CRED_29");
            this.Property(t => t.TOT_CRED_31).HasColumnName("TOT_CRED_31");
            this.Property(t => t.TOT_CRED_32).HasColumnName("TOT_CRED_32");
            this.Property(t => t.TOT_CRED_33).HasColumnName("TOT_CRED_33");
            this.Property(t => t.TOT_CRED_34).HasColumnName("TOT_CRED_34");
            this.Property(t => t.TOT_CRED_35).HasColumnName("TOT_CRED_35");
            this.Property(t => t.TOT_CRED_36).HasColumnName("TOT_CRED_36");
            this.Property(t => t.TOT_CRED_37).HasColumnName("TOT_CRED_37");
            this.Property(t => t.TOT_CRED_38).HasColumnName("TOT_CRED_38");
            this.Property(t => t.TOT_CRED_39).HasColumnName("TOT_CRED_39");
            this.Property(t => t.TOT_CRED_40).HasColumnName("TOT_CRED_40");
            this.Property(t => t.TOT_CRED_41).HasColumnName("TOT_CRED_41");
            this.Property(t => t.CREDITOS_TOTAIS).HasColumnName("CREDITOS_TOTAIS");
            this.Property(t => t.SALDO).HasColumnName("SALDO");
            this.Property(t => t.NFISCAL).HasColumnName("NFISCAL");
            this.Property(t => t.DATA_EMISSAO_NF).HasColumnName("DATA_EMISSAO_NF");
            this.Property(t => t.NFISCAL_E).HasColumnName("NFISCAL_E");
            this.Property(t => t.CENTRO_CUSTO).HasColumnName("CENTRO_CUSTO");
            this.Property(t => t.CODIGO_CONTABIL).HasColumnName("CODIGO_CONTABIL");
            this.Property(t => t.TABLE).HasColumnName("TABLE");
            this.Property(t => t.Numeromanifesto).HasColumnName("Numeromanifesto");
            this.Property(t => t.TAXA_DOLLAR).HasColumnName("TAXA_DOLLAR");
            this.Property(t => t.CANAL).HasColumnName("CANAL");
            this.Property(t => t.Data_Chegada_Despacho).HasColumnName("Data_Chegada_Despacho");
            this.Property(t => t.LOCAL_CONDICAO).HasColumnName("LOCAL_CONDICAO");
            this.Property(t => t.ULTIMO_FOLLOWUP).HasColumnName("ULTIMO_FOLLOWUP");
            this.Property(t => t.Descricao_Produto_ing_Todos).HasColumnName("Descricao_Produto_ing_Todos");
            this.Property(t => t.Descricao_Produto_Todos).HasColumnName("Descricao_Produto_Todos");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.Peso_Bruto).HasColumnName("Peso_Bruto");
            this.Property(t => t.Data_Embarque).HasColumnName("Data_Embarque");
            this.Property(t => t.URF_Despacho).HasColumnName("URF_Despacho");
            this.Property(t => t.ACERTO_II).HasColumnName("ACERTO_II");
            this.Property(t => t.ACERTO_IPI).HasColumnName("ACERTO_IPI");
            this.Property(t => t.ACERTO_ICMS).HasColumnName("ACERTO_ICMS");
            this.Property(t => t.ACERTO_FECP).HasColumnName("ACERTO_FECP");
            this.Property(t => t.ACERTO_PIS).HasColumnName("ACERTO_PIS");
            this.Property(t => t.ACERTO_COFINS).HasColumnName("ACERTO_COFINS");
            this.Property(t => t.ULTIMO_FOLLOWUP_ING).HasColumnName("ULTIMO_FOLLOWUP_ING");
            this.Property(t => t.TOT_DEB_266).HasColumnName("TOT_DEB_266");
            this.Property(t => t.TOT_DEB_267).HasColumnName("TOT_DEB_267");
            this.Property(t => t.TOT_DEB_268).HasColumnName("TOT_DEB_268");
            this.Property(t => t.TOT_DEB_269).HasColumnName("TOT_DEB_269");
            this.Property(t => t.TOT_DEB_270).HasColumnName("TOT_DEB_270");
            this.Property(t => t.TOT_DEB_271).HasColumnName("TOT_DEB_271");
            this.Property(t => t.TOT_DEB_272).HasColumnName("TOT_DEB_272");
            this.Property(t => t.TOT_DEB_273).HasColumnName("TOT_DEB_273");
            this.Property(t => t.TOT_DEB_274).HasColumnName("TOT_DEB_274");
            this.Property(t => t.TOT_DEB_275).HasColumnName("TOT_DEB_275");
            this.Property(t => t.TOT_DEB_277).HasColumnName("TOT_DEB_277");
            this.Property(t => t.TOT_DEB_278).HasColumnName("TOT_DEB_278");
            this.Property(t => t.TOT_CRED_30).HasColumnName("TOT_CRED_30");
            this.Property(t => t.TOT_DEB_281).HasColumnName("TOT_DEB_281");
            this.Property(t => t.Recinto_Alfandegario).HasColumnName("Recinto_Alfandegario");
            this.Property(t => t.TOT_DEB_283).HasColumnName("TOT_DEB_283");
            this.Property(t => t.TOT_DEB_284).HasColumnName("TOT_DEB_284");
            this.Property(t => t.TOT_CRED_47).HasColumnName("TOT_CRED_47");
            this.Property(t => t.TOT_DEB_285).HasColumnName("TOT_DEB_285");
            this.Property(t => t.TOT_DEB_286).HasColumnName("TOT_DEB_286");
            this.Property(t => t.TOT_DEB_287).HasColumnName("TOT_DEB_287");
            this.Property(t => t.TOT_DEB_43).HasColumnName("TOT_DEB_43");
        }
    }
}
