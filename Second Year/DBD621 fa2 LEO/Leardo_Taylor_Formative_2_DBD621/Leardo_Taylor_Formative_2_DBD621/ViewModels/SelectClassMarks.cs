using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Leardo_Taylor_Formative_2_DBD621.ViewModels
{
    class SelectClassMarks
    {
        public int Student_No { get; set; }

        public string Course { get; set; }
        public string Student { get; set; }

        public int Semester_1_Test_Mark { get; set; }
        public int Semester_2_Test_Mark { get; set; }
        public int Semester_1_Average { get; set; }
        public int Semester_2_Average { get; set; }
        public int Semester_1_Mark_1 { get; set; }
        public int Semester_1_Mark_2 { get; set; }
        public int Semester_1_Mark_3 { get; set; }
        public int Semester_2_Mark_1 { get; set; }
        public int Semester_2_Mark_2 { get; set; }
        public int Semester_2_Mark_3 { get; set; }
    }
}
