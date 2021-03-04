using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2
{
    public partial class Refinance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {   
            int months = 12;
            double loanValue = Convert.ToDouble(txtLoanAmount.Text);
            double interestRate = Convert.ToDouble(txtInterestRate.Text)/100;
            double term = Convert.ToInt32(lstTerm.Text);
            double i = interestRate / months;
            double n = term * months;
            double payment;

            payment = loanValue * ((i * Math.Pow(1 + i, n)) / (Math.Pow(1 + i, n) - 1));

            lblMonthlyPayment.Text = payment.ToString("C");
            lblTotalPayments.Text = n.ToString();
            lblTotalValuePayments.Text = (n * payment).ToString("C");
            lblTotalInterestPaid.Text = (n * payment - loanValue).ToString("C");
            lblTotalPrincipal.Text = loanValue.ToString("C");
        }
    }
}