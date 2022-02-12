using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;
using Windows.UI.Popups;
// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace TruFinance
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainPage : Page
    {
        public MainPage()
        {
            this.InitializeComponent();
        }

        private void btnLgIn_Click(object sender, RoutedEventArgs e)
        {
            Login login = new Login();//instance of reference class
            if(login.CheckPassword(txtUsNm.Text,txtPsWd.Text))//calling method to check if user details are right
            {
                this.Frame.Navigate(typeof(Gallery));//going to next page               
            }
            else
            {
                //alerts the user that they are doing something wrong.
                btnLgIn.Content = "Try Again?";
            }

        }
    }
}
