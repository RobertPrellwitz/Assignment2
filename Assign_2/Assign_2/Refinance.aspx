<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refinance.aspx.cs" Inherits="Assign_2.Refinance" %>

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
        table, {
            padding:40px;
        }
        .auto-style1 {
            width: 709px;
        }
        .auto-style2 {
            width: 410px;
        }
        .auto-style3 {
            width: 419px;
        }
        .auto-style4 {
            width: 514px;
        }
        .auto-style5 {
            width: 545px;
        }
        .auto-style6 {
            width: 367px;
        }
        .auto-style7 {
            font-family: "Segoe UI";
            color: #EC971F;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="jumbotron text-center text-info">
  <h1>The Mortgage Calculator</h1>
  <h3>Enter Your Refinance Details Below</h3> 

 <div class="container-fluid text-success">
  <div class="row">
      <h4>Navigation Links</h4>
    <div class="col-sm-4">
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Purchase.aspx">Purchase Loan Calculator</asp:HyperLink>
        </p>
    </div>
    <div class="col-sm-4">
      <h3></h3>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MortgageCalc.aspx"> Mortgage Calculator Home</asp:HyperLink>
        </p>
    </div>
  </div>
</div>

</div>




        <div class="container-fluid">
            <table class="w-100 ">
                <tr class="text-success">
                    <td class="auto-style4">Loan Details</td>
                    <td class="auto-style6">Inputs</td>
                    <td class="auto-style5">Output</td>
                    <td>Results</td>
                </tr>
                <tr>
                    <td class="auto-style4">Loan Amount:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtLoanAmount" runat="server" type="number" BackColor="#CCCCFF"></asp:TextBox>
                    </td>
                    <td class="auto-style5">Monthly Payment:</td>
                    <td>
                        <asp:Label ID="lblMonthlyPayment" runat="server" Text="payment" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Interest Rate: (ex. enter 3.25% as 3.25)</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtInterestRate" runat="server" type="number" step="0.001"></asp:TextBox>
                    </td>
                    <td class="auto-style5">Total Loan Payments:</td>
                    <td>
                        <asp:Label ID="lblTotalPayments" runat="server" Text="number of payments" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Loan Term (Years):</td>
                    <td id="lstTerm" class="auto-style6">
                        <asp:DropDownList ID="lstTerm" runat="server">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">Total $ Value of all Payments:</td>
                    <td>
                        <asp:Label ID="lblTotalValuePayments" runat="server" Text="$$" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnReset" type="reset" runat="server" Text="Reset" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                    <td class="auto-style5">Total $ Value of Interest Paid:</td>
                    <td>
                        <asp:Label ID="lblTotalInterestPaid" runat="server" Text="$$" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">Total $ Value of Principal Repaid:</td>
                    <td>
                        <asp:Label ID="lblTotalPrincipal" runat="server" Text="$$" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <br />
    <div class="container">
        <div class="text-center text-info">
            <h3>Paying even a little extra each month can make a big difference in interest paid over the life of a mortgage.</h3>

            <h3>    Enter a higher payment amount below to see the impact of making a slightly larger payment every month. </h3>
        </div>
        <table class="w-100">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Anticipated Monthly Payment:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAnticipatedPayment" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">Total Loan Payments:</td>
                <td>
                    <asp:Label ID="lblTotalNumPmts" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">Total $ Value of All Payments:</td>
                <td>
                    <asp:Label ID="lblTotValPmts" runat="server" Text="Total Value of Pmts"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Excess Payment:</td>
                <td class="auto-style1">
                    <asp:Label ID="lblExcessPmt" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">Total$ Value of Interest Paid:</td>
                <td>
                    <asp:Label ID="lblTotIntPd" runat="server" Text="total Interest"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">Total $ Value of Principal Paid:</td>
                <td>
                    <asp:Label ID="lblTotPrinPd" runat="server" Text="Total Principal"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="btnSubmitPmtCalc" runat="server" Height="36px" OnClick="btnSubmitPmtCalc_Click" Text="Calculate" />
                </td>
                <td class="auto-style2">Savings in Dollars:</td>
                <td>
                    <asp:Label ID="lblTotSavings" runat="server" Text="savings"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">Savings in Years:</td>
                <td>
                    <asp:Label ID="lblTimeSave" runat="server" Text="years saved"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
