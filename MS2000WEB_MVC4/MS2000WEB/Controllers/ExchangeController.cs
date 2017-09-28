using Microsoft.Exchange.WebServices.Autodiscover;
using Microsoft.Exchange.WebServices.Data;
using MS2000WEB.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web.Mvc;
using PagedList;

namespace MS2000WEB.Controllers
{
    public class ExchangeController : Controller
    {
        static int offset = 1;
        const int pageSize = 10;
        ExchangeService service = new ExchangeService(ExchangeVersion.Exchange2010_SP1);
        const string _EMAIL_ADDRESS = "eduardo.souza@mslogistica.com.br";
        static FindItemsResults<Item> findResults;

        public ActionResult Index(string search, string typeSearch, int page = 1)
        {
            try
            {
                //List<EmailMessage> mails = new List<EmailMessage>();
                //PagedList.IPagedList<ExchangeViewModel> mails = new PagedList.IPagedList<ExchangeViewModel>();
                PagedList.IPagedList<ExchangeViewModel> mails;

                if (!string.IsNullOrEmpty(search) && !string.IsNullOrEmpty(typeSearch))
                {
                    mails = SearchMailFromInbox(search, typeSearch, page);
                }
                else
                {
                    mails = GetUnreadMailFromInbox();
                }
                return View(mails/*mails.ToPagedList(pageSize, off)*/);

            }
            catch (Exception ex)
            {
                return View(ex.Message);
            }
        }

        public ActionResult GetBody(string Id = "")
        {
            Item item = null;
            if (!string.IsNullOrEmpty(Id))
            {
                item = findResults.FirstOrDefault(c => c.Id.ChangeKey.Replace("/", "") == Id);
            }
            else
            {
                item = findResults.FirstOrDefault();
            }

            ExchangeViewModel model = null;

            if (item != null)
            {
                Microsoft.Exchange.WebServices.Data.Item appointment = item;
                appointment.Load(new
                    Microsoft.Exchange.WebServices.Data.PropertySet(
                    Microsoft.Exchange.WebServices.Data.ItemSchema.Attachments,
                    Microsoft.Exchange.WebServices.Data.ItemSchema.Body,
                    Microsoft.Exchange.WebServices.Data.ItemSchema.DateTimeReceived,
                    Microsoft.Exchange.WebServices.Data.ItemSchema.DisplayTo,
                    Microsoft.Exchange.WebServices.Data.ItemSchema.DisplayCc,
                    Microsoft.Exchange.WebServices.Data.ItemSchema.Subject,
                     Microsoft.Exchange.WebServices.Data.EmailMessageSchema.From
                    ));


                string sHTMLCOntent = item.Body.Text;


                FileAttachment[] attachments = null;

                if (item.Attachments.Count != 0)
                {
                    attachments = new FileAttachment[item.Attachments.Count];
                    for (int i = 0; i < item.Attachments.Count; i++)
                    {
                        try
                        {
                            if (item.Attachments[i].IsInline)
                            {
                                string sType = item.Attachments[i].ContentType.ToLower();
                                if (sType.Contains("image"))
                                {
                                    attachments[i] = (FileAttachment)item.Attachments[i];
                                    attachments[i].Load();
                                    string sId = attachments[i].ContentId;
                                    sType = sType.Replace("image/", "");
                                    string oldString = "cid:" + sId;
                                    string imagem =
                                        Convert.ToBase64String(attachments[i].Content);
                                    sHTMLCOntent = sHTMLCOntent.Replace(oldString,
                                        "data:image/" + sType + ";base64," + imagem);
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            //HttpContext.Current.Response.Write("Erro: " + ex.Message);
                        }
                    }
                }

                model = new ExchangeViewModel
                {
                    Body = sHTMLCOntent,
                    Assunto = item.Subject,
                    Para = item.DisplayTo,
                    Cc = item.DisplayCc,
                    Data = item.DateTimeReceived,
                    De = ((EmailMessage)item).From.Name
                };
            }

            return PartialView("ViewEmailBody", model);
        }

        public PagedList.IPagedList<ExchangeViewModel> SearchMailFromInbox(string search, string type, int page)
        {
            // Set the flag that indicates whether to continue iterating through additional pages.
            bool MoreItems = true;

            offset = page;
            //service.AutodiscoverUrl(_EMAIL_ADDRESS);

            getService(_EMAIL_ADDRESS, "eduardo.souza", "85hw74", "msmx01");

            List<SearchFilter> searchFilterCollection = new List<SearchFilter>();

            SearchFilter searchFilter = null;
            switch (type)
            {
                case "1":
                    // Create the search filter.            
                    searchFilterCollection.Add(new SearchFilter.ContainsSubstring(ItemSchema.Subject, search));
                    searchFilterCollection.Add(new SearchFilter.ContainsSubstring(ItemSchema.Body, search));
                    searchFilter = new SearchFilter.SearchFilterCollection(LogicalOperator.Or, searchFilterCollection.ToArray());
                    break;
                case "2":
                    searchFilterCollection.Add(new SearchFilter.ContainsSubstring(ItemSchema.Subject, search));
                    searchFilter = new SearchFilter.SearchFilterCollection(LogicalOperator.Or, searchFilterCollection.ToArray());
                    break;
                case "3":
                    searchFilterCollection.Add(new SearchFilter.ContainsSubstring(ItemSchema.Body, search));
                    searchFilter = new SearchFilter.SearchFilterCollection(LogicalOperator.Or, searchFilterCollection.ToArray());
                    break;
            }

            // Continue paging while there are more items to page.
            while (MoreItems)
            {
                // Create a view with a page size of 10.
                ItemView view = new ItemView(int.MaxValue);//ItemView(pageSize, offset, OffsetBasePoint.Beginning);

                // Identify the Subject and DateTimeReceived properties to return.
                // Indicate that the base property will be the item identifier
                //view.PropertySet = new PropertySet(BasePropertySet.IdOnly, ItemSchema.Subject, ItemSchema.DateTimeReceived);

                view.PropertySet = new PropertySet(
                      BasePropertySet.IdOnly,
                      ItemSchema.Subject,
                      ItemSchema.DateTimeReceived,
                      ItemSchema.DisplayTo,
                      EmailMessageSchema.From,
                      EmailMessageSchema.HasAttachments
                      );

                // Order the search results by the DateTimeReceived in descending order.
                view.OrderBy.Add(ItemSchema.DateTimeReceived, SortDirection.Descending);

                // Set the traversal to shallow. (Shallow is the default option; other options are Associated and SoftDeleted.)
                //view.Traversal = ItemTraversal.Shallow;

                // Send the request to search the Inbox and get the results.
                /*FindItemsResults<Item>*/
                service.Timeout = 10000000;
                findResults = service.FindItems(WellKnownFolderName.Inbox, searchFilter, view);

                // Set the flag to discontinue paging.
                //if (!findResults.MoreAvailable)
                MoreItems = false;

                // Update the offset if there are more items to page.
                if (MoreItems)
                    offset += pageSize;
            }
            //return findResults.Items.Cast<EmailMessage>().ToList();

            ViewBag.Total = findResults.TotalCount;

            return findResults.Items.Select(x => new
            ExchangeViewModel
            {
                ID = x.Id.ChangeKey,
                Assunto = x.Subject,
                De = ((EmailMessage)x).From.Name,
                Data = x.DateTimeReceived
            }).ToPagedList(offset, int.MaxValue);
        }

        public PagedList.IPagedList<ExchangeViewModel> GetUnreadMailFromInbox()
        {
            // Set the flag that indicates whether to continue iterating through additional pages.
            //service.Url = new Uri("https://mail.mslogistica.com.br/EWS/Services.wsdl");
            //service.Credentials = new NetworkCredential("eduardo.souza", "85hw74", "mslogistica.com.br");
            //service.AutodiscoverUrl(_EMAIL_ADDRESS);
            //service.Credentials = new WebCredentials("eduardo.souza", "85hw74", "mslogistica.com.br");
            //service.AutodiscoverUrl("eduardo.souza@mslogistica.com.br");


            // Create the binding.
            //ExchangeService service1 = new ExchangeService(ExchangeVersion.Exchange2010_SP1);
            //service1.Url = new Uri("https://mail.mslogistica.com.br/EWS/Exchange.wsdl");
            // Define credentials.
            //service1.Credentials = new WebCredentials("eduardo.souza@mslogistica.com.br", "85hw74");
            getService(_EMAIL_ADDRESS, "eduardo.souza", "85hw74", "msmx01");



            List<SearchFilter> searchFilterCollection = new List<SearchFilter>();

            SearchFilter searchFilter = new SearchFilter.SearchFilterCollection(LogicalOperator.And, new SearchFilter.IsEqualTo(EmailMessageSchema.IsRead, false));

            // Create a view with a page size of 10.
            ItemView view = new ItemView(pageSize);

            // Identify the Subject and DateTimeReceived properties to return.
            // Indicate that the base property will be the item identifier
            view.PropertySet = new PropertySet(
                BasePropertySet.IdOnly,
                ItemSchema.Subject,
                ItemSchema.DateTimeReceived,

                ItemSchema.DisplayTo,
                EmailMessageSchema.From,
                EmailMessageSchema.HasAttachments
                );

            // Order the search results by the DateTimeReceived in descending order.
            view.OrderBy.Add(ItemSchema.DateTimeReceived, SortDirection.Descending);

            // Set the traversal to shallow. (Shallow is the default option; other options are Associated and SoftDeleted.)
            //view.Traversal = ItemTraversal.Shallow;

            // Send the request to search the Inbox and get the results.
            /*FindItemsResults<Item>*/
            findResults = service.FindItems(WellKnownFolderName.Inbox, searchFilter, view);

            //return findResults.Items.Cast<EmailMessage>().ToList();
            ViewBag.Total = findResults.TotalCount;
            return findResults.Items.Select(x => new
            ExchangeViewModel
            {
                ID = x.Id.ChangeKey,
                Assunto = x.Subject,
                De = ((EmailMessage)x).From.Name,
                Data = x.DateTimeReceived
            }).ToPagedList(1, pageSize);
        }

        private ExchangeService getService(String userEmail, String login, String password, String hostName)
        {
            //ExchangeService service = new ExchangeService(ExchangeVersion.Exchange2010_SP1);
            ServicePointManager.ServerCertificateValidationCallback = delegate(
                Object obj,
                X509Certificate certificate,
                X509Chain chain,
                SslPolicyErrors errors)
            {
                return true;
            };

            AutodiscoverService auservice = new AutodiscoverService(hostName);

            if (auservice.ServerInfo != null)
            {
                try
                {
                    service.AutodiscoverUrl(userEmail, delegate { return true; });
                }
                catch (AutodiscoverRemoteException ex)
                {
                    Console.WriteLine("Exception thrown: " + ex.Error.Message);
                }
            }
            else
            {
                service.Url = new Uri("https://" + hostName + "/EWS/Exchange.asmx");
                //service.Url = new Uri("https://mail.mslogistica.com.br/EWS/Exchange.wsdl");
            }

            service.UseDefaultCredentials = true;
            service.TraceEnabled = true;
            if (service.ServerInfo == null)
            {
                service.Credentials = new WebCredentials(login, password);
            }
            return service;
        }
    }
}
