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
        .auto-style8 {
            width: 357px;
        }
        .auto-style9 {
            width: 419px;
            height: 77px;
        }
        .auto-style10 {
            width: 476px;
            height: 77px;
        }
        .auto-style11 {
            width: 410px;
            height: 77px;
        }
        .auto-style12 {
            height: 77px;
        }
        .auto-style13 {
            margin-top: 87;
        }
        .auto-style15 {
            font-family: "Segoe UI";
            font-weight: bold;
            color: #5CB85C;
        }
        .auto-style16 {
            height: 77px;
            width: 272px;
        }
        .auto-style17 {
            width: 272px;
        }
        .auto-style18 {
            width: 476px;
        }
        .auto-style19 {
            width: 514px;
            height: 56px;
        }
        .auto-style20 {
            width: 367px;
            height: 56px;
        }
        .auto-style21 {
            width: 545px;
            height: 56px;
        }
        .auto-style22 {
            width: 357px;
            height: 56px;
        }
        .auto-style23 {
            height: 56px;
        }
        .auto-style24 {
            width: 514px;
            height: 46px;
        }
        .auto-style25 {
            width: 367px;
            height: 46px;
        }
        .auto-style26 {
            width: 545px;
            height: 46px;
        }
        .auto-style27 {
            width: 357px;
            height: 46px;
        }
        .auto-style28 {
            height: 46px;
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
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;Inputs</td>
                    <td class="auto-style5">Output</td>
                    <td class="auto-style8">Results</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Loan Amount:</td>
                    <td class="auto-style6">
                        $&nbsp;
                        <asp:TextBox ID="txtLoanAmount" runat="server" type="number" BackColor="#CCCCFF" Width="110px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">Monthly Payment:</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblMonthlyPayment" runat="server" Text="payment" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Interest Rate: (ex. enter 3.25% as 3.25)</td>
                    <td class="auto-style6">
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtInterestRate" runat="server" type="number" step="0.001" BackColor="#CCCCFF" Width="112px"></asp:TextBox>
                    &nbsp;%</td>
                    <td class="auto-style5">Total Loan Payments:</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblTotalPayments" runat="server" Text="number of payments" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">Loan Term (Years):</td>
                    <td id="lstTerm" class="auto-style25">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="lstTerm" runat="server" BackColor="#CCCCFF">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp; years</td>
                    <td class="auto-style26">Total $ Value of all Payments:</td>
                    <td class="auto-style27">
                        <asp:Label ID="lblTotalValuePayments" runat="server" Text="$$" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                    </td>
                    <td class="auto-style20">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" BackColor="#CCCCFF" />
                    </td>
                    <td class="auto-style21">Total $ Value of Interest Paid:</td>
                    <td class="auto-style22">
                        <asp:Label ID="lblTotalInterestPaid" runat="server" Text="$$" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">Total $ Value of Principal Repaid:</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblTotalPrincipal" runat="server" Text="$$" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" Width="150px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
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
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style16"></td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Anticipated Monthly Payment:</td>
                <td class="auto-style18">
                    $&nbsp;&nbsp; <asp:TextBox ID="txtAnticipatedPayment" runat="server" BackColor="#CCCCFF" Width="110px"></asp:TextBox>
                </td>
                <td class="auto-style2">Total Loan Payments:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotalNumPmts" runat="server" Text="Total Payments" CssClass="auto-style7"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style2">Total $ Value of All Payments:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotValPmts" runat="server" Text="Total Value of Payments" CssClass="auto-style7"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Excess Payment:</td>
                <td class="auto-style18">
                    <asp:Label ID="lblExcessPmt" runat="server" Text="excess payment"></asp:Label>
                </td>
                <td class="auto-style2">Total$ Value of Interest Paid:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotIntPd" runat="server" Text="total Interest Paid" CssClass="auto-style7"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style2">Total $ Value of Principal Paid:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTotPrinPd" runat="server" Text="Total Principal" CssClass="auto-style7"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSubmitPmtCalc" runat="server" Height="36px" OnClick="btnSubmitPmtCalc_Click" Text="Calculate" BackColor="#CCCCFF" />
                </td>
                <td class="auto-style2">Savings in Dollars:</td>
                <td class="auto-style17">
                    <strong>
                    <asp:Label ID="lblTotSavings" runat="server" Text="savings" CssClass="auto-style15"></asp:Label>
                    </strong>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style2">Savings in Years:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTimeSave" runat="server" Text="years saved" CssClass="auto-style15"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
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
