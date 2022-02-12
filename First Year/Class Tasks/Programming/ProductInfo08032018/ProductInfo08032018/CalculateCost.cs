using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductInfo08032018
{
    class CalculateCost
    {
        private string Description;
        private int Quantity;
        private double Price;
        private double Weight;
        private string AirFreight;

        public CalculateCost(string Description, string Quantity, string Weight, string Price, string AirFreight)
        {
            this.Description = Description;
            this.Quantity = int.Parse(Quantity);
            this.Price = double.Parse(Price);
            this.Weight = double.Parse(Weight);
            this.AirFreight = AirFreight;
        }

        string SetDescription
        {
            get {
                return Description;
            }
            set {
                Description = value;
            }
        }

        int SetQuantity
        {
            get
            {
                return Quantity;
            }
            set
            {
                Quantity = value;
            }
        }

        double SetPrice
        {
            get
            {
                return Price;
            }
            set
            {
                Price = value;
            }
        }

        double SetWeight
        {
            get
            {
                return Weight;
            }
            set
            {
                Weight = value;
            }
        }

        string SetAirFreight
        {
            get
            {
                return AirFreight;
            }
            set
            {
                AirFreight = value;
            }
        }

        private bool WeightCategory()
        {
            bool result = false;
            //is the weight less than 100
            if ((Weight * Quantity) <= 100)
            {
                result = true;
            }
            return result;
        }

        private bool UseAirFreight()
        {
            bool result = false;

            if (AirFreight.ToLower() == "y")
            {
                result = true;
            }
            return result;
        }

        private double CalculateTotalCost()
        {
            double result = 00.00;

            if (UseAirFreight())
            {
                if (WeightCategory())
                {
                    result = Quantity * Price + 25;
                }
                else
                {
                    result = Quantity * Price + 50;
                }
            }
            else
            {
                result = Quantity * Price;
            }

            return result;
        }

        public string PrintQuota()
        {
            return"The total due for " + Quantity.ToString() + " " + Description + " is R" + CalculateTotalCost().ToString("c");
        }
    }
}
