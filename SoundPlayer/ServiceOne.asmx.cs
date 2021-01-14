using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SoundPlayer
{
    /// <summary>
    /// Summary description for ServiceOne
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ServiceOne : System.Web.Services.WebService
    {

        [WebMethod(BufferResponse = false)]
        public bool ShouldPlay()
        {
            return new Random().Next(0, 3) == 1;
        }
    }
}
