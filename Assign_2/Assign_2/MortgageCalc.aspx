<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MortgageCalc.aspx.cs" Inherits="Assign_2.MortgageCalc" %>

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
            padding-right: 25px;
            width: 100px;
            height: 100px;
        }
        .auto-style2 {
            padding-left: 25px;
            width: 150px;
            height: 150px;
        }
    </style>
    </head>
<body>

    <form id="form1" runat="server">
        <div>

            </div>

<div class="jumbotron text-center text-info">
  <h1>
      The Mortgage Calculator</h1>
  <h3>

            <img alt="" class="auto-style1" src="images/money.png" />&nbsp; Select Purchase or Refinance Below<img alt="" class="auto-style2" src="images/house.jpg" /></h3> 

     <asp:Label ID="lblDate" runat="server"  Height="24px" ></asp:Label>
     <asp:Label ID="lblTime" runat="server" Height="24px" ></asp:Label>

    <br />
    <br />

<div class="container-fluid text-success">
    
  <div class="row">

      

      <h4>Navigation Links</h4>
    <div class="col-sm-4">
              <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Purchase.aspx">Purchase Loan Calculator</asp:HyperLink>
        </p>
    </div>
    <div class="col-sm-4">
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Refinance.aspx">Refinance Loan Calculator</asp:HyperLink>
        </p>
    </div>
  </div>
</div>
</div>


</form>


</body>
</html>
