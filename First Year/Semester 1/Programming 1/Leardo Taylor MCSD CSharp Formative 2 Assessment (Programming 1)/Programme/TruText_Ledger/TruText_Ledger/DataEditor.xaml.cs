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
using System.Data;
namespace TruText_Ledger
{
    /// <summary>
    /// Interaction logic for DataManipulationViewer.xaml
    /// </summary>
    public partial class DataManipulationViewer : Window
    {
        public DataManipulationViewer()
        {
            InitializeComponent();            
            ClearViewer();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (DataAccess.SelectOperation == "Insert")
            {
                if ((DataAccess.CheckExist(txt1.Text) == 0 && DataAccess.CheckExist(cmb1.Text) == 0))
                {
                    switch (DataAccess.SelectTable)
                    {
                        case ("Customers"):
                            MessageBox.Show(DataAccess.ExecuteOperation(txt1.Text, txt2.Text, txt3.Text, txt4.Text, txt5.Text, txt6.Text, ""));
                            ClearViewer();
                            break;

                        case ("Orders"):
                            MessageBox.Show(DataAccess.ExecuteOperation(txt1.Text, cmb2.Text, cmb3.Text, cmb4.Text, txt5.Text, cmb6.Text, ""));
                            ClearViewer();
                            break;

                        case ("Books"):
                            MessageBox.Show(DataAccess.ExecuteOperation(txt1.Text, txt2.Text, txt3.Text, txt4.Text, txt5.Text, txt6.Text, cmb7.Text));
                            ClearViewer();
                            break;

                        case ("Suppliers"):
                            MessageBox.Show(DataAccess.ExecuteOperation(txt1.Text, txt2.Text, txt3.Text, txt4.Text, txt5.Text, txt6.Text, txt7.Text));
                            ClearViewer();
                            break;

                        case ("Employees"):
                            MessageBox.Show(DataAccess.ExecuteOperation(txt1.Text, txt2.Text, txt3.Text, txt4.Text, cmb5.Text, txt6.Text, txt7.Text));
                            ClearViewer();
                            break;

                        case ("Roles"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, txt2.Text, txt3.Text, cmb4.Text, "", "", ""));
                            ClearViewer();
                            break;
                    }
                }
                else
                {
                    if (DataAccess.SelectTable == "Roles")
                    {
                        MessageBox.Show("The First input (Primary Key) you have entered already exists or you need to create a new employee identity to enter a new row.");
                    }
                    else
                    {
                        MessageBox.Show("The First input (Primary Key) you have entered already exists! Change this to somehthing else");

                    }
                }
            }
            else if (DataAccess.SelectOperation == "Update")
            {
                switch (DataAccess.SelectTable)
                    {
                        case ("Customers"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, cmb2.Text, cmb3.Text, cmb4.Text, cmb5.Text, cmb6.Text, ""));
                            ClearViewer();
                            break;

                        case ("Orders"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, cmb2.Text, cmb3.Text, cmb4.Text, cmb5.Text, cmb6.Text, ""));
                            ClearViewer();
                            break;

                        case ("Books"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, cmb2.Text, cmb3.Text, cmb4.Text, cmb5.Text, cmb6.Text, cmb7.Text));
                            ClearViewer();
                            break;

                        case ("Suppliers"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, cmb2.Text, cmb3.Text, cmb4.Text, cmb5.Text, cmb6.Text, cmb7.Text));
                            ClearViewer();
                            break;

                        case ("Employees"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, cmb2.Text, cmb3.Text, cmb4.Text, cmb5.Text, cmb6.Text, cmb7.Text));
                            ClearViewer();
                            break;

                        case ("Roles"):
                            MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, cmb2.Text, cmb3.Text, cmb4.Text, "", "", ""));
                            ClearViewer();
                            break;
                    }
            }
            else if (DataAccess.SelectOperation == "Delete")
            {
                MessageBox.Show(DataAccess.ExecuteOperation(cmb1.Text, "", "", "", "", "", ""));
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            ClearViewer();
            this.Hide();
        }

        private void btnInsert_Click(object sender, RoutedEventArgs e)
        {
            ClearViewer();
            DataAccess.SelectOperation = "Insert";
            SetViewer();
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            ClearViewer();
            DataAccess.SelectOperation = "Update";
            SetViewer();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            ClearViewer();
            DataAccess.SelectOperation = "Delete";
            SetViewer();
        }

        private void cmb1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            CMBSync();
        }

        private void SetViewer()
        {
            lblTitle.Text = DataAccess.SelectOperation;

            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
            txt6.Text = "";
            txt7.Text = "";

            switch (DataAccess.SelectTable)
            {
                case ("Customers"):
                    lbl1.Text = "Cell Number :";
                    lbl2.Text = "First Name :";
                    lbl3.Text = "Surname    :";
                    lbl4.Text = "Physical Address:";
                    lbl5.Text = "City       :";
                    lbl6.Text = "Units Bought:";
                    lbl7.Text = "";
                    PickLayout();
                    break;

                case ("Orders"):
                    lbl1.Text = "Order Number:";
                    lbl2.Text = "Book Title :";
                    lbl3.Text = "Book Auther:";
                    lbl4.Text = "Book Publisher:";
                    lbl5.Text = "Quantity   :";
                    lbl6.Text = "Supplier   :";
                    lbl7.Text = "";
                    PickLayout();
                    break;

                case ("Books"):
                    lbl1.Text = "Barcode     :";
                    lbl2.Text = "Title      :";
                    lbl3.Text = "Auther     :";
                    lbl4.Text = "Publisher  :";
                    lbl5.Text = "Stock      :";
                    lbl6.Text = "UnitsSold  :";
                    lbl7.Text = "Supplier   :";
                    PickLayout();
                    break;

                case ("Suppliers"):
                    lbl1.Text = "ID         :";
                    lbl2.Text = "Company Name:";
                    lbl3.Text = "Address    :";
                    lbl4.Text = "City       :";
                    lbl5.Text = "Province   :";
                    lbl6.Text = "Country    :";
                    lbl7.Text = "UnitsAvailable:";
                    PickLayout();
                    break;

                case ("Employees"):
                    lbl1.Text = "ID         :";
                    lbl2.Text = "Name       :";
                    lbl3.Text = "Surname    :";
                    lbl4.Text = "Position   :";
                    lbl5.Text = "IsStaff    :";
                    lbl6.Text = "UnitsSold  :";
                    lbl7.Text = "Salary     :";
                    PickLayout();
                    break;

                case ("Roles"):
                    lbl1.Text = "ID         :";
                    lbl2.Text = "Account Name:";
                    lbl3.Text = "Account Password:";
                    lbl4.Text = "Privilege   :";
                    lbl5.Text = "";
                    lbl6.Text = "";
                    lbl7.Text = "";
                    PickLayout();
                    break;

                default:
                    MessageBox.Show("There was an error and the interface did not adjust to a table.");
                    ClearViewer();
                    break;
            }
        } // this method sets the static objects on the forms and sets their text

        private void PickLayout()
        {
            lblTitle.Text = DataAccess.SelectOperation + " in " + DataAccess.SelectTable;

            switch (DataAccess.SelectOperation)
            {
                case ("Insert"):
                    switch (DataAccess.SelectTable)
                    {
                        case ("Customers"):
                            Layout1();
                            break;

                        case ("Orders"):
                            Layout2();
                            break;

                        case ("Books"):
                            Layout3();
                            break;

                        case ("Suppliers"):
                            Layout4();
                            break;

                        case ("Employees"):
                            Layout5();
                            break;

                        case ("Roles"):
                            Layout6();
                            break;
                    }
                    DisplayDataSets();
                    break;
                case ("Update"):
                    Layout7();
                    DisplayDataSets();
                    break;
                case ("Delete"):
                    Layout8();
                    DisplayDataSets();
                    break;
            }
        } //this method picks on of the provided layout methods and affects whats visible on the form

        private void ClearViewer()
        {
            DataAccess.SelectOperation = "Select a mode!";

            lblTitle.Text = DataAccess.SelectOperation;

            lbl1.Text = "";
            lbl2.Text = "";
            lbl3.Text = "";
            lbl4.Text = "";
            lbl5.Text = "";
            lbl6.Text = "";
            lbl7.Text = "";

            lbl1.Visibility = Visibility.Collapsed;
            lbl2.Visibility = Visibility.Collapsed;
            lbl3.Visibility = Visibility.Collapsed;
            lbl4.Visibility = Visibility.Collapsed;
            lbl5.Visibility = Visibility.Collapsed;
            lbl6.Visibility = Visibility.Collapsed;
            lbl7.Visibility = Visibility.Collapsed;

            txt1.Visibility = Visibility.Collapsed;
            txt2.Visibility = Visibility.Collapsed;
            txt3.Visibility = Visibility.Collapsed;
            txt4.Visibility = Visibility.Collapsed;
            txt5.Visibility = Visibility.Collapsed;
            txt6.Visibility = Visibility.Collapsed;
            txt7.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Collapsed;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Collapsed;

            cmb1.IsEditable = false;
            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;

            cmb1.SelectedIndex = -1;
            cmb2.SelectedIndex = -1;
            cmb3.SelectedIndex = -1;
            cmb4.SelectedIndex = -1;
            cmb5.SelectedIndex = -1;
            cmb6.SelectedIndex = -1;
            cmb7.SelectedIndex = -1;

            cmb1.Text = "";
            cmb2.Text = "";
            cmb3.Text = "";
            cmb4.Text = "";
            cmb5.Text = "";
            cmb6.Text = "";
            cmb7.Text = "";

            cmb1.ItemsSource = null;
            cmb2.ItemsSource = null;
            cmb3.ItemsSource = null;
            cmb4.ItemsSource = null;
            cmb5.ItemsSource = null;
            cmb6.ItemsSource = null;
            cmb7.ItemsSource = null;

            cmb1.Items.Clear();
            cmb2.Items.Clear();
            cmb3.Items.Clear();
            cmb4.Items.Clear();
            cmb5.Items.Clear();
            cmb6.Items.Clear();
            cmb7.Items.Clear();

        } //this method resets all objects on the form to default values

        private void DisplayDataSets()
        {
            switch (DataAccess.SelectOperation)
            {
                case ("Insert"):
                    switch (DataAccess.SelectTable)
                    {
                        case ("Orders"):
                            CMB2("Books", "Title");
                            CMB3("Books", "Auther");
                            CMB4("Books", "Publisher");
                            CMB6("Suppliers", "Name");
                            break;

                        case ("Books"):
                            CMB7("Suppliers", "Name");
                            break;

                        case ("Employees"):
                            cmb5.ItemsSource = null;
                            cmb5.Items.Clear();
                            cmb5.Items.Add("True");
                            cmb5.Items.Add("False");
                            break;

                        case ("Roles"):
                            CMB1("Employees", "ID");
                            cmb4.ItemsSource = null;
                            cmb4.Items.Clear();
                            cmb4.Items.Add("ADMIN");
                            cmb4.Items.Add("NORML");
                            break;
                    }
                    break;
                case ("Update"):
                    switch (DataAccess.SelectTable)
                    {
                        case ("Customers"):
                            CMB1(DataAccess.SelectTable, "CellNumber");
                            CMB2(DataAccess.SelectTable, "FirstName");
                            CMB3(DataAccess.SelectTable, "Surname");
                            CMB4(DataAccess.SelectTable, "PhysicalAddress");
                            CMB5(DataAccess.SelectTable, "City");
                            CMB6(DataAccess.SelectTable, "UnitsBought");
                            break;

                        case ("Orders"):
                            CMB1(DataAccess.SelectTable, "OrderNumber");
                            CMB2(DataAccess.SelectTable, "BookName");
                            CMB3(DataAccess.SelectTable, "BookAuther");
                            CMB4(DataAccess.SelectTable, "BookPublisher");
                            CMB5(DataAccess.SelectTable, "Quantity");
                            CMB6(DataAccess.SelectTable, "Supplier");
                            break;

                        case ("Books"):
                            CMB1(DataAccess.SelectTable, "Barcode");
                            CMB2(DataAccess.SelectTable, "Title");
                            CMB3(DataAccess.SelectTable, "Auther");
                            CMB4(DataAccess.SelectTable, "Publisher");
                            CMB5(DataAccess.SelectTable, "Stock");
                            CMB6(DataAccess.SelectTable, "UnitsSold");
                            CMB7(DataAccess.SelectTable, "Supplier");
                            break;

                        case ("Suppliers"):
                            CMB1(DataAccess.SelectTable, "ID");
                            CMB2(DataAccess.SelectTable, "Name");
                            CMB3(DataAccess.SelectTable, "Address");
                            CMB4(DataAccess.SelectTable, "City");
                            CMB5(DataAccess.SelectTable, "Province");
                            CMB6(DataAccess.SelectTable, "Country");
                            CMB7(DataAccess.SelectTable, "UnitsAvailable");
                            break;

                        case ("Employees"):
                            CMB1(DataAccess.SelectTable, "ID");
                            CMB2(DataAccess.SelectTable, "Name");
                            CMB3(DataAccess.SelectTable, "Surname");
                            CMB4(DataAccess.SelectTable, "Position");
                            cmb5.Items.Add("True");
                            cmb5.Items.Add("False");
                            CMB6(DataAccess.SelectTable, "UnitsSold");
                            CMB7(DataAccess.SelectTable, "Salary");
                            break;

                        case ("Roles"):
                            CMB1(DataAccess.SelectTable, "ID");
                            CMB2(DataAccess.SelectTable, "AccountName");
                            CMB3(DataAccess.SelectTable, "AccountPassword");
                            cmb4.Items.Add("ADMIN");
                            cmb4.Items.Add("NORML");

                            break;
                    }
                    break;
                case ("Delete"):
                    switch (DataAccess.SelectTable)
                    {
                        case ("Customers"):
                            CMB1("Customers", "CellNumber");
                            break;

                        case ("Orders"):
                            CMB1("Orders", "OrderNumber");
                            break;

                        case ("Books"):
                            CMB1("Books", "Barcode");
                            break;

                        case ("Suppliers"):
                            CMB1("Suppliers", "ID");
                            break;

                        case ("Employees"):
                            CMB1("Employees", "ID");
                            break;

                        case ("Roles"):
                            CMB1("Roles", "ID");
                            break;
                    }
                    break;
            }
        }  // this method displays information in the comboboxes

        private void CMBSync()
        {
            int Column = cmb1.SelectedIndex;
            if (Column == -1)
            {
                Column++;
            }
            if (DataAccess.SelectOperation == "Update")
            {
                cmb2.Text = DataAccess.LoadDataSets(DataAccess.SelectTable).Tables[0].Rows[cmb1.SelectedIndex][1].ToString();
                cmb3.Text = DataAccess.LoadDataSets(DataAccess.SelectTable).Tables[0].Rows[cmb1.SelectedIndex][2].ToString();
                cmb4.Text = DataAccess.LoadDataSets(DataAccess.SelectTable).Tables[0].Rows[cmb1.SelectedIndex][3].ToString();
                if (DataAccess.SelectTable != "Roles")
                {
                    cmb5.Text = DataAccess.LoadDataSets(DataAccess.SelectTable).Tables[0].Rows[cmb1.SelectedIndex][4].ToString();
                    cmb6.Text = DataAccess.LoadDataSets(DataAccess.SelectTable).Tables[0].Rows[cmb1.SelectedIndex][5].ToString();
                    if (DataAccess.SelectTable == "Suppliers" || DataAccess.SelectTable == "Books" || DataAccess.SelectTable == "Employees")
                    {
                        cmb7.Text = DataAccess.LoadDataSets(DataAccess.SelectTable).Tables[0].Rows[cmb1.SelectedIndex][6].ToString();
                    }
                }
            }
        } //this method syncronizes the combo boxes during an update operation so they all display related information

        private void CMB1(string table, string column)
        {
            cmb1.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb1.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb1.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        } //the following CMB methods set the item indexs of the comboboxes

        private void CMB2(string table, string column)
        {
            cmb2.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb2.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb2.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        }

        private void CMB3(string table, string column)
        {
            cmb3.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb3.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb3.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        }

        private void CMB4(string table, string column)
        {
            cmb4.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb4.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb4.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        }

        private void CMB5(string table, string column)
        {
            cmb5.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb5.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb5.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        }

        private void CMB6(string table, string column)
        {
            cmb6.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb6.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb6.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        }

        private void CMB7(string table, string column)
        {
            cmb7.ItemsSource = DataAccess.LoadDistinctDataSets(table, column).Tables[0].DefaultView;
            cmb7.DisplayMemberPath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[column].ToString();
            cmb7.SelectedValuePath = DataAccess.LoadDistinctDataSets(table, column).Tables[0].Columns[0].ToString();
        }

        private void Layout1()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Visible;
            lbl6.Visibility = Visibility.Visible;
            lbl7.Visibility = Visibility.Collapsed;

            txt1.Visibility = Visibility.Visible;
            txt2.Visibility = Visibility.Visible;
            txt3.Visibility = Visibility.Visible;
            txt4.Visibility = Visibility.Visible;
            txt5.Visibility = Visibility.Visible;
            txt6.Visibility = Visibility.Visible;
            txt7.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Collapsed;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Collapsed;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        } //the following layout methods set the visibility of the form

        private void Layout2()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Visible;
            lbl6.Visibility = Visibility.Visible;
            lbl7.Visibility = Visibility.Collapsed;

            txt1.Visibility = Visibility.Visible;
            txt2.Visibility = Visibility.Collapsed;
            txt3.Visibility = Visibility.Collapsed;
            txt4.Visibility = Visibility.Collapsed;
            txt5.Visibility = Visibility.Visible;
            txt6.Visibility = Visibility.Collapsed;
            txt7.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Collapsed;
            cmb2.Visibility = Visibility.Visible;
            cmb3.Visibility = Visibility.Visible;
            cmb4.Visibility = Visibility.Visible;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Visible;
            cmb7.Visibility = Visibility.Collapsed;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        }

        private void Layout3()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Visible;
            lbl6.Visibility = Visibility.Visible;
            lbl7.Visibility = Visibility.Visible;

            txt1.Visibility = Visibility.Visible;
            txt2.Visibility = Visibility.Visible;
            txt3.Visibility = Visibility.Visible;
            txt4.Visibility = Visibility.Visible;
            txt5.Visibility = Visibility.Visible;
            txt6.Visibility = Visibility.Visible;
            txt7.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Collapsed;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Visible;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        }

        private void Layout4()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Visible;
            lbl6.Visibility = Visibility.Visible;
            lbl7.Visibility = Visibility.Visible;

            txt1.Visibility = Visibility.Visible;
            txt2.Visibility = Visibility.Visible;
            txt3.Visibility = Visibility.Visible;
            txt4.Visibility = Visibility.Visible;
            txt5.Visibility = Visibility.Visible;
            txt6.Visibility = Visibility.Visible;
            txt7.Visibility = Visibility.Visible;

            cmb1.Visibility = Visibility.Collapsed;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Collapsed;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        }

        private void Layout5()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Visible;
            lbl6.Visibility = Visibility.Visible;
            lbl7.Visibility = Visibility.Visible;

            txt1.Visibility = Visibility.Visible;
            txt2.Visibility = Visibility.Visible;
            txt3.Visibility = Visibility.Visible;
            txt4.Visibility = Visibility.Visible;
            txt5.Visibility = Visibility.Collapsed;
            txt6.Visibility = Visibility.Visible;
            txt7.Visibility = Visibility.Visible;

            cmb1.Visibility = Visibility.Collapsed;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Visible;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Collapsed;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        }

        private void Layout6()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Collapsed;
            lbl6.Visibility = Visibility.Collapsed;
            lbl7.Visibility = Visibility.Collapsed;

            txt1.Visibility = Visibility.Collapsed;
            txt2.Visibility = Visibility.Visible;
            txt3.Visibility = Visibility.Visible;
            txt4.Visibility = Visibility.Collapsed;
            txt5.Visibility = Visibility.Collapsed;
            txt6.Visibility = Visibility.Collapsed;
            txt7.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Visible;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Visible;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Collapsed;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        }

        private void Layout7()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Visible;
            lbl3.Visibility = Visibility.Visible;
            lbl4.Visibility = Visibility.Visible;
            lbl5.Visibility = Visibility.Visible;
            lbl6.Visibility = Visibility.Visible;

            txt1.Visibility = Visibility.Collapsed;
            txt2.Visibility = Visibility.Collapsed;
            txt3.Visibility = Visibility.Collapsed;
            txt4.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Visible;
            cmb2.Visibility = Visibility.Visible;
            cmb3.Visibility = Visibility.Visible;
            cmb4.Visibility = Visibility.Visible;

            
            cmb2.IsEditable = true;
            cmb3.IsEditable = true;

            if(DataAccess.SelectTable != "Roles")
            {
                cmb4.IsEditable = true;
            }
            

            if (DataAccess.SelectTable != "Roles")
            {
                txt5.Visibility = Visibility.Collapsed;
                txt6.Visibility = Visibility.Collapsed;
                cmb5.Visibility = Visibility.Visible;
                cmb6.Visibility = Visibility.Visible;

                if (DataAccess.SelectTable != "Employees")
                {
                    cmb5.IsEditable = true;
                }

                cmb6.IsEditable = true;

                if (DataAccess.SelectTable == "Employees" || DataAccess.SelectTable == "Suppliers" || DataAccess.SelectTable == "Books")
                {
                    lbl7.Visibility = Visibility.Visible;
                    txt7.Visibility = Visibility.Visible;
                    cmb7.Visibility = Visibility.Visible;
                    cmb7.IsEditable = true;
                }
            }
        }

        private void Layout8()
        {
            lbl1.Visibility = Visibility.Visible;
            lbl2.Visibility = Visibility.Collapsed;
            lbl3.Visibility = Visibility.Collapsed;
            lbl4.Visibility = Visibility.Collapsed;
            lbl5.Visibility = Visibility.Collapsed;
            lbl6.Visibility = Visibility.Collapsed;
            lbl7.Visibility = Visibility.Collapsed;

            txt1.Visibility = Visibility.Collapsed;
            txt2.Visibility = Visibility.Collapsed;
            txt3.Visibility = Visibility.Collapsed;
            txt4.Visibility = Visibility.Collapsed;
            txt5.Visibility = Visibility.Collapsed;
            txt6.Visibility = Visibility.Collapsed;
            txt7.Visibility = Visibility.Collapsed;

            cmb1.Visibility = Visibility.Visible;
            cmb2.Visibility = Visibility.Collapsed;
            cmb3.Visibility = Visibility.Collapsed;
            cmb4.Visibility = Visibility.Collapsed;
            cmb5.Visibility = Visibility.Collapsed;
            cmb6.Visibility = Visibility.Collapsed;
            cmb7.Visibility = Visibility.Collapsed;

            cmb2.IsEditable = false;
            cmb3.IsEditable = false;
            cmb4.IsEditable = false;
            cmb5.IsEditable = false;
            cmb6.IsEditable = false;
            cmb7.IsEditable = false;
        }

    }
}
