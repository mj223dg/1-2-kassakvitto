using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto
{
    public class Receipt
    {
        private double _subtotal;



        public double DiscountRate
        {
            get;
            private set;
        }

        public double MoneyOff
        {
            get;
            private set;
        }

        public double SubTotal
        {
            get
            { 
                return _subtotal;
            }
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException("Värdet kan ej vara noll eller mindre.");
                }
                _subtotal = value;
            }
        }

        public double Total
        {
            get;
            private set;
        }

        public void Calculate(double subtotal)
        {
            SubTotal = subtotal;

            if (subtotal <= 499 )
            {
                DiscountRate = 0;
            }

            if (subtotal <= 999 )
            {
                DiscountRate = 0.05;
            }

            if (subtotal <= 4999)
            {
                DiscountRate = 0.10;
            }

            if(subtotal >= 5000)
            {
                DiscountRate = 0.15;
            }

            MoneyOff = subtotal * DiscountRate;
            Total = subtotal - MoneyOff;
        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

    }

}