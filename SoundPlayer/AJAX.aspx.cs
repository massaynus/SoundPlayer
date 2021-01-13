using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace SoundPlayer
{
    public partial class AJAX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void soundTimer_Tick(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "p", "Play();", true);
        }
    }
}