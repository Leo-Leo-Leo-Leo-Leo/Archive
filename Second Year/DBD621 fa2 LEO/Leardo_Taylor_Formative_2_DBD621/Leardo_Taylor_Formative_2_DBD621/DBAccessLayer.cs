using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Leardo_Taylor_Formative_2_DBD621.Models;
using Leardo_Taylor_Formative_2_DBD621.ViewModels;

namespace Leardo_Taylor_Formative_2_DBD621
{
    class DBAccessLayer
    {   
        //Selects
        public List<SelectStudents> SelectStudents()
        {
            List<SelectStudents> list = new List<SelectStudents>();
            using (DataTable table = DBHelper.Select(SessionData.CurrentCampus + ".SelectStudents", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        SelectStudents student = new SelectStudents
                        {
                            Student_No = Convert.ToInt32(row["Student No"]),
                            ID_No = Convert.ToInt32(row["ID No"]),
                            FullName = row["FullName"].ToString(),
                            Residence = row["Residence"].ToString(),
                            Course = row["Course"].ToString()
                        };

                        list.Add(student);
                    }
                }
            }
            return list;
        }

        public List<SelectParents> SelectParents()
        {
            List<SelectParents> list = new List<SelectParents>();
            using (DataTable table = DBHelper.Select(SessionData.CurrentCampus + ".SelectParents", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        SelectParents parent = new SelectParents
                        {
                            ID_No = Convert.ToInt32(row["ID No"]),
                            FullName = row["FullName"].ToString(),
                            Residence = row["Residence"].ToString(),
                            StudFullName = row["Student Fullname"].ToString()
                        };

                        list.Add(parent);
                    }
                }
            }
            return list;
        }

        public List<SelectFacilitators> SelectFacilitators()
        {
            List<SelectFacilitators> list = new List<SelectFacilitators>();
            using (DataTable table = DBHelper.Select(SessionData.CurrentCampus + ".SelectFacilitators", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        SelectFacilitators facilitator = new SelectFacilitators
                        {
                            ID_No = Convert.ToInt32(row["ID No"]),
                            FullName = row["FullName"].ToString(),
                            Residence = row["Residence"].ToString(),
                            Monthly_Salary = Convert.ToInt32(row["Monthly Salary"])
                        };

                        list.Add(facilitator);
                    }
                }
            }
            return list;
        }

        public List<SelectCourses> SelectCourses()
        {
            List<SelectCourses> list = new List<SelectCourses>();
            using (DataTable table = DBHelper.Select(SessionData.CurrentCampus + ".SelectCourses", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        SelectCourses course = new SelectCourses
                        {
                            Course = row["Course"].ToString(),
                            Details = row["Details"].ToString(),
                            Facilitator = row["Facilitator"].ToString()
                        };

                        list.Add(course);
                    }
                }
            }
            return list;
        }

        public List<SelectClassMarks> SelectClassMarks()
        {
            List<SelectClassMarks> list = new List<SelectClassMarks>();
            using (DataTable table = DBHelper.Select(SessionData.CurrentCampus + ".SelectMarks", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        SelectClassMarks marks = new SelectClassMarks
                        {
                            Student_No = Convert.ToInt32(row["Student No"]),

                            Course = row["Course"].ToString(),
                            Student = row["Student"].ToString(),

                            Semester_1_Test_Mark = Convert.ToInt32(row["Semester 1 Test Mark"]),
                            Semester_2_Test_Mark = Convert.ToInt32(row["Semester 2 Test Mark"]),
                            Semester_1_Average = Convert.ToInt32(row["Semester 1 Average"]),
                            Semester_2_Average = Convert.ToInt32(row["Semester 2 Average"]),
                            Semester_1_Mark_1 = Convert.ToInt32(row["Semester 1 Mark 1"]),
                            Semester_1_Mark_2 = Convert.ToInt32(row["Semester 1 Mark 2"]),
                            Semester_1_Mark_3 = Convert.ToInt32(row["Semester 1 Mark 3"]),
                            Semester_2_Mark_1 = Convert.ToInt32(row["Semester 2 Mark 1"]),
                            Semester_2_Mark_2 = Convert.ToInt32(row["Semester 2 Mark 2"]),
                            Semester_2_Mark_3 = Convert.ToInt32(row["Semester 2 Mark 3"])
                        };

                        list.Add(marks);
                    }
                }
            }
            return list;
        }


        //Inserts
        public bool InsertStudent(Student students)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var student in students.GetType().GetProperties())
            {
                if (student.GetValue(students) != null)
                {
                    parameters.Add(new SqlParameter("@" + student.Name.ToString(), student.GetValue(students)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspInsertStudent", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool InsertParent(Parent parents)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var parent in parents.GetType().GetProperties())
            {
                if (parent.GetValue(parents) != null)
                {
                    parameters.Add(new SqlParameter("@" + parent.Name.ToString(), parent.GetValue(parents)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspInsertParent", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool InsertFacilitator(Facilitator facilitators)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var facilitator in facilitators.GetType().GetProperties())
            {
                if (facilitator.GetValue(facilitators) != null)
                {
                    parameters.Add(new SqlParameter("@" + facilitator.Name.ToString(), facilitator.GetValue(facilitators)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspInsertFacilitator", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool InsertCourse(Course courses)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var course in courses.GetType().GetProperties())
            {
                if (course.GetValue(courses) != null)
                {
                    parameters.Add(new SqlParameter("@" + course.Name.ToString(), course.GetValue(courses)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspInsertCourse", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool InsertMarks(Class_Marks marks)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var mark in marks.GetType().GetProperties())
            {
                if (mark.GetValue(marks) != null)
                {
                    parameters.Add(new SqlParameter("@" + mark.Name.ToString(), mark.GetValue(marks)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspInsertMarks", CommandType.StoredProcedure, parameters.ToArray());
        }



        //Update
        public bool UpdateStudent(Student students)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var student in students.GetType().GetProperties())
            {
                if (student.GetValue(students) != null)
                {
                    parameters.Add(new SqlParameter("@" + student.Name.ToString(), student.GetValue(students)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspUpdateStudent", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool UpdateParent(Parent parents)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var parent in parents.GetType().GetProperties())
            {
                if (parent.GetValue(parents) != null)
                {
                    parameters.Add(new SqlParameter("@" + parent.Name.ToString(), parent.GetValue(parents)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspUpdateParent", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool UpdateFacilitator(Facilitator facilitators)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var facilitator in facilitators.GetType().GetProperties())
            {
                if (facilitator.GetValue(facilitators) != null)
                {
                    parameters.Add(new SqlParameter("@" + facilitator.Name.ToString(), facilitator.GetValue(facilitators)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspUpdateFacilitator", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool UpdateCourse(Course courses)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var course in courses.GetType().GetProperties())
            {
                if (course.GetValue(courses) != null)
                {
                    parameters.Add(new SqlParameter("@" + course.Name.ToString(), course.GetValue(courses)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspUpdateCourse", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool UpdateMarks(Class_Marks marks)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var mark in marks.GetType().GetProperties())
            {
                if (mark.GetValue(marks) != null)
                {
                    parameters.Add(new SqlParameter("@" + mark.Name.ToString(), mark.GetValue(marks)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspUpdateMarks", CommandType.StoredProcedure, parameters.ToArray());
        }



        //Deletes
        public bool DeleteStudent(Student students)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var student in students.GetType().GetProperties())
            {
                if (student.GetValue(students) != null)
                {
                    parameters.Add(new SqlParameter("@" + student.Name.ToString(), student.GetValue(students)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspDeleteStudent", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool DeleteParent(Parent parents)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var parent in parents.GetType().GetProperties())
            {
                if (parent.GetValue(parents) != null)
                {
                    parameters.Add(new SqlParameter("@" + parent.Name.ToString(), parent.GetValue(parents)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspDeleteParent", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool DeleteFacilitator(Facilitator facilitators)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var facilitator in facilitators.GetType().GetProperties())
            {
                if (facilitator.GetValue(facilitators) != null)
                {
                    parameters.Add(new SqlParameter("@" + facilitator.Name.ToString(), facilitator.GetValue(facilitators)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspDeleteFacilitator", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool DeleteCourse(Course courses)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var course in courses.GetType().GetProperties())
            {
                if (course.GetValue(courses) != null)
                {
                    parameters.Add(new SqlParameter("@" + course.Name.ToString(), course.GetValue(courses)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspDeleteCourse", CommandType.StoredProcedure, parameters.ToArray());
        }

        public bool DeleteMarks(Class_Marks marks)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var mark in marks.GetType().GetProperties())
            {
                if (mark.GetValue(marks) != null)
                {
                    parameters.Add(new SqlParameter("@" + mark.Name.ToString(), mark.GetValue(marks)));
                }
            }
            return DBHelper.NonQuery(SessionData.CurrentCampus + ".uspDeleteMarks", CommandType.StoredProcedure, parameters.ToArray());
        }
    }
}