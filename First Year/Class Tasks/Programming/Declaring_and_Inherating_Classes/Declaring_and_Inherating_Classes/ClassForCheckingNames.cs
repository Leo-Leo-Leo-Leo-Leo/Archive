using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Declaring_and_Inherating_Classes
{
    public class CheckingNames : MessagesToUser, IValidation
    {
        private string Name; // here is where we set our name we got from the constructor

        public CheckingNames()
        {
            //we declare a default constructor because we already declared another on so VS will not provide us with a default one.
        }

        public CheckingNames(string Name)
        {
            SetName = Name;//this is the process of setting a variable in a constuctor
            if (IsThereA_Name() && NameIs8CharLong() && NameIsLowercase())
            {
                if (IsThereA_Name())//these if statements print the results of the program
                {
                    Console.WriteLine();
                    Console.WriteLine(base.PassName);
                }
                if (NameIs8CharLong())
                {
                    Console.WriteLine(base.PassLength);
                }
                if (NameIsLowercase())
                {
                    Console.WriteLine(base.PassLower);
                }
            }
            else
            {
                Console.WriteLine("User has enter name incorrectly");
            }

        }

        public string SetName//property declared for class to set the name we enter
        {
            get {
                return Name;
            }
            set {
                Name = value;
            }
        }

        public bool IsThereA_Name()//this method checks if there is a name entered
        {
            bool result = false;

            if (Name != "")
            {
                result = true;
            }

            return result;
        }

        public bool NameIs8CharLong()//this method checks the length of the method name
        {
            bool result = false;

            if (Name.Length == 8)
            {
                result = true;
            }

            return result;
        }

        public bool NameIsLowercase()// this method checks if the name is all lower cased
        {
            bool result = false;

            if (Name == Name.ToLower())
            {
                result = true;
            }

            return result;
        }

        public override string DoNothing()// this method lies
        {
            return "I did Nothing!!!";
        }
   
    }
}
