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

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace MathAttackUwP
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public sealed partial class MainPage : Page
    {
        #region Events

        #region Constructors
        public MainPage()
        {
            InitializeComponent();
            LoadAll();

        }
        #endregion Constructors

        #region Navigation
        private void btnNew_Click(object sender, RoutedEventArgs e)
        {
            ToCreate();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            ToLogin();
        }
        #endregion Navigation

        #endregion Events

        #region Methods

        #region ProfileInformation
        private async static void LoadAll()
        {
            ProfileInformation.PurgeData();
            await ProfileInformation.LoadProfiles();
        }
        #endregion ProfileInformation

        #region Navigation
        private void ToLogin()
        {
            this.Frame.Navigate(typeof(Login));
        }


        private void ToCreate()
        {
            this.Frame.Navigate(typeof(CreateProfile));
        }
        #endregion Navigation

        #endregion Methods
    }
}

