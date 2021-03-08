<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="Assign_2.Purchase" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="StyleSheet1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style2 {
            font-family: "Segoe UI";
            color: #5CB85C;
        }
        .auto-style3 {
            font-family: "Segoe UI";
            color: #EC971F;
        }
        .auto-style4 {
            height: 38px;
        }
        .auto-style5 {
            font-family: "Segoe UI";
            color: #5CB85C;
            height: 38px;
        }
        .auto-style6 {
            font-family: "Segoe UI";
            color: #EC971F;
            height: 38px;
        }
        .auto-style7 {
            font-family: "Segoe UI";
            color: #D1EDF6;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="jumbotron text-center text-info">
  <h1>The Mortgage Calculator</h1>
  <h3>Enter Your Purchase Details Below</h3> 
    <div class="container-fluid text-success">
  <div class="row">
      <h3> Navigation Links </h3>
    <div class="col-sm-4">
      <h3></h3>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Refinance.aspx">Refinance Loan Calculator</asp:HyperLink>
        </p>
    </div>
    <div class="col-sm-4">
     
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MortgageCalc.aspx">Mortgage Calculator Home</asp:HyperLink>
        </p>
    </div>
  </div>
</div>

</div>



        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"><span class="auto-style2">Loan Details</td>
                    <td class="auto-style5">Inputs</td>
                    <td class="auto-style5">Output</td>
                    <td class="auto-style5">Results</span></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">Purchase Price:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPurchasePrice" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                    </td>
                    <td class="auto-style1">Monthly Payment:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblMonthlyPayment" runat="server" Text="Monthly Payment" CssClass="auto-style3"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">Down Payment:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDownPayment" runat="server" OnTextChanged="txtDownPayment_TextChanged" BackColor="#CCCCFF"></asp:TextBox>
                    </td>
                    <td class="auto-style1">Total Loan Payments:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblTotalPayments" runat="server" Text="Total Loan Payments" CssClass="auto-style3"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Loan Amount:</td>
                    <td>
                        <asp:Label ID="lblLoanAmount" runat="server" Text="Loan Amount"></asp:Label>
                    </td>
                    <td>Total $ Value of all Payments:</td>
                    <td>
                        <asp:Label ID="lblTotalValuePayments" runat="server" Text="Total $ Payments" CssClass="auto-style3"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Interest Rate:</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                    </td>
                    <td>Total $ Value of Interest Paid:</td>
                    <td>
                        <asp:Label ID="lblTotalInterestPaid" runat="server" Text="Total $ Interest" CssClass="auto-style3"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Loan Term (Years):</td>
                    <td>
                        <asp:ListBox ID="lstTerm" runat="server" Height="24px" Width="156px" BackColor="#CCCCFF">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>Total $ Value of Principal Repaid:</td>
                    <td>
                        <asp:Label ID="lblTotalPrincipal" runat="server" Text="Total Principal Paid" CssClass="auto-style3"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" BackColor="#CCCCFF" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <br />


          <div class="container">
        <div class="text-center text-info">
            <h3 class="auto-style13">Paying even a little extra each month can make a big difference in interest paid over the life of a mortgage.</h3>
            <p class="auto-style13">The calculator below shows the impact of making a slightly larger payment everymonth on your mortage. </p>
            <p>    Enter a higher payment amount below to see the impact. (Try rounding your payment up to the next $100) </p>
        </div>
        <table class="w-100">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5">Inputs</td>
                <td class="auto-style4"></td>
                <td class="auto-style5">Results</span></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">Anticipated Monthly Payment:</td>
                <td class="auto-style18">
                    $&nbsp;&nbsp; <asp:TextBox ID="txtAnticipatedPayment" runat="server" BackColor="#CCCCFF" Width="110px"></asp:TextBox>
                </td>
                <td class="auto-style2">Total Loan Payments:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotalNumPmts" runat="server" Text="Total Payments" CssClass="auto-style3"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="btnSubmitPmtCalc" runat="server" Height="36px" OnClick="btnSubmitPmtCalc_Click" Text="Calculate" BackColor="#CCCCFF" />
                </td>
                <td class="auto-style2">Total $ Value of All Payments:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotValPmts" runat="server" Text="Total Value of Payments" CssClass="auto-style3"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6"></td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">Total$ Value of Interest Paid:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTotIntPd" runat="server" Text="total Interest Paid" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style4">
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">Excess Payment:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblExcessPmt" runat="server" Text="excess payment" CssClass="auto-style7"></asp:Label>
                </td>
                <td class="auto-style2">Total $ Value of Principal Paid:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotPrinPd" runat="server" Text="Total Principal" CssClass="auto-style3"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style2">Savings in Dollars:</td>
                <td class="auto-style17">
                    <strong>
                    <asp:Label ID="lblTotSavings" runat="server" Text="savings" CssClass="auto-style15" style="font-family: 'Segoe UI'; color: #5CB85C"></asp:Label>
                    </strong>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style2">Savings in Years:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTimeSave" runat="server" Text="years saved" CssClass="auto-style15" style="font-family: 'Segoe UI'; font-weight: bold; color: #5CB85C"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </div>

    </form>
</body>
</html>
