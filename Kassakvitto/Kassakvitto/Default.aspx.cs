using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                Receipt sum = new Receipt(double.Parse(Input.Text));
                double moneyOff = sum.MoneyOff;
                double discount = sum.DiscountRate;
                double total = sum.SubTotal;
                double subTotal = sum.Total;

                PlaceHolder.Visible = true;
                LiteralTotal.Text = String.Format(LiteralTotal.Text, total);
                LiteralDiscountRate.Text = String.Format(LiteralDiscountRate.Text, discount);
                LiteralMoneyOff.Text = String.Format(LiteralMoneyOff.Text, moneyOff);
                LiteralSubtotal.Text = String.Format(LiteralSubtotal.Text, subTotal);
                
            }
        }
    }
}