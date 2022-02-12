using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarReg08032018
{
    class Program
    {
        static void Main(string[] args)
        {
            string Make, Model;
            int Year;

            Make = Console.ReadLine();
            Model = Console.ReadLine();
            Year = int.Parse(Console.ReadLine());

            Automobile a = new Automobile(Make,Model,Year);
            Console.WriteLine(a.ToString());
            Console.Read();
        }
    }
}
