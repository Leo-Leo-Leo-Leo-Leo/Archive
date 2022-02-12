using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Leardo_Taylor_Formative_2_DBD621.Models;

namespace Leardo_Taylor_Formative_2_DBD621
{
    /// <summary>
    /// Interaction logic for MasterPage.xaml
    /// </summary>
    public partial class MasterPage : Window
    {
        public MasterPage()
        {
            InitializeComponent();
            SetPage();
            SelectStudents();
            ClearEditor();
        }

        DBBusinessLogicLayer businessLogicLayer = new DBBusinessLogicLayer();

        private void btnStudents_Click(object sender, RoutedEventArgs e)
        {
            SelectStudents();
        }

        private void btnParents_Click(object sender, RoutedEventArgs e)
        {
            SelectParents();
        }

        private void btnFacilitators_Click(object sender, RoutedEventArgs e)
        {
            SelectFacilitators();
        }

        private void btnCourses_Click(object sender, RoutedEventArgs e)
        {
            SelectCourses();
        }

        private void btnMarks_Click(object sender, RoutedEventArgs e)
        {
            SelectMarks();
        }

        private void btnInsert_Click(object sender, RoutedEventArgs e)
        {
            DMLmode = "Insert";
            SetPage();

        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            DMLmode = "Update";
            SetPage();

        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            DMLmode = "Delete";
            SetPage();
        }

        private void btnApply_Click(object sender, RoutedEventArgs e)
        {
            Apply();
        }

        private void cmb1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cmb1.SelectedIndex != -1)
            {
                if (DMLmode == "Update" && CurrentTable == "Students")
                {
                    txb2.Text = businessLogicLayer.SelectStudents()[cmb1.SelectedIndex].Student_No.ToString();

                    txb5.Text = businessLogicLayer.SelectStudents()[cmb1.SelectedIndex].Residence.ToString();

                    cmb6.SelectedIndex = cmb1.SelectedIndex;
                }
                else if (DMLmode == "Update" && CurrentTable == "Parents")
                {
                    txb4.Text = businessLogicLayer.SelectStudents()[cmb1.SelectedIndex].Residence.ToString();
                    cmb5.SelectedIndex = cmb1.SelectedIndex;
                }
                else if (DMLmode == "Update" && CurrentTable == "Courses")
                {
                    txb2.Text = businessLogicLayer.SelectCourses()[cmb1.SelectedIndex].Details;
                }
                else if (DMLmode == "Update" && CurrentTable == "Marks")
                {

                }
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
        }
    }

    public partial class MasterPage
    {
        private string DMLmode = null;
        private string CurrentTable = "Student";

        private void Apply()
        {
            switch (CurrentTable)
            {
                case "Students":
                    ExecuteStudent();
                    SelectStudents();
                    break;
                case "Parents":
                    ExecuteParent();
                    SelectParents();
                    break;
                case "Facilitators":
                    ExecuteFacilitator();
                    SelectFacilitators();
                    break;
                case "Courses":
                    ExecuteCourse();
                    SelectCourses();
                    break;
                case "Marks":
                    ExecuteMarks();
                    SelectMarks();
                    break;
                default:
                    SetPage();
                    break;
            }
        }



        private void SelectStudents()
        {
            CurrentTable = "Students";
            SetPage();
            
            dgvMain.ItemsSource = businessLogicLayer.SelectStudents();
        }

        private void SelectParents()
        {
            CurrentTable = "Parents";
            SetPage();
            
            dgvMain.ItemsSource = businessLogicLayer.SelectParents();
        }

        private void SelectFacilitators()
        {
            CurrentTable = "Facilitators";
            SetPage();
            
            dgvMain.ItemsSource = businessLogicLayer.SelectFacilitators();
        }

        private void SelectCourses()
        {
            CurrentTable = "Courses";
            SetPage();
            
            dgvMain.ItemsSource = businessLogicLayer.SelectCourses();
        }

        private void SelectMarks()
        {
            CurrentTable = "Marks";
            SetPage();
            
            dgvMain.ItemsSource = businessLogicLayer.SelectClassMarks();
        }



        private void ExecuteStudent()
        {
            Student student = new Student();

            student.Student_Number = int.Parse(txb1.Text);
            student.ID_Number = int.Parse(txb2.Text);
            student.Name = txb3.Text;
            student.Surname = txb4.Text;
            student.Address = txb5.Text;
            student.Course = cmb6.Text;



            switch (DMLmode)
            {
                case "Insert":
                    if (businessLogicLayer.InsertStudent(student))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Update":
                    if (businessLogicLayer.UpdateStudent(student))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Delete":
                    if (businessLogicLayer.DeleteStudent(student))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                default:
                    break;
            }
        }

        private void ExecuteParent()
        {
            Parent parent = new Parent();

            parent.ID_Number = int.Parse(txb1.Text);
            parent.Name = txb2.Text;
            parent.Surname = txb3.Text;
            parent.Address = txb4.Text;



            switch (DMLmode)
            {
                case "Insert":
                    if (businessLogicLayer.InsertParent(parent))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Update":
                    if (businessLogicLayer.UpdateParent(parent))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Delete":
                    if (businessLogicLayer.DeleteParent(parent))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                default:
                    break;
            }
        }

        private void ExecuteFacilitator()
        {
            Facilitator facilitator = new Facilitator();

            facilitator.ID_Number = int.Parse(txb1.Text);
            facilitator.Salary = int.Parse(txb2.Text);
            facilitator.Name = txb3.Text;
            facilitator.Surname = txb4.Text;
            facilitator.Address = txb5.Text;



            switch (DMLmode)
            {
                case "Insert":
                    if (businessLogicLayer.InsertFacilitator(facilitator))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Update":
                    if (businessLogicLayer.UpdateFacilitator(facilitator))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Delete":
                    if (businessLogicLayer.DeleteFacilitator(facilitator))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                default:
                    break;
            }
        }

        private void ExecuteCourse()
        {
            Course course = new Course();

            if (DMLmode == "Insert")
            {
                course.Course_Name = txb1.Text;
            }
            else
            {
                course.Course_Name = cmb1.Text;
            }
            
            if (DMLmode != "Delete")
            {
                course.Description = txb2.Text;
                course.Facilitator = cmb3.Text;
            }

            switch (DMLmode)
            {
                case "Insert":
                    if (businessLogicLayer.InsertCourse(course))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Update":
                    if (businessLogicLayer.UpdateCourse(course))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Delete":
                    if (businessLogicLayer.DeleteCourse(course))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                default:
                    break;
            }
        }

        private void ExecuteMarks()
        {
            Class_Marks marks = new Class_Marks();



            switch (DMLmode)
            {
                case "Insert":
                    if (businessLogicLayer.InsertMarks(marks))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Update":
                    if (businessLogicLayer.UpdateMarks(marks))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                case "Delete":
                    if (businessLogicLayer.DeleteMarks(marks))
                    {
                        DisplaySuccess();
                    }
                    else
                    {
                        DisplayFail();
                    }
                    break;
                default:
                    break;
            }
        }



        private void DisplayFail()
        {
            txtStatus.Text = "Fail";
            txtStatus.Background = Brushes.Red;
        }

        private void DisplaySuccess()
        {
            txtStatus.Text = "Succeed";
            txtStatus.Background = Brushes.Green;
        }

        private void SetPage()
        {
            txtTell.Text = "Campus Number: " + SessionData.telephone[SessionData.campus.IndexOf(SessionData.GetCampus())];

            SetWindowTitle();
            ClearEditor();
            SetMode();
            SetEditor();
        }

        private void SetWindowTitle()
        {
            
            Window.Title = "Database Editor: " + SessionData.GetCampus();
        }

        private void SetEditor()
        {
            if (SessionData.Privilage == "Admin")
            {
                if (DMLmode != null)
                {
                    switch (CurrentTable)
                    {
                        case "Students":

                            txt1.Text = "Student No";

                            txt1.Visibility = Visibility.Visible;

                            if (DMLmode != "Delete")
                            {
                                txt2.Text = "ID No";
                                txt3.Text = "Name";
                                txt4.Text = "Surname";
                                txt5.Text = "Address";
                                txt6.Text = "Course";

                                txt2.Visibility = Visibility.Visible;
                                txt3.Visibility = Visibility.Visible;
                                txt4.Visibility = Visibility.Visible;
                                txt5.Visibility = Visibility.Visible;
                                txt6.Visibility = Visibility.Visible;
                            }

                            switch (DMLmode)
                            {
                                case "Insert":
                                    txb1.Visibility = Visibility.Visible;
                                    txb2.Visibility = Visibility.Visible;
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;
                                    txb5.Visibility = Visibility.Visible;

                                    cmb6.Visibility = Visibility.Visible;
                                    cmb6.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb6.DisplayMemberPath = "Course";
                                    cmb6.SelectedValuePath = "Course";
                                    cmb6.SelectedIndex = 0;

                                    break;
                                case "Update":

                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb1.DisplayMemberPath = "Student_No";
                                    cmb1.SelectedValuePath = "Student_No";
                                    cmb1.SelectedIndex = 0;

                                    txb2.Visibility = Visibility.Visible;
                                    txb2.Text = businessLogicLayer.SelectStudents()[0].Student_No.ToString();
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;
                                    txb5.Visibility = Visibility.Visible;
                                    txb5.Text = businessLogicLayer.SelectStudents()[0].Residence.ToString();


                                    cmb6.Visibility = Visibility.Visible;
                                    cmb6.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb6.DisplayMemberPath = "Course";
                                    cmb6.SelectedValuePath = "Course";
                                    cmb6.SelectedIndex = 0;

                                    break;
                                case "Delete":
                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb1.DisplayMemberPath = "FullName";
                                    cmb1.SelectedValuePath = "Student_No";
                                    cmb1.SelectedIndex = 0;
                                    break;
                                default:
                                    break;
                            }
                            break;
                        case "Parents":
                            txt1.Text = "ID No";

                            txt1.Visibility = Visibility.Visible;

                            if (DMLmode != "Delete")
                            {
                                txt2.Text = "Name";
                                txt3.Text = "Surname";
                                txt4.Text = "Address";
                                txt5.Text = "Student";

                                txt2.Visibility = Visibility.Visible;
                                txt3.Visibility = Visibility.Visible;
                                txt4.Visibility = Visibility.Visible;
                                txt5.Visibility = Visibility.Visible;
                            }

                            switch (DMLmode)
                            {
                                case "Insert":
                                    txb1.Visibility = Visibility.Visible;
                                    txb2.Visibility = Visibility.Visible;
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;

                                    cmb5.Visibility = Visibility.Visible;
                                    cmb5.ItemsSource = businessLogicLayer.SelectParents();
                                    cmb5.DisplayMemberPath = "StudFullName";
                                    cmb5.SelectedValuePath = "StudFullName";
                                    cmb5.SelectedIndex = 0;

                                    break;
                                case "Update":

                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectParents();
                                    cmb1.DisplayMemberPath = "ID_No";
                                    cmb1.SelectedValuePath = "ID_No";
                                    cmb1.SelectedIndex = 0;

                                    txb2.Visibility = Visibility.Visible;
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;
                                    txb4.Text = businessLogicLayer.SelectParents()[0].Residence.ToString();

                                    cmb5.Visibility = Visibility.Visible;
                                    cmb5.ItemsSource = businessLogicLayer.SelectParents();
                                    cmb5.DisplayMemberPath = "StudFullName";
                                    cmb5.SelectedValuePath = "StudFullName";
                                    cmb5.SelectedIndex = 0;

                                    break;
                                case "Delete":
                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectParents();
                                    cmb1.DisplayMemberPath = "ID_No";
                                    cmb1.SelectedValuePath = "ID_No";
                                    cmb1.SelectedIndex = 0;
                                    break;
                                default:
                                    break;
                            }
                            break;
                        case "Facilitators":

                            txt1.Text = "ID No";

                            txt1.Visibility = Visibility.Visible;

                            if (DMLmode != "Delete")
                            {
                                txt2.Text = "Name";
                                txt3.Text = "Surname";
                                txt4.Text = "Address";
                                txt5.Text = "Salary";

                                txt2.Visibility = Visibility.Visible;
                                txt3.Visibility = Visibility.Visible;
                                txt4.Visibility = Visibility.Visible;
                                txt5.Visibility = Visibility.Visible;
                            }

                            switch (DMLmode)
                            {
                                case "Insert":
                                    txb1.Visibility = Visibility.Visible;
                                    txb2.Visibility = Visibility.Visible;
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;
                                    txb5.Visibility = Visibility.Visible;

                                    break;
                                case "Update":
 
                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectFacilitators();
                                    cmb1.DisplayMemberPath = "ID_No";
                                    cmb1.SelectedValuePath = "ID_No";
                                    cmb1.SelectedIndex = 0;

                                    txb2.Visibility = Visibility.Visible;
                                    txb3.Visibility = Visibility.Visible;

                                    txb4.Visibility = Visibility.Visible;
                                    txb4.Text = businessLogicLayer.SelectFacilitators()[0].Residence.ToString();
                                    txb5.Visibility = Visibility.Visible;
                                    txb5.Text = businessLogicLayer.SelectFacilitators()[0].Monthly_Salary.ToString();

                                    break;
                                case "Delete":
                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectParents();
                                    cmb1.DisplayMemberPath = "ID_No";
                                    cmb1.SelectedValuePath = "ID_No";
                                    cmb1.SelectedIndex = 0;
                                    break;
                                default:
                                    break;
                            }
                            break;
                        case "Courses":

                            txt1.Text = "Name";

                            txt1.Visibility = Visibility.Visible;

                            if (DMLmode != "Delete")
                            {
                                txt2.Text = "Description";
                                txt3.Text = "Facilitator";

                                txt2.Visibility = Visibility.Visible;
                                txt3.Visibility = Visibility.Visible;
                            }

                            switch (DMLmode)
                            {
                                case "Insert":
                                    txb1.Visibility = Visibility.Visible;

                                    txb2.Visibility = Visibility.Visible;

                                    cmb3.Visibility = Visibility.Visible;
                                    cmb3.ItemsSource = businessLogicLayer.SelectCourses();
                                    cmb3.DisplayMemberPath = "Facilitator";
                                    cmb3.SelectedValuePath = "Facilitator";
                                    cmb3.SelectedIndex = 0;

                                    break;
                                case "Update":

                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectCourses();
                                    cmb1.DisplayMemberPath = "Course";
                                    cmb1.SelectedValuePath = "Course";
                                    cmb1.SelectedIndex = 0;

                                    txb2.Visibility = Visibility.Visible;
                                    txb2.Text = businessLogicLayer.SelectCourses()[cmb1.SelectedIndex].Details;

                                    cmb3.Visibility = Visibility.Visible;
                                    cmb3.ItemsSource = businessLogicLayer.SelectCourses();
                                    cmb3.DisplayMemberPath = "Facilitator";
                                    cmb3.SelectedValuePath = "Facilitator";
                                    cmb3.SelectedIndex = 0;

                                    break;
                                case "Delete":
                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectCourses();
                                    cmb1.DisplayMemberPath = "Course";
                                    cmb1.SelectedValuePath = "Course";
                                    cmb1.SelectedIndex = 0;
                                    break;
                                default:
                                    break;
                            }

                            break;
                        case "Marks":
                            txt1.Text = "Student No";

                            txt1.Visibility = Visibility.Visible;

                            if (DMLmode != "Delete")
                            {
                                txt2.Text = "ID No";
                                txt3.Text = "Name";
                                txt4.Text = "Surname";
                                txt5.Text = "Address";
                                txt6.Text = "Course";

                                txt2.Visibility = Visibility.Visible;
                                txt3.Visibility = Visibility.Visible;
                                txt4.Visibility = Visibility.Visible;
                                txt5.Visibility = Visibility.Visible;
                                txt6.Visibility = Visibility.Visible;
                            }

                            switch (DMLmode)
                            {
                                case "Insert":
                                    txb1.Visibility = Visibility.Visible;
                                    txb2.Visibility = Visibility.Visible;
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;
                                    txb5.Visibility = Visibility.Visible;

                                    cmb6.Visibility = Visibility.Visible;
                                    cmb6.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb6.DisplayMemberPath = "Course";
                                    cmb6.SelectedValuePath = "Course";
                                    cmb6.SelectedIndex = 0;

                                    break;
                                case "Update":

                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb1.DisplayMemberPath = "Student_No";
                                    cmb1.SelectedValuePath = "Student_No";
                                    cmb1.SelectedIndex = 0;

                                    txb2.Visibility = Visibility.Visible;
                                    txb2.Text = businessLogicLayer.SelectStudents()[0].Student_No.ToString();
                                    txb3.Visibility = Visibility.Visible;
                                    txb4.Visibility = Visibility.Visible;
                                    txb5.Visibility = Visibility.Visible;
                                    txb5.Text = businessLogicLayer.SelectStudents()[0].Residence.ToString();


                                    cmb6.Visibility = Visibility.Visible;
                                    cmb6.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb6.DisplayMemberPath = "Course";
                                    cmb6.SelectedValuePath = "Course";
                                    cmb6.SelectedIndex = 0;

                                    break;
                                case "Delete":
                                    cmb1.Visibility = Visibility.Visible;
                                    cmb1.ItemsSource = businessLogicLayer.SelectStudents();
                                    cmb1.DisplayMemberPath = "FullName";
                                    cmb1.SelectedValuePath = "Student_No";
                                    cmb1.SelectedIndex = 0;
                                    break;
                                default:
                                    break;
                            }
                            break;
                        default:
                            ClearEditor();
                            break;
                    }
                }
                else
                {
                    ClearEditor();
                }
            }
            else
            {
                mnuEditor.Visibility = Visibility.Collapsed;
                btnApply.Visibility = Visibility.Collapsed;
            }
            
        }

        private void SetMode()
        {

            if(DMLmode != null)
            {
                txtStatus.Text = DMLmode + " Mode Selected: " + CurrentTable;
                txtStatus.Background = Brushes.Blue;
            }
            else
            {
                txtStatus.Text = "Pending User Action";
                txtStatus.Background = Brushes.Yellow;
            }
            
        }

        private void ClearEditor()
        {
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
            txt6.Text = "";

            txb1.Text = "";
            txb2.Text = "";
            txb3.Text = "";
            txb4.Text = "";
            txb5.Text = "";
            txb6.Text = "";

            txt1.Visibility = Visibility.Collapsed;
            txt2.Visibility = Visibility.Collapsed;
            txt3.Visibility = Visibility.Collapsed;
            txt4.Visibility = Visibility.Collapsed;
            txt5.Visibility = Visibility.Collapsed;
            txt6.Visibility = Visibility.Collapsed;

            txb1.Visibility = Visibility.Collapsed;
            txb2.Visibility = Visibility.Collapsed;
            txb3.Visibility = Visibility.Collapsed;
            txb4.Visibility = Visibility.Collapsed;
            txb5.Visibility = Visibility.Collapsed;
            txb6.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Collapsed;
            cmb1.SelectedIndex = -1;
            cmb3.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;

        }
    }
}
