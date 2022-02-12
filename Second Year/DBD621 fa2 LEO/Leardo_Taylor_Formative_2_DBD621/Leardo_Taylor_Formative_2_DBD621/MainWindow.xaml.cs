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

namespace Leardo_Taylor_Formative_2_DBD621
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            InitializeCampus();
        }

        public void InitializeCampus()
        {
            cmbSlctCmps.Items.Add("Auckland Park");
            cmbSlctCmps.Items.Add("Bloemfontein");
            cmbSlctCmps.Items.Add("Boksburg");
            cmbSlctCmps.Items.Add("Cape Town");
            cmbSlctCmps.Items.Add("Durban");
            cmbSlctCmps.Items.Add("Nelspruit");
            cmbSlctCmps.Items.Add("Polokwane");
            cmbSlctCmps.Items.Add("Potchefstroom");
            cmbSlctCmps.Items.Add("Port Elizabeth");
            cmbSlctCmps.Items.Add("Pretoria");
            cmbSlctCmps.Items.Add("Randburg");
            cmbSlctCmps.Items.Add("Sandton");
            cmbSlctCmps.Items.Add("Roodepoort");
            cmbSlctCmps.Items.Add("Stellenbosch");
            cmbSlctCmps.Items.Add("Vereeniging");
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            DBBusinessLogicLayer businessLogicLayer = new DBBusinessLogicLayer();

            string name = txtUsername.Text;
            string pass = txtPassword.Text;
            int icount = 0;

            SessionData.Privilage = "Normal";

            for (int i = 0; i < businessLogicLayer.SelectStudents().Count; i++)
            {
                if (name == businessLogicLayer.SelectStudents()[i].FullName && pass == businessLogicLayer.SelectStudents()[i].ID_No.ToString())
                {
                    icount++;
                    NextWindow();
                    break;
                }
            }
            for (int i = 0; i < businessLogicLayer.SelectParents().Count; i++)
            {
                if (name == businessLogicLayer.SelectParents()[i].FullName && pass == businessLogicLayer.SelectParents()[i].ID_No.ToString())
                {
                    icount++;
                    NextWindow();
                    break;
                }
            }
            for (int i = 0; i < businessLogicLayer.SelectFacilitators().Count; i++)
            {
                if (name == businessLogicLayer.SelectFacilitators()[i].FullName && pass == businessLogicLayer.SelectFacilitators()[i].ID_No.ToString())
                {
                    icount++;
                    SessionData.Privilage = "Admin";
                    NextWindow();
                    break;
                }
            }

            if (icount == 0)
            {
                MessageBox.Show( "Account does not exist!", "Warning");
            }
        }

        private void NextWindow()
        {
            MasterPage masterPage = new MasterPage();
            masterPage.Show();
            this.Hide();
        }

        private void cmbSlctCmps_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cmbSlctCmps.SelectedIndex != -1)
            {
                SessionData.SetCampus(SessionData.campus[cmbSlctCmps.SelectedIndex]);
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
