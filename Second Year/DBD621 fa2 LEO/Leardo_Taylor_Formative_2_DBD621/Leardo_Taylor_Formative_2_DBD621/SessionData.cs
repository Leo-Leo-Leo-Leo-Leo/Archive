using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Leardo_Taylor_Formative_2_DBD621
{
    public static class SessionData
    {
        static SessionData()
        {
            campus.Add("Auckland_Park");
            campus.Add("Bloemfontein");
            campus.Add("Boksburg");
            campus.Add("Cape_Town");
            campus.Add("Durban");
            campus.Add("Nelspruit");
            campus.Add("Polokwane");
            campus.Add("Potchefstroom");
            campus.Add("Port_Elizabeth");
            campus.Add("Pretoria");
            campus.Add("Randburg");
            campus.Add("Sandton");
            campus.Add("Roodepoort");
            campus.Add("Stellenbosch");
            campus.Add("Vereeniging");

            telephone.Add("041-161-1110");
            telephone.Add("041-161-0511");
            telephone.Add("041-161-9712");
            telephone.Add("041-161-1113");
            telephone.Add("041-161-5714");
            telephone.Add("041-161-1115");
            telephone.Add("041-161-4316");
            telephone.Add("041-161-6517");
            telephone.Add("041-161-5418");
            telephone.Add("041-161-3419");
            telephone.Add("041-161-3221");
        }

        public static List<string> campus = new List<string>();

        public static List<string> telephone = new List<string>();

        public static string Privilage { get; set; }

        public static string CurrentCampus { get; set; }

        public static void SetCampus(string Camups)
        {
            CurrentCampus = Camups;
        }

        public static string GetCampus()
        {
            return CurrentCampus;
        }
    }
}
