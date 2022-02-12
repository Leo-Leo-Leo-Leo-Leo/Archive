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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TruText_Ledger
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DataAccess.ConnectToDatabase();
        }
       
        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string AccountName = txtAccountName.Text;
            string AccountPassword = txtAccountPassword.Password;
            int iAccount = 0;

            iAccount = DataAccess.Login(AccountName, AccountPassword);


            if (iAccount == 1)
            {
                MessageBox.Show("User name and password is correct!");

                this.Hide();

                DBView nextWindow = new DBView();
                nextWindow.ShowDialog();
            }
            else
            {
                MessageBox.Show("The account and password combination does not exist!");
            }
        }
    }
}
