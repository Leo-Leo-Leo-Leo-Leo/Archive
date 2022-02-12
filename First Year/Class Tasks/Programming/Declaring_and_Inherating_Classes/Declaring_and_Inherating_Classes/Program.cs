using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Declaring_and_Inherating_Classes
{
    class Program
    {       //this is the main class where the
        static void Main(string[] args)
        {
            ReferenceExample referenceExample;//refrencing the struct
            referenceExample.A_Random_Name = Console.ReadLine();//giving the object a value
            referenceExample.A_Refered_Name = referenceExample.A_Random_Name;//making a second object refer to the first
            referenceExample.A_Random_Name = "";//making the first object equal nothing
            Console.WriteLine(referenceExample.A_Refered_Name);//writing the value of the second value

            string Name = Console.ReadLine();//making a string equal to what we for the class to take

            CheckingNames checkingNames = new CheckingNames(Name);
        }
    }
}
