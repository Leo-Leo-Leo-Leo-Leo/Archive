using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarReg08032018
{
    class Automobile
    {
        public string Make{ get; }
        public string Model{ get; }
        public int Year{ get; }

        public Automobile(string Make, string Model, int Year)
        {
            switch (Make)
            {
                case (null):
                    throw new ArgumentNullException("The Make cannot be null!");
                default:
                    this.Make = Make;
                    break;
            }
            switch (String.IsNullOrWhiteSpace(Make))
            {
                case (true):
                    throw new ArgumentException("Make cannot be empty or have space characters only!");
                default:
                    break;
            }
            switch (Model)
            {
                case (null):
                    throw new ArgumentNullException("The Model cannot be null!");
                default:
                    this.Model = Model;
                    break;
            }
            switch (String.IsNullOrWhiteSpace(Model))
            {
                case (true):
                    throw new ArgumentException("Make cannot be empty or have space characters only!");
                default:
                    break;
            }
            switch (1857 < Year && Year < DateTime.Now.Year + 2)
            {
                case (false):
                    throw new ArgumentNullException("The Year cannot be null!");
                default:
                    this.Year = Year;
                    break;
            }
        }

        public override string ToString() => $"{Make} {Model} {Year}";
    }
}
