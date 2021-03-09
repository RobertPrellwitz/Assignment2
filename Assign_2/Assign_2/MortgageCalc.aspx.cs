using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2
{
    public partial class MortgageCalc : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime todaysDate = DateTime.Now;
            lblDate.Text = todaysDate.ToString("D");
            lblTime.Text = todaysDate.ToString("T");
        }

    }
}