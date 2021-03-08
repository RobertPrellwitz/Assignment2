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
        int months = 12;
        double loanValue = 0;
        double interestRate = 0;
        int term = 0;
        double payment = 0;

        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {   
            loanValue = Convert.ToDouble(txtLoanAmount.Text);
            interestRate = Convert.ToDouble(txtInterestRate.Text)/100;
            term = Convert.ToInt32(lstTerm.Text);
            double i = interestRate / months;
            double n = term * months;
            

            payment = loanValue * ((i * Math.Pow(1 + i, n)) / (Math.Pow(1 + i, n) - 1));

            lblMonthlyPayment.Text = payment.ToString("C");
            lblTotalPayments.Text = n.ToString();
            lblTotalValuePayments.Text = (n * payment).ToString("C");
            lblTotalInterestPaid.Text = (n * payment - loanValue).ToString("C");
            lblTotalPrincipal.Text = loanValue.ToString("C");
        }

        protected void btnSubmitPmtCalc_Click(object sender, EventArgs e)
        {
            loanValue = Convert.ToDouble(txtLoanAmount.Text);
            interestRate = Convert.ToDouble(txtInterestRate.Text) / 100;
            term = Convert.ToInt32(lstTerm.Text);
            double i = interestRate / months;
            int n = term * months;
            double excessPayment = Convert.ToDouble(txtAnticipatedPayment.Text);
            double balance = loanValue;
            double intPaid = 0;
            double totPmts = 0;
            double totPrin = 0;
            double interest;
            int repayterm = 0;

            payment = loanValue * ((i * Math.Pow(1 + i, n)) / (Math.Pow(1 + i, n) - 1));
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

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtLoanAmount.Text = default;
            txtInterestRate.Text = default;
            lblMonthlyPayment.Text = default;
            lblTotalPayments.Text = default;
            lblTotalValuePayments.Text = default;
            lblTotalInterestPaid.Text = default;
            lblTotalPrincipal.Text = default;
            lblTotalNumPmts.Text = default;
            lblTotalValuePayments.Text = default;
            lblTotIntPd.Text = default;
            lblTotPrinPd.Text = default;
            lblTotSavings.Text = default;
            lblTimeSave.Text = default;
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    txtLoanAmount.Text = string.Empty;
        //    txtInterestRate.Text = string.Empty;
        //}
    }
}