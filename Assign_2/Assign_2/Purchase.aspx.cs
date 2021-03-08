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
        
        int months = 12;
        double payment;
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

        protected void btnSubmitPmtCalc_Click(object sender, EventArgs e)
        {
            double loan;
            double price = Convert.ToDouble(txtPurchasePrice.Text);
            double dwnpmt = Convert.ToDouble(txtDownPayment.Text);
            loan = price - dwnpmt;
            double interestRate = Convert.ToDouble(txtInterestRate.Text) / 100;
            int term = Convert.ToInt32(lstTerm.Text);
            double i = interestRate / months;
            int n = term * months;
            double excessPayment = Convert.ToDouble(txtAnticipatedPayment.Text);
            double balance = loan;
            double intPaid = 0;
            double totPmts = 0;
            double totPrin = 0;
            double interest;
            int repayterm = 0;

            payment = loan * ((i * Math.Pow(1 + i, n)) / (Math.Pow(1 + i, n) - 1));
            lblExcessPmt.Text = (excessPayment - payment).ToString("C");

            while (payment < balance)
            {
                interest = balance * i;
                intPaid = intPaid + interest;
                totPrin = totPrin + (excessPayment - interest);
                balance = balance - (excessPayment - interest);
                totPmts = totPmts + excessPayment;
                repayterm++;

            }

            excessPayment = balance + balance * i;
            interest = balance * i;
            intPaid = intPaid + interest;
            totPrin = totPrin + balance;
            totPmts = totPmts + excessPayment;
            balance = balance - excessPayment;


            lblTotalNumPmts.Text = repayterm.ToString();
            lblTotValPmts.Text = totPmts.ToString("C");
            lblTotIntPd.Text = intPaid.ToString("C");
            lblTotPrinPd.Text = totPrin.ToString("C");
            lblTotSavings.Text = ((n * payment) - totPmts).ToString("C");
            lblTimeSave.Text = ((n - repayterm) / 12).ToString();


        }

    }
}