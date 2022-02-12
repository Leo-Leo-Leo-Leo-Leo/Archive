using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductInfo08032018
{
    class Program
    {
        static void Main(string[] args)
        {
            string redo = "y";
            while (redo.ToLower() == "y")
            {
                string Desc = "", Quan = "", Weig = "", Pric = "", AirF = "";

                Console.Write("Enter product description.: ");
                Desc = Console.ReadLine();

                Console.Write("Enter quantity.: ");
                Quan = Console.ReadLine();

                Console.Write("Enter weight(in kgs).: ");
                Weig = Console.ReadLine();

                Console.Write("Enter price per item.: ");
                Pric = Console.ReadLine();

                Console.Write("Air freight? (y/n): ");
                AirF = Console.ReadLine();
                Console.WriteLine();

                CalculateCost cost = new CalculateCost(Desc, Quan, Weig, Pric, AirF);
                Console.WriteLine(cost.PrintQuota());

                Console.Write("Redo? (y/n): ");
                redo = Console.ReadLine();
                Console.WriteLine();
                
            }
        }
    }
}
