using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ParcelApp08062018
{
    class Program
    {
        static string destination = "", weight = "";

        static void Main(string[] args)
        {
            Setup();
            PrintBill();
        }

        static void Setup()
        {
            Console.WriteLine("PARCEL 24/7 DELIVERY SERVICE");
            Console.WriteLine("============================");
            Console.WriteLine();

            Console.WriteLine("Please enter the following");
            Console.Write("Enter parcel's destination   : ");
            destination = Console.ReadLine();

            Console.Write("Enter parcel's weight<kg>    : ");
            weight = Console.ReadLine();
            Console.WriteLine();
        }

        static string CalcCost()
        {
            string result = "";
            const double perKg1 = 11.95, perKg2 = 15.95, perKg3 = 20.95, perKg4 = 30.95;

            if (double.TryParse(weight, out double n))
            {
                if (0 < n && n < 1)
                {
                    result = (perKg1 * n).ToString();
                }
                else if (1 <= n && n < 5)
                {
                    result = (perKg2 * n).ToString();
                }
                else if (5 <= n && n < 10)
                {
                    result = (perKg3 * n).ToString();
                }
                else if (10 <= n && n <= 20)
                {
                    result = (perKg4 * n).ToString();
                }
                else
                {
                    Console.WriteLine("Parcel must be more than 0 or less or equal to 20 kgs!");
                    Console.Read();
                }
            }
            else
            {
                Console.WriteLine("Invalid input, bill cancelled!!!");
                Console.Read();
            }

            return result;
        }

        static void PrintBill()
        {
            if (CalcCost() != "")
            {
                Console.WriteLine("Bill for ------------------- : " + destination);
                Console.WriteLine("Weight --------------------- : " + weight);
                Console.WriteLine("Amount Due ----------------- : " + CalcCost());
                Console.Read();
            }
        }
    }
}
