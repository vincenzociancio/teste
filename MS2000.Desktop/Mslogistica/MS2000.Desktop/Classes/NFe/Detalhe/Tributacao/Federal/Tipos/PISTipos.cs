﻿using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos
{
    /// <summary>
    ///     <para>01 - Operação Tributável (base de cálculo = valor da operação (alíquota normal (cumulativo/não cumulativo)))</para>
    ///     <para>02 - Operação Tributável (base de cálculo = valor da operação (alíquota diferenciada))</para>
    ///     <para>03 - Operação Tributável (base de cálculo = quantidade vendida (alíquota por unidade de produto))</para>
    ///     <para>04 - Operação Tributável (tributação monofásica (alíquota zero))</para>
    ///     <para>05 - Operação Tributável (Substituição Tributária)</para>
    ///     <para>06 - Operação Tributável (alíquota zero)</para>
    ///     <para>07 - Operação Isenta da Contribuição</para>
    ///     <para>08 - Operação Sem Incidência da Contribuição</para>
    ///     <para>09 - Operação com Suspensão da Contribuição</para>
    ///     <para>49 - Outras Operações de Saída</para>
    ///     <para>50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno</para>
    ///     <para>51 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno</para>
    ///     <para>52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação</para>
    ///     <para>53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno</para>
    ///     <para>54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação</para>
    ///     <para>55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação</para>
    ///     <para>56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação</para>
    ///     <para>60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno</para>
    ///     <para>61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno</para>
    ///     <para>62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação</para>
    ///     <para>63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno</para>
    ///     <para>64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação</para>
    ///     <para>65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação</para>
    ///     <para>66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação</para>
    ///     <para>67 - Crédito Presumido - Outras Operações</para>
    ///     <para>70 - Operação de Aquisição sem Direito a Crédito</para>
    ///     <para>71 - Operação de Aquisição com Isenção</para>
    ///     <para>72 - Operação de Aquisição com Suspensão</para>
    ///     <para>73 - Operação de Aquisição a Alíquota Zero</para>
    ///     <para>74 - Operação de Aquisição sem Incidência da Contribuição</para>
    ///     <para>75 - Operação de Aquisição por Substituição Tributária</para>
    ///     <para>98 - Outras Operações de Entrada</para>
    ///     <para>99 - Outras Operações</para>
    /// </summary>
    public enum CSTPIS
    {
        [XmlEnum("01")] pis01,
        [XmlEnum("02")] pis02,
        [XmlEnum("03")] pis03,
        [XmlEnum("04")] pis04,
        [XmlEnum("05")] pis05,
        [XmlEnum("06")] pis06,
        [XmlEnum("07")] pis07,
        [XmlEnum("08")] pis08,
        [XmlEnum("09")] pis09,
        [XmlEnum("49")] pis49,
        [XmlEnum("50")] pis50,
        [XmlEnum("51")] pis51,
        [XmlEnum("52")] pis52,
        [XmlEnum("53")] pis53,
        [XmlEnum("54")] pis54,
        [XmlEnum("55")] pis55,
        [XmlEnum("56")] pis56,
        [XmlEnum("60")] pis60,
        [XmlEnum("61")] pis61,
        [XmlEnum("62")] pis62,
        [XmlEnum("63")] pis63,
        [XmlEnum("64")] pis64,
        [XmlEnum("65")] pis65,
        [XmlEnum("66")] pis66,
        [XmlEnum("67")] pis67,
        [XmlEnum("70")] pis70,
        [XmlEnum("71")] pis71,
        [XmlEnum("72")] pis72,
        [XmlEnum("73")] pis73,
        [XmlEnum("74")] pis74,
        [XmlEnum("75")] pis75,
        [XmlEnum("98")] pis98,
        [XmlEnum("99")] pis99
    }
}