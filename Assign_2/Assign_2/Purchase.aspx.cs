using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2
{
    public partial class Purchase : System.Web.UI.Page
    {
        //double loan;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtDownPayment_TextChanged(object sender, EventArgs e)
        {
            double loan;
            double price = Convert.ToDouble(txtPurchasePrice.Text);
            double dwnpmt = Convert.ToDouble(txtDownPayment.Text);
            loan = price - dwnpmt;
            lblLoanAmount.Text = (loan).ToString("C");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int months = 12;
            double loanValue = Convert.ToDouble(txtPurchasePrice.Text) - Convert.ToDouble(txtDownPayment.Text);
            double interestRate = Convert.ToDouble(txtInterestRate.Text) / 100;
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