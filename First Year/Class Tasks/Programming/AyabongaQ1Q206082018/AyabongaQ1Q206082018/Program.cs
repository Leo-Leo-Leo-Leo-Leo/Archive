using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AyabongaQ1Q206082018
{
    class Program
    {
        static void Main(string[] args)
        { 
            GetInput();
        }

        static void GetInput()   //Question 1 works!!!
        {
            int count = 1, num1, num2;
            while (count <= 3)
            {
                Console.Write("Enter number 1: ");
                num1 = int.Parse(Console.ReadLine());

                Console.Write("Enter number 2: ");
                num2 = int.Parse(Console.ReadLine());

                SetVars(num1, num2);

                count++;
            }
        }

        static void SetVars(int num1, int num2)
        {
            int remainder;
            double quotient;

            remainder = num1 % num2;
            quotient = num1 / num2;

            Print(num1, num2, quotient, remainder);
        }

        static void Print(int num1, int num2, double quotient, int remainder)
        {
            string text = "Number1: " + num1.ToString() + "\t Number2: " + num2.ToString() + "\t Quotient: "
                + Math.Truncate(quotient).ToString() + "\t Remainder:" + remainder.ToString();
            Console.WriteLine(text);
        }

        //static void GetInput()   //Question 2 works!!!
        //{
        //    int count = 1, score = 0;
        //    while (count <= 5)
        //    {
        //        Console.Write("Enter test score: ");
        //        score = int.Parse(Console.ReadLine());
        //        count++;

        //        Print(score);
        //    }
        //}

        //static void Print(int score)
        //{
        //    if (75 <= score && score <= 100)
        //    {
        //        Console.WriteLine("Test Score: " + score.ToString() + "\t Distinction");
        //        Console.WriteLine();
        //    }
        //    else if (50 <= score && score < 75)
        //    {
        //        Console.WriteLine("Test Score: " + score.ToString() + "\t Pass");
        //        Console.WriteLine();
        //    }
        //    else
        //    {
        //        Console.WriteLine("Test Score: " + score.ToString() + "\t Fail \t Please attend IS sessions");
        //        Console.WriteLine();
        //        Console.Read();
        //    }
        //}
    }
}
