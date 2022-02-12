using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace TruText_Ledger
{
    /// <summary>
    /// Interaction logic for DBView.xaml
    /// </summary>
    public partial class DBView : Window
    {
        public DBView()
        {
            InitializeComponent();
            DataAccess.SelectTable = "Customers";
            DataAccess.SelectOperation = "Select a mode!";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;

            if (DataAccess.SelectPrivilege == "ADMIN")
            {
                Layout1();
            }
            else if (DataAccess.SelectPrivilege == "NORML")
            {
                Layout2();
            }
            else
            {
                DataAccess.SelectPrivilege = "NORML";
                Layout2();
                MessageBox.Show("There was an error idenitfying your SelectPrivilege! Default set to Normal User");
            }
        }

        private void btnCust_Click(object sender, RoutedEventArgs e)
        {
            DataAccess.SelectTable = "Customers";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnOrder_Click(object sender, RoutedEventArgs e)
        {
            DataAccess.SelectTable = "Orders";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnBook_Click(object sender, RoutedEventArgs e)
        {
            DataAccess.SelectTable = "Books";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnSupp_Click(object sender, RoutedEventArgs e)
        {
            DataAccess.SelectTable = "Suppliers";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnEmpl_Click(object sender, RoutedEventArgs e)
        {
            DataAccess.SelectTable = "Employees";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnRole_Click(object sender, RoutedEventArgs e)
        {
            DataAccess.SelectTable = "Roles";
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            MainWindow previousWindow = new MainWindow();
            previousWindow.Show();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            DataManipulationViewer nextWindow = new DataManipulationViewer();
            nextWindow.ShowDialog();
        }

        private void btnRfsh_Click(object sender, RoutedEventArgs e)
        {
            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("").DefaultView;
        }

        private void btnFlt1_Click(object sender, RoutedEventArgs e)
        {

            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("MstSld").DefaultView;
        }

        private void btnFlt2_Click(object sender, RoutedEventArgs e)
        {

            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("BstCst").DefaultView;
        }

        private void btnFlt3_Click(object sender, RoutedEventArgs e)
        {

            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("MstSls").DefaultView;
        }

        private void btnFlt4_Click(object sender, RoutedEventArgs e)
        {

            dgvTableView.ItemsSource = DataAccess.LoadToDataGrid("MstPrvd").DefaultView;
        }

        public void Layout1()
        {
            btnSupp.Visibility = Visibility.Visible;
            btnEmpl.Visibility = Visibility.Visible;
            btnRole.Visibility = Visibility.Visible;
            btnEdit.Visibility = Visibility.Visible;
            btnRfsh.Visibility = Visibility.Visible;
            btnFlt1.Visibility = Visibility.Visible;
            btnFlt2.Visibility = Visibility.Visible;
            btnFlt3.Visibility = Visibility.Visible;
            btnFlt4.Visibility = Visibility.Visible;
        }

        public void Layout2()
        {
            btnSupp.Visibility = Visibility.Collapsed;
            btnEmpl.Visibility = Visibility.Collapsed;
            btnRole.Visibility = Visibility.Collapsed;
            btnEdit.Visibility = Visibility.Collapsed;
            btnRfsh.Visibility = Visibility.Collapsed;
            btnFlt1.Visibility = Visibility.Collapsed;
            btnFlt2.Visibility = Visibility.Collapsed;
            btnFlt3.Visibility = Visibility.Collapsed;
            btnFlt4.Visibility = Visibility.Collapsed;
        }

    }
}
