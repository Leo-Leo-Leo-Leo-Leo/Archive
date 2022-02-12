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
    public sealed partial class Gallery : Page
    {
        public Gallery()
        {
            this.InitializeComponent();
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(MainPage));//button that navigation button to log out
        }

        private void btnMaps_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(Map));//button that navigates to Map 
        }

        private void btnCalc_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(Calculator));//button that navigates to calculator
        }
    }
}
