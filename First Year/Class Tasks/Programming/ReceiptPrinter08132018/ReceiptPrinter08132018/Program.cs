using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReceiptPrinter08132018
{
    class Program
    {
        static void Main(string[] args)
        {
            Print();
        }

        static void Print()
        {
            double[] BillAmount = new double[3];
            const double Tip = 0.1;
            double TotalAmount = 0.0;
            int iCount = 1;

            while (iCount <= BillAmount.Length)
            {
                Console.Write("Enter bill amount: ");
                BillAmount[iCount-1] = double.Parse(Console.ReadLine());
                iCount++;
            }

            TotalAmount = BillAmount[0] + BillAmount[1] + BillAmount[2];

            Console.WriteLine("Total Waiter tip: R" + (TotalAmount * Tip).ToString());
            Console.WriteLine("Total Bill Amount: R" + TotalAmount.ToString());
        }
    }
}
