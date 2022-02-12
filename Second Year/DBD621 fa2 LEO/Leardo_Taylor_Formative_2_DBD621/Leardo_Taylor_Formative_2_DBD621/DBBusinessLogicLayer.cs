using Leardo_Taylor_Formative_2_DBD621.Models;
using Leardo_Taylor_Formative_2_DBD621.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Leardo_Taylor_Formative_2_DBD621
{
    class DBBusinessLogicLayer
    {
        private DBAccessLayer db;

        public DBBusinessLogicLayer()
        {
            db = new DBAccessLayer();
        }


        //Insert
        public bool InsertStudent(Student students)
        {
            return db.InsertStudent(students);
        }

        public bool InsertParent(Parent parent)
        {
            return db.InsertParent(parent);
        }

        public bool InsertFacilitator(Facilitator facilitator)
        {
            return db.InsertFacilitator(facilitator);
        }

        public bool InsertCourse(Course Courses)
        {
            return db.InsertCourse(Courses);
        }

        public bool InsertMarks(Class_Marks Marks)
        {
            return db.InsertMarks(Marks);
        }


        //Update
        public bool UpdateStudent(Student students)
        {
            return db.UpdateStudent(students);
        }

        public bool UpdateParent(Parent parent)
        {
            return db.UpdateParent(parent);
        }

        public bool UpdateFacilitator(Facilitator facilitator)
        {
            return db.UpdateFacilitator(facilitator);
        }

        public bool UpdateCourse(Course Courses)
        {
            return db.UpdateCourse(Courses);
        }

        public bool UpdateMarks(Class_Marks Marks)
        {
            return db.UpdateMarks(Marks);
        }


        //Delete
        public bool DeleteStudent(Student students)
        {
            return db.DeleteStudent(students);
        }

        public bool DeleteParent(Parent parent)
        {
            return db.DeleteParent(parent);
        }

        public bool DeleteFacilitator(Facilitator facilitator)
        {
            return db.DeleteFacilitator(facilitator);
        }

        public bool DeleteCourse(Course Courses)
        {
            return db.DeleteCourse(Courses);
        }

        public bool DeleteMarks(Class_Marks Marks)
        {
            return db.DeleteMarks(Marks);
        }


        //Select
        public List<SelectStudents> SelectStudents()
        {
            return db.SelectStudents();
        }

        public List<SelectParents> SelectParents()
        {
            return db.SelectParents();
        }

        public List<SelectFacilitators> SelectFacilitators()
        {
            return db.SelectFacilitators();
        }

        public List<SelectCourses> SelectCourses()
        {
            return db.SelectCourses();
        }
       
        public List<SelectClassMarks> SelectClassMarks()
        {
            return db.SelectClassMarks();
        }

    }
}