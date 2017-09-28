using Avaliacao.Gerenciador.Model;
using Avaliacao.Gerenciador.ViewModel;
using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;

namespace Avaliacao.Gerenciador
{
    public partial class FrmPrint : Form
    {
        public int AvaliacaoID { get; set; }

        public int TipoRelatorio { get; set; }

        public FrmPrint()
        {
            InitializeComponent();
        }

        private void FrmPrint_Load(object sender, EventArgs e)
        {
            reportViewer1.SetDisplayMode(DisplayMode.PrintLayout);
            reportViewer1.ZoomMode = ZoomMode.Percent;
            reportViewer1.ZoomPercent = 100;

            AvaliacaoFacade facade = new AvaliacaoFacade();
            List<ViewRelatorioAnaliticoAvaliacao> Analitico = new List<ViewRelatorioAnaliticoAvaliacao>();
            List<ViewRelatorioAvaliacao> Sintetico = new List<ViewRelatorioAvaliacao>();
            List<ViewChartPorAvaliacao> ChartPorAvaliacao = new List<ViewChartPorAvaliacao>();
            dynamic dados;

            if (TipoRelatorio == 1)
            {
                Sintetico = facade.GetDadosRelatorioAvaliacao(AvaliacaoID);
                reportViewer1.LocalReport.ReportEmbeddedResource = "Avaliacao.Gerenciador.rptAvaliacao.rdlc";
                dados = Sintetico;
            }
            else
                if (TipoRelatorio == 2)
                {
                    Analitico = facade.GetDadosRelatorioAnaliticoAvaliacao(AvaliacaoID);
                    reportViewer1.LocalReport.ReportEmbeddedResource = "Avaliacao.Gerenciador.rptAnaliticoAvaliacao.rdlc";
                    dados = Analitico;
                }
                else
                if (TipoRelatorio == 3)
                {
                    Margins _margem = new Margins(0, 0, 1, 1);
                    
                    reportViewer1.SetPageSettings(new PageSettings { Landscape = true, Margins = _margem});                     
                    Analitico = facade.GetDadosRelatorioAnaliticoAvaliacao(AvaliacaoID);
                    reportViewer1.LocalReport.ReportEmbeddedResource = "Avaliacao.Gerenciador.rptAnaliticoColunaAvaliacao.rdlc";
                    dados = Analitico;
                }
                else
                    //if (TipoRelatorio == 3)
                    {
                        //this.reportViewer1.SetPageSettings(new PageSettings { Landscape = true, Margins = _margem });
                        ChartPorAvaliacao = facade.GetDadosChartPorAvaliacao(AvaliacaoID);
                        reportViewer1.LocalReport.ReportEmbeddedResource = "Avaliacao.Gerenciador.rptChartPorAvaliacao.rdlc";
                        dados = ChartPorAvaliacao;
                    }

            reportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource dataset = new ReportDataSource("ds", dados);
            reportViewer1.LocalReport.DataSources.Add(dataset);
            dataset.Value = dados;

            //reportViewer1.LocalReport.Refresh();
            this.reportViewer1.RefreshReport();
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
