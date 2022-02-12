using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RentalAgency08062018
{
    class Program
    {
        static void Main(string[] args)
        {
            const double EQUIPMENTPRICE1 = 400.00, EQUIPMENTPRICE2 = 150.00, EQUIPMENTPRICE3 = 100.00,
                EQUIPMENTPRICE4 = 150.00;
            const double priceOff = 0.6;
            char repeat = 'y';//
            while (repeat.ToString().ToLower() == "y")
            {
                string numDays = "", validInput = "";
                double amountDue = 0;
                char dayLength = 'e', equipment = 'e';

                Console.WriteLine("Equipment Rental");
                Console.WriteLine("================");
                Console.WriteLine();

                Console.Write("Number of equipment(1,2,3 or 4):");
                equipment = Console.ReadLine()[0];
                if (equipment == '1' || equipment == '2' || equipment == '3' || equipment == '4')
                {
                    switch (equipment)
                    {
                        case ('1'):
                            amountDue = EQUIPMENTPRICE1;
                            break;
                        case ('2'):
                            amountDue = EQUIPMENTPRICE2;
                            break;
                        case ('3'):
                            amountDue = EQUIPMENTPRICE3;
                            break;
                        case ('4'):
                            amountDue = EQUIPMENTPRICE4;
                            break;
                    }
                }
                else
                {
                    validInput = "no";
                }

                Console.Write("Full day or half-days(f/h):");
                dayLength = Console.ReadLine()[0];
                if (dayLength.ToString().ToLower() == "f" || dayLength.ToString().ToLower() == "h")
                {
                    if (dayLength.ToString().ToLower() == "f")
                    {
                        Console.Write("Number of days?:");
                        numDays = Console.ReadLine();
                        if (int.TryParse(numDays, out int x))
                        {
                            amountDue = amountDue * x;
                        }
                        else
                        {
                            validInput = "no";
                        }
                    }
                    else
                    {
                        amountDue = amountDue * priceOff;
                    }
                }
                else
                {
                    validInput = "no";
                }

                if (validInput != "no")
                {
                    amountDue = amountDue + 100;
                    Console.WriteLine("Total amount due: " + (amountDue).ToString("c"));
                    Console.WriteLine("Press Enter to continue...");
                    Console.Read();
                }
                else
                {
                    Console.WriteLine("What you have entered is incorrect!");
                    Console.WriteLine("Retry?(y/n)...");
                    repeat = Console.ReadLine()[0];
                }
            }
        }
    }
}
