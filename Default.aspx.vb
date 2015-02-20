
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btn_calc_Click(sender As Object, e As EventArgs) Handles btn_calc.Click

        'Create variables to hold the value entered by the user
        Dim hrWage As Decimal = tb_hourWage.Text
        Dim hrWorked As Decimal = tb_hourWorked.Text

        Dim preTaxPay As Decimal
        Dim preTaxDeduction As Decimal = tb_preTax.Text
        preTaxPay = (hrWage * hrWorked) - preTaxDeduction
        Dim taxPayment As Decimal
        If preTaxPay < 500 Then taxPayment = preTaxPay * 0.18
        If preTaxPay >= 500 Then taxPayment = preTaxPay * 0.22


        Dim afterTaxDeduction As Decimal = tb_afterTax.Text
        Dim netPay As Decimal

        netPay = preTaxPay - taxPayment - afterTaxDeduction

        'Display the results in the results Label Web Control
        lbl_result.Text = "Your net pay for the week is $" & netPay.ToString("##,###.##")


    End Sub

    Protected Sub btn_clear_Click(sender As Object, e As EventArgs) Handles btn_clear.Click

        tb_afterTax.Text = ""
        tb_hourWage.Text = ""
        tb_hourWorked.Text = ""
        tb_preTax.Text = ""
        lbl_result.Text = "Please enter your information to calculate your net pay!"
    End Sub
End Class
