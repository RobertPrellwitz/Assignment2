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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center text-info">
  <h1>The Mortgage Calculator</h1>
  <h3>Enter Your Purchase Details Below</h3> 
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
                    <td>Purchase Price:</td>
                    <td>
                        <asp:TextBox ID="txtPurchasePrice" runat="server"></asp:TextBox>
                    </td>
                    <td>Monthly Payment:</td>
                    <td>
                        <asp:Label ID="lblMonthlyPayment" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Down Payment:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDownPayment" runat="server" OnTextChanged="txtDownPayment_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style1">Total Loan Payments:</td>
                    <td class="auto-style1">
                        <asp:Label ID="lblTotalPayments" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Loan Amount:</td>
                    <td>
                        <asp:Label ID="lblLoanAmount" runat="server" Text="Loan Amount"></asp:Label>
                    </td>
                    <td>Total $ Value of all Payments:</td>
                    <td>
                        <asp:Label ID="lblTotalValuePayments" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Interest Rate:</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server"></asp:TextBox>
                    </td>
                    <td>Total $ Value of Interest Paid:</td>
                    <td>
                        <asp:Label ID="lblTotalInterestPaid" runat="server" Text="Label"></asp:Label>
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
                    <td>Total $ Value of Principal Repaid:</td>
                    <td>
                        <asp:Label ID="lblTotalPrincipal" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
