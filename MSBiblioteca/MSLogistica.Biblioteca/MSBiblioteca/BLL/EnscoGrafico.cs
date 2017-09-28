using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using MSBiblioteca.MSUtil;

namespace MSBiblioteca.BLL
{
    public class EnscoGrafico : EnscoGraficoDTO
    {
        readonly EnscoGraficoDAL _objDal = new EnscoGraficoDAL();

        public List<EnscoGrafico> BuscarDados(string data, string tipo, string declaracao, string canal)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            var lista = new List<EnscoGrafico>();

            int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0;

            foreach (var i in dt.AsEnumerable())
            {
                //int v =  - ;

                DateTime inicio = (DateTime)i[2];
                DateTime fim = (DateTime)i[1];
                TimeSpan diff;
                diff = fim.Subtract(inicio);

                if (diff.Days >= 0 && diff.Days <= 5)
                {
                    a += 1;
                }
                else
                    if (diff.Days >= 6 && diff.Days <= 10)
                    {
                        b += 1;
                    }
                    else

                        if (diff.Days >= 11 && diff.Days <= 15)
                        {
                            c += 1;
                        }
                        else
                            if (diff.Days >= 16 && diff.Days <= 20)
                            {
                                d += 1;
                            }
                            else
                                if (diff.Days >= 21 && diff.Days <= 36)
                                {
                                    e += 1;
                                }
                                else//>=37
                                {
                                    f += 1;
                                }

            }

            lista.Add(new EnscoGrafico { Dia = "00-05 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = a });
            lista.Add(new EnscoGrafico { Dia = "06-10 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = b });
            lista.Add(new EnscoGrafico { Dia = "11-15 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = c });
            lista.Add(new EnscoGrafico { Dia = "16-20 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = d });
            lista.Add(new EnscoGrafico { Dia = "21-36 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = e });
            lista.Add(new EnscoGrafico { Dia = "37 days or more", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = f });

            return lista;
        }

        public List<EnscoGrafico> BuscarDados(string data, string tipo, string declaracao, string canal, string local)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal, local);

            var lista = new List<EnscoGrafico>();

            int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0;

            foreach (var i in dt.AsEnumerable())
            {
                //int v =  - ;

                DateTime inicio = (DateTime)i[2];
                DateTime fim = (DateTime)i[1];
                TimeSpan diff;
                diff = fim.Subtract(inicio);

                if (diff.Days >= 0 && diff.Days <= 5)
                {
                    a += 1;
                }
                else
                    if (diff.Days >= 6 && diff.Days <= 10)
                    {
                        b += 1;
                    }
                    else

                        if (diff.Days >= 11 && diff.Days <= 15)
                        {
                            c += 1;
                        }
                        else
                            if (diff.Days >= 16 && diff.Days <= 20)
                            {
                                d += 1;
                            }
                            else
                                if (diff.Days >= 21 && diff.Days <= 36)
                                {
                                    e += 1;
                                }
                                else//>=37
                                {
                                    f += 1;
                                }

            }

            lista.Add(new EnscoGrafico { Dia = "00-05 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = a });
            lista.Add(new EnscoGrafico { Dia = "06-10 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = b });
            lista.Add(new EnscoGrafico { Dia = "11-15 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = c });
            lista.Add(new EnscoGrafico { Dia = "16-20 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = d });
            lista.Add(new EnscoGrafico { Dia = "21-36 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = e });
            lista.Add(new EnscoGrafico { Dia = "37 days or more", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = f });

            return lista;
        }

        public List<EnscoGrafico> BuscarMediaDias(string data, string tipo)
        {

            string ano = data.Substring(3, 4);
            var dt = _objDal.BuscarMediaDias(ano, tipo);
            var lista = new List<EnscoGrafico>();

            foreach (var item in dt.AsEnumerable())
            {
                lista.Add(new EnscoGrafico
                {
                    Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(item["Mes"])),
                    MediaDias = Convert.ToDouble(item["days"]),
                    MesNumero = Convert.ToInt16(item["Mes"])
                });
            }
            return lista;
        }

        private int DiferencaDias(DateTime inicio, DateTime final)
        {
            TimeSpan diff = final.Subtract(inicio);
            return diff.Days;
        }

        public List<EnscoGrafico> BuscarDados(string data)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            var dt = _objDal.BuscarDados(mes, ano);
            var lista = new List<EnscoGrafico>();

            double totaldiasdesembaraco = 0;
            double totaldiasdi = 0;
            double totaldiasdta = 0;
            double totaldiasAverbacao = 0;

            //
            double totalprocdesembaraco = 0;
            double totalprocdi = 0;
            double totalprocdta = 0;
            double totalprocAverbacao = 0;

            foreach (var item in dt.AsEnumerable())
            {
                DateTime? dataAverb = _objDal.BuscarFollow(item["CODIGO"].ToString());
                DateTime? dataDta = _objDal.BuscarFollowDta(item["CODIGO"].ToString());

                // Calculando Averbação
                if (!string.IsNullOrEmpty(item["Data_Chegada_URF_Cheg"].ToString()) && dataAverb != null)
                {
                    totaldiasAverbacao += DiferencaDias((DateTime)item["Data_Chegada_URF_Cheg"], (DateTime)dataAverb);
                    totalprocAverbacao++;
                }

                // Calculando DTA
                if (!string.IsNullOrEmpty(item["Data_Chegada_URF_Desp"].ToString()) &&
                    dataDta != null && item["TipoManifesto"].ToString() == "3")
                {
                    totaldiasdta += DiferencaDias((DateTime)dataDta, (DateTime)item["Data_Chegada_URF_Desp"]);
                    totalprocdta++;
                }
                //------
                // Calculando DI
                if (dataDta != null && !string.IsNullOrEmpty(item["DT_REGISTRO_DI"].ToString()))
                {
                    //totaldiasdesembaraco += DiferencaDias((DateTime)dataDta, item["DT_REGISTRO_DI"].ToString().strToDate());
                    totaldiasdesembaraco += DiferencaDias((DateTime)dataDta, item["DT_REGISTRO_DI"].ToString().strToDate());
                    totalprocdi++;
                }
                else
                    if (dataAverb != null && !string.IsNullOrEmpty(item["DT_REGISTRO_DI"].ToString()))
                    {
                        totaldiasdesembaraco += DiferencaDias((DateTime)dataAverb, item["DT_REGISTRO_DI"].ToString().strToDate());
                        totalprocdi++;
                    }
                    else
                        if (!string.IsNullOrEmpty(item["Data_Chegada_URF_Cheg"].ToString()) && !string.IsNullOrEmpty(item["DT_REGISTRO_DI"].ToString()))
                        {
                            totaldiasdesembaraco += DiferencaDias((DateTime)item["Data_Chegada_URF_Cheg"], item["DT_REGISTRO_DI"].ToString().strToDate());
                            totalprocdi++;
                        }
                //-------------------
                

                // Calculando Desembaraco
                if (!string.IsNullOrEmpty(item["DT_DESEMBARACO"].ToString()) &&
                    !string.IsNullOrEmpty(item["DT_REGISTRO_DI"].ToString()))
                {
                    totaldiasdi += DiferencaDias(item["DT_REGISTRO_DI"].ToString().strToDate(), (DateTime)item["DT_DESEMBARACO"]);                    
                    totalprocdesembaraco++;
                }

            }
            double mdAverbacao = 0;
            double mdDta = 0;
            double mdDi = 0;
            double mdDesembaraco = 0;

            if (totalprocAverbacao > 0)
                mdAverbacao = totaldiasAverbacao / totalprocAverbacao;
            if (totalprocdta > 0)
                mdDta = totaldiasdta / totalprocdta;
            if (totalprocdi > 0)
                mdDi = totaldiasdi / totalprocdi;
            if (totalprocdesembaraco > 0)
                mdDesembaraco = totaldiasdesembaraco / totalprocdesembaraco;

            lista.Add(new EnscoGrafico
            {
                TotalAverbacao = mdAverbacao,
                TotalDta = mdDta,
                TotalDi = mdDi,
                TotalDesembaraco = mdDesembaraco,
                TotalValor = mdAverbacao + mdDta + mdDi + mdDesembaraco,

                //TotalAverbacao = 1.5,
                //TotalDta = 0,
                //TotalDi = 1,
                //TotalDesembaraco = 1.3,
                //TotalValor = 3.8,

            });

            return lista;
        }

        public DataTable BuscarProcessosAereoMaritimo(string data, string tipo, string declaracao, string canal)
        {
            var mes = data.Substring(0, 2);
            var ano = data.Substring(3, 4);
            return _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);
        }

        public DataTable BuscarProcessosAereoMaritimo(string data, string tipo, string declaracao, string canal, string local)
        {
            var mes = data.Substring(0, 2);
            var ano = data.Substring(3, 4);
            return _objDal.BuscarDados(mes, ano, tipo, declaracao, canal, local);
        }
    }

}

