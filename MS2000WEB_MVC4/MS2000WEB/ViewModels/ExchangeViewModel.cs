using System;
using System.Web.Mvc;

namespace MS2000WEB.ViewModels
{
    public class ExchangeViewModel
    {
        public string ID { get; set; }
        [AllowHtml]
        public string Body { get; set; }
        public string Para { get; set; }
        public string Cc { get; set; }
        public DateTime Data { get; set; }
        public string Assunto { get; set; }
        public string De { get; set; }

    }
}