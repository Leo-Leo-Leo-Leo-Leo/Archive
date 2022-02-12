using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2minTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter num1:   ");
            int num1 = int.Parse(Console.ReadLine());
            Console.Write("Enter num2:   ");
            int num2 = int.Parse(Console.ReadLine());
            Console.Write("Enter num1:   ");
            int num3 = int.Parse(Console.ReadLine());
            Console.Write("Enter num2:   ");
            int num4 = int.Parse(Console.ReadLine());
            Console.Write("Enter num1:   ");
            int num5 = int.Parse(Console.ReadLine());

            SumNum(num1, num2, num3, num4, num5);
            AveNum(num1, num2, num3, num4, num5);
        }

        static void AveNum(int num1, int num2, int num3, int num4, int num5)
        {
            int sum = num1+num2+num3+num4+num5;
            Console.WriteLine("Sum:"+sum.ToString());
        }
        static void SumNum(int num1, int num2, int num3, int num4, int num5)
        {
            double ave = (num1 + num2 + num3 + num4 + num5) / 5;
            Console.WriteLine("Ave:" + ave.ToString());
        }
    }
}
