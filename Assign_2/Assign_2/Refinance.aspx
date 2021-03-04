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
        .auto-style1 {
            width: 709px;
        }
        .auto-style2 {
            width: 410px;
        }
        .auto-style3 {
            width: 419px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center text-info">
  <h1>The Mortgage Calculator</h1>
  <h3>Enter Your Refinance Details Below</h3> 
</div>
        <div>
            <table class="w-100">
                <tr>
                    <td>Loan Details</td>
                    <td>Inputs</td>
                    <td>Output</td>
                    <td>Results</td>
                </tr>
                <tr>
                    <td>Loan Amount:</td>
                    <td>
                        <asp:TextBox ID="txtLoanAmount" runat="server"></asp:TextBox>
                    </td>
                    <td>Monthly Payment:</td>
                    <td>
                        <asp:Label ID="lblMonthlyPayment" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Interest Rate:</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server">%</asp:TextBox>
                    </td>
                    <td>Total Loan Payments:</td>
                    <td>
                        <asp:Label ID="lblTotalPayments" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Loan Term (Years):</td>
                    <td>
                        <asp:ListBox ID="lstTerm" runat="server" Height="24px" Width="156px">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>Total $ Value of all Payments:</td>
                    <td>
                        <asp:Label ID="lblTotalValuePayments" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                    <td>Total $ Value of Interest Paid:</td>
                    <td>
                        <asp:Label ID="lblTotalInterestPaid" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>Total $ Value of Principal Repaid:</td>
                    <td>
                        <asp:Label ID="lblTotalPrincipal" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <br />
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
    </form>
</body>
</html>
