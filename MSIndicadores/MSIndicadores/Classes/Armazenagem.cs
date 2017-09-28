using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;

namespace MSIndicadores
{
    public class Armazenagem
    {
        public int Mes { get; set; }
        public decimal Consumo_Maritimo_Primeira_Armazenagem { get; set; }
        public decimal Admissao_Maritimo_Segunda_Armazenagem { get; set; }
        public decimal Consumo_Aereo_Segunda_Armazenagem { get; set; }
        public decimal Admissao_Aereo_Terceira_Armazenagem { get; set; }

        public Armazenagem()
        {
        }

        public Armazenagem(int mes,
            decimal consumo_maritimo_primeira_armazenagem,
            decimal admissao_maritimo_segunda_armazenagem,
            decimal consumo_aereo_segunda_armazenagem,
            decimal admissao_aereo_terceira_armazenagem)
        {
            Mes = mes;
            Consumo_Maritimo_Primeira_Armazenagem = consumo_maritimo_primeira_armazenagem;
            Admissao_Maritimo_Segunda_Armazenagem = admissao_maritimo_segunda_armazenagem;
            Consumo_Aereo_Segunda_Armazenagem = consumo_aereo_segunda_armazenagem;
            Admissao_Aereo_Terceira_Armazenagem = admissao_aereo_terceira_armazenagem;
        }

        public static List<Armazenagem> SelectAllProcessos()
        {
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);
            using (SqlConnection con = new SqlConnection(sr.ReadLine()))
            {
                con.Open();
                string strquery = 

               "WITH CTE_ARMAZENAGENS AS "+
               "( SELECT MONTH(p.Data_Liberacao) 							AS 'Meses',                                                  "+              
               "  CASE WHEN p.Tipo = '12'                                                                                                "+
		       "        AND p.Tipo_Declaracao = '01'                                                                                     "+
		       "        AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 7                                                 "+
	           "    THEN  COUNT(*) ELSE  0                                                                                               "+
	           "    END 										AS '1201_01',                                                            "+
               "  CASE WHEN p.Tipo = '12'                                                                                                "+
		       "        AND (p.Tipo_Declaracao = '05' OR p.Tipo_Declaracao = '12')                                                       "+
		       "        AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 14                                                "+
	           "    THEN  COUNT(*)                                                                                                       "+
	           "    ELSE 0 END 									AS '120512_02',                                                          "+
               "  CASE WHEN p.Tipo = '11'                                                                                                "+
		       "        AND p.Tipo_Declaracao = '01'                                                                                     "+
		       "        AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 5                                                 "+
	           "    THEN  COUNT(*)                                                                                                       "+
	           "    ELSE 0 END 									AS '1101_02',                                                            "+
               "  CASE WHEN p.Tipo = '11'                                                                                                "+
		       "        AND (p.Tipo_Declaracao = '05' OR p.Tipo_Declaracao = '12')                                                       "+
		       "        AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 10                                                "+
	           "    THEN  COUNT(*)                                                                                                       "+
	           "    ELSE 0 END 									AS '110512_03'                                                           "+
               "  FROM Processos p INNER JOIN Conhecimento_Processo c on p.ID = c.FK_Processo                                            "+
               "  WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                                          "+
               "  AND c.URF_Despacho IS NOT NULL                                                                                         "+
               "  AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                                                "+
               "  AND p.Tipo IN('11','12')                                                                                               "+
               "  AND p.Tipo_Declaracao IN ('01','05','12')                                                                              "+
               "  GROUP BY MONTH(p.Data_Liberacao), DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao), p.Tipo, p.Tipo_Declaracao)  "+
               "SELECT MESES,                                                                                                            "+
	           "    CASE WHEN  exists (SELECT 1                                                                                          "+
                "                FROM Processos p INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                            "+
				"                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                           "+
				"                AND MONTH(p.Data_Liberacao)= A.MESES                                                                    "+
				"                AND c.URF_Despacho IS NOT NULL                                                                          "+
				"                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                                 "+
				"                AND p.Tipo IN('12')                                                                                     "+
				"                AND p.Tipo_Declaracao IN ('01'))                                                                        "+
		       "        THEN CAST(SUM([1201_01])*100.00/                                                                                 "+
			   "            (SELECT COUNT(*)                                                                                             "+
                "                FROM Processos p INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                            " +
				"                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                           "+
				"                AND MONTH(p.Data_Liberacao)= A.MESES                                                                    "+
				"                AND c.URF_Despacho IS NOT NULL                                                                          "+
				"                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                                 "+
				"                AND p.Tipo IN('12')                                                                                     "+
				"                AND p.Tipo_Declaracao IN ('01')) AS DECIMAL(10,2))                                                      "+
		       "        ELSE 0 END 									AS 'Consumo_Maritimo_Primeira_Armazenagem',                          "+
	           "    CASE WHEN  exists (SELECT 1                                                                                          "+
                "                FROM Processos p INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                            "+
				"                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                           "+
				"                AND MONTH(p.Data_Liberacao)=A.MESES                                                                     "+
				"                AND c.URF_Despacho IS NOT NULL                                                                          "+
				"                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                                 "+
				"                AND p.Tipo IN('12')                                                                                     "+
				"                AND p.Tipo_Declaracao IN ('05','12'))                                                                   "+
		       "        THEN CAST(SUM([120512_02])*100.00/                                                                               "+
				"                (SELECT COUNT(*)                                                                                        "+
                "	                FROM Processos p INNER JOIN Conhecimento_Processo c on p.ID = c.FK_Processo                          "+
				"	                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                        "+
				"	                AND MONTH(p.Data_Liberacao)=A.MESES                                                                  "+
				"	                AND c.URF_Despacho IS NOT NULL                                                                       "+
				"	                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                              "+
				"	                AND p.Tipo IN('12')                                                                                  "+
				"	                AND p.Tipo_Declaracao IN ('05','12'))AS DECIMAL(10,2))                                               "+
		       "        ELSE 0 END 									AS 'Admissao_Maritimo_Segunda_Armazenagem',                          "+
	           "    CASE WHEN  exists (SELECT 1                                                                                          "+
                "                FROM Processos p INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                            "+
				"                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                           "+
				"                AND MONTH(p.Data_Liberacao)= A.MESES                                                                    "+
				"                AND c.URF_Despacho IS NOT NULL                                                                          "+
				"                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                                 "+
				"                AND p.Tipo IN('11')                                                                                     "+
				"                AND p.Tipo_Declaracao IN ('01'))                                                                        "+
		       "        THEN CAST(SUM([1101_02])*100.00/ (SELECT COUNT(*)                                                                "+
                "			                FROM Processos p INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                 "+
				"			                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                "+
				"			                AND MONTH(p.Data_Liberacao)= A.MESES                                                         "+
				"			                AND c.URF_Despacho IS NOT NULL                                                               "+
				"			                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                      "+
				"			                AND p.Tipo IN('11')                                                                          "+
				"			                AND p.Tipo_Declaracao IN ('01'))AS DECIMAL(10,2))                                            "+
		       "        ELSE 0 END 									AS 'Consumo_Aereo_Segunda_Armazenagem',                              "+
	           "    CASE WHEN  exists (SELECT 1                                                                                          "+
                "                FROM Processos p  INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                           "+
				"                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                           "+
				"                AND MONTH(p.Data_Liberacao)= A.MESES                                                                    "+
				"                AND c.URF_Despacho IS NOT NULL                                                                          "+
				"                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                                 "+
				"                AND p.Tipo IN('11')                                                                                     "+
				"                AND p.Tipo_Declaracao IN ('05','12'))                                                                   "+
		       "        THEN CAST(SUM([110512_03])*100.00/  (SELECT COUNT(*)                                                             "+
                "			                FROM Processos p  INNER JOIN Conhecimento_Processo c on  p.ID = c.FK_Processo                "+
				"			                WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE())                                                "+
				"			                AND MONTH(p.Data_Liberacao)= A.MESES                                                         "+
				"			                AND  c.URF_Despacho IS NOT NULL                                                              "+
				"			                AND c.Data_Chegada_URF_Cheg IS NOT NULL                                                      "+
				"			                AND p.Tipo IN('11')                                                                          "+
				"			                AND p.Tipo_Declaracao IN ('05','12'))AS DECIMAL(10,2))                                       "+
		       "        ELSE 0 END 									AS 'Admissao_Aereo_Terceira_Armazenagem'                             "+
	           "    FROM CTE_ARMAZENAGENS A                                                                                              "+
	           "    GROUP BY MESES                                                                                                       "+
	           "    ORDER BY MESES                                                                                                       ";








                //"WITH CTE_ARMAZENAGENS AS( " +
                //"SELECT MONTH(p.Data_Liberacao) AS 'Meses', " +
                //"CASE WHEN p.Tipo = '12' AND p.Tipo_Declaracao = '01' AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 7 THEN " +
                //"	COUNT(*) ELSE 	0 END AS '1201_01', " +
                //"CASE WHEN p.Tipo = '12' AND (p.Tipo_Declaracao = '05' OR p.Tipo_Declaracao = '12')AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 14 THEN " +
                //"	COUNT(*) ELSE 0 END AS '120512_02', " +
                //"CASE WHEN p.Tipo = '11' AND p.Tipo_Declaracao = '01' AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 5 THEN " +
                //"	COUNT(*) ELSE 0 END AS '1101_02', " +
                //"CASE WHEN p.Tipo = '11' AND (p.Tipo_Declaracao = '05' OR p.Tipo_Declaracao = '12')AND DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao) <= 10 THEN " +
                //"	COUNT(*) ELSE 0 END AS '110512_03' " +
                //"FROM Processos p INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('11','12') AND p.Tipo_Declaracao IN ('01','05','12') " +
                //"GROUP BY MONTH(p.Data_Liberacao), DATEDIFF(DAY,c.Data_Chegada_URF_Cheg, p.Data_Liberacao), p.Tipo, p.Tipo_Declaracao) " +
                //"SELECT MESES, " +
                //"CASE WHEN  " +
                //"(SELECT COUNT(*) FROM Processos p " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)= A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('12') AND p.Tipo_Declaracao IN ('01')) > 0 " +
                //"THEN " +
                //"CAST(SUM([1201_01])*100.00/ " +
                //"(SELECT COUNT(*) FROM Processos p " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)= A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('12') AND p.Tipo_Declaracao IN ('01'))AS DECIMAL(10,2)) " +
                //"ELSE " +
                //"0 " +
                //"END AS 'Consumo_Maritimo_Primeira_Armazenagem', " +
                //"CASE WHEN  " +
                //"(SELECT COUNT(*) FROM Processos p " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)=A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('12') AND p.Tipo_Declaracao IN ('05','12')) > 0 " +
                //"THEN " +
                //"CAST(SUM([120512_02])*100.00/ " +
                //"(SELECT COUNT(*) FROM Processos p " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)=A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('12') AND p.Tipo_Declaracao IN ('05','12'))AS DECIMAL(10,2)) " +
                //"ELSE " +
                //"0 " +
                //"END AS 'Admissao_Maritimo_Segunda_Armazenagem', " +

                //"CASE WHEN  " +
                //"(SELECT COUNT(*) FROM Processos p " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)= A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('11') AND p.Tipo_Declaracao IN ('01')) > 0 " +
                //"then " +
                //"CAST(SUM([1101_02])*100.00/ " +
                //"(SELECT COUNT(*) FROM Processos p " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)= A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL " +
                //"AND p.Tipo IN('11') AND p.Tipo_Declaracao IN ('01'))AS DECIMAL(10,2)) " +
                //"ELSE " +
                //"0 " +
                //"END AS 'Consumo_Aereo_Segunda_Armazenagem', " +                
                //"CASE WHEN  " +
                //"(SELECT COUNT(*) FROM Processos p  " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)= A.MESES AND " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL AND p.Tipo IN('11') AND p.Tipo_Declaracao IN ('05','12')) > 0 " +
                //"THEN " +
                //"CAST(SUM([110512_03])*100.00/  " +
                //"(SELECT COUNT(*) FROM Processos p  " +
                //"INNER JOIN Conhecimento_Processo c on  p.Codigo = c.Processo  " +
                //"WHERE YEAR(p.Data_Liberacao)= YEAR(GETDATE()) AND MONTH(p.Data_Liberacao)= A.MESES AND  " +
                //"c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL AND p.Tipo IN('11') AND p.Tipo_Declaracao IN ('05','12'))AS DECIMAL(10,2)) " +
                //"ELSE " +
                //"0 " +
                //"END AS 'Admissao_Aereo_Terceira_Armazenagem'   " +
                //"FROM CTE_ARMAZENAGENS A " +
                //"GROUP BY MESES " +
                //"ORDER BY MESES";

                SqlCommand cmd = new SqlCommand(strquery, con);
                SqlDataReader dr = cmd.ExecuteReader();
                cmd.Dispose();

                List<Armazenagem> lArmazenagem = new List<Armazenagem>();
                while (dr.Read())
                {
                    lArmazenagem.Add(new Armazenagem(Convert.ToInt16(dr[0]),
                                                     Convert.ToDecimal(dr[1]),
                                                     Convert.ToDecimal(dr[2]),
                                                     Convert.ToDecimal(dr[3]),
                                                     Convert.ToDecimal(dr[4])));
                }
                dr.Close();
                dr.Dispose();
                return lArmazenagem;
            }
        }


        //public class Mes
        //{
        //    public Meses descricao { get; set; }
        //    //public int total { get; set; }

        //    public Mes(Meses desc)
        //    {
        //        descricao = desc;
        //        //total = tot;
        //    }
        //}

    }
}