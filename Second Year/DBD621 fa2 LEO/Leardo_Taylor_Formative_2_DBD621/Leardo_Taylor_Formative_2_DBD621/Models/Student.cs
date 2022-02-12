using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Leardo_Taylor_Formative_2_DBD621.Models
{
    class Student
    {
        public int ID_Number { get; set; }
        public int Student_Number { get; set; }

        public string Name { get; set; }
        public string Surname { get; set; }
        public string Address { get; set; }
        public string Course { get; set; }
    }
}
