using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace SoundPlayer
{
    public partial class Buttons : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPlay_Click(object sender, EventArgs e)
        {
            // Code behind here for play logic

            ScriptManager.RegisterStartupScript(this, GetType(), "p", "Play();", true);
        }

        protected void btnStop_Click(object sender, EventArgs e)
        {
            // Code behind here for stop logic
            //ClientScript.RegisterStartupScript(GetType(), "Stop", "Stop");

            ScriptManager.RegisterStartupScript(this, GetType(), "s", "Stop();", true);
        }
    }
}