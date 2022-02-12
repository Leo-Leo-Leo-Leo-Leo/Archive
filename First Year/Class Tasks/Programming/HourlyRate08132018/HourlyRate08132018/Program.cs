using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HourlyRate08132018
{
    class Program
    {
        static double? totalWages = 0;

        static void Main(string[] args)
        {
            SetForm();
        }

        static void SetForm()
        {
            string employee = null;
            double? rate = null, hours = null;

            double iCount = 1;
            while (iCount <= 3)
            {
                Console.Write("Enter employee name: ");
                employee = Console.ReadLine();

                Console.Write("Enter hourly rate: ");
                rate = double.Parse(Console.ReadLine());

                Console.Write("Enter hours worked: ");
                hours = double.Parse(Console.ReadLine());

                GetInfo(employee, rate, hours);
                iCount++;
            }

            Console.Write("Total wages: " + totalWages.ToString());
            Console.ReadLine();
        }

        static void GetInfo(string employee, double? rate, double? hours)
        {           
            DisplayInfo(employee, SetInfo(rate, hours));
        }

        static string SetInfo(double? rate, double? hours)
        {
            string result = null;
            double? wages = null;
            wages = rate * hours;
            totalWages = totalWages + wages;
            result = wages.ToString();
            return result;
        }

        static void DisplayInfo(string employee, string wages)
        {
            Console.Write("Wages for {0}: R{1}", employee, wages.ToString());
            Console.WriteLine("\n Next...");
            Console.ReadLine();
        }
    }

    
}
