<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Net Pay</h1>
        <hr />
        Hourly Wage:<asp:TextBox ID="tb_hourWage" runat="server"></asp:TextBox>
        <br />
        <br />
        Hours Worked:<asp:TextBox ID="tb_hourWorked" runat="server"></asp:TextBox>
        <br />
        <br />
        Pre-Tax Deductions:<asp:TextBox ID="tb_preTax" runat="server"></asp:TextBox>
        <br />
        <br />
        After-Tax Deductions:
        <asp:TextBox ID="tb_afterTax" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_calc" runat="server" Text="Calculate Net Pay" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_clear" runat="server" Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lbl_result" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
