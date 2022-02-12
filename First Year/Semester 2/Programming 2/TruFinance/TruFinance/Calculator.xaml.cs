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

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace TruFinance
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Calculator : Page
    {
        Calculate c = new Calculate();

        public Calculator()
        {
            this.InitializeComponent();
        }

        private void btnEquals_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = c.Equal();
        }

        private void btnadd_Click(object sender, RoutedEventArgs e)
        {
            c.Recieve(txtscreen.Text, btnadd.Content.ToString());
            txtscreen.Text = "";
        }

        private void btnsub_Click(object sender, RoutedEventArgs e)
        {
            c.Recieve(txtscreen.Text, btnsub.Content.ToString());
            txtscreen.Text = "";
        }

        private void btnmlt_Click(object sender, RoutedEventArgs e)
        {
            c.Recieve(txtscreen.Text, btnmlt.Content.ToString());
            txtscreen.Text = "";
        }

        private void btndiv_Click(object sender, RoutedEventArgs e)
        {
            c.Recieve(txtscreen.Text, btndiv.Content.ToString());
            txtscreen.Text = "";
        }

        private void btnPosNeg_Click(object sender, RoutedEventArgs e)
        {
            c.PosNeg();
        }

        private void btnClrEntry_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = "";
        }

        private void btnClr_Click(object sender, RoutedEventArgs e)
        {
            c.Clear();
            txtscreen.Text = "";
        }

        private void btnPeriod_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btnPeriod.Content.ToString();
        }

        private void btn0_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn0.Content.ToString();
        }

        private void btn1_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn1.Content.ToString();
        }

        private void btn2_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn2.Content.ToString();
        }

        private void btn3_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn3.Content.ToString();
        }

        private void btn4_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn4.Content.ToString();
        }

        private void btn5_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn5.Content.ToString();
        }

        private void btn6_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn6.Content.ToString();
        }

        private void btn7_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn7.Content.ToString();
        }

        private void btn8_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn8.Content.ToString();
        }

        private void btn9_Click(object sender, RoutedEventArgs e)
        {
            txtscreen.Text = btn9.Content.ToString();
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(MainPage));//more navigations
        }

        private void btnGallery_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(Gallery));//more navigations
        }

        private void btnMaps_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(Map));//button that navigates to Map 
        }

    }
}
