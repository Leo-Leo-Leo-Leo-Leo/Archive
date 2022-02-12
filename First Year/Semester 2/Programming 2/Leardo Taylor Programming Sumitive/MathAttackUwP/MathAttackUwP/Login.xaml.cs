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

namespace MathAttackUwP
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Login : Page
    {
        #region Events

        #region Constructors
        public Login()
        {
            InitializeComponent();

            ClearFields();

        }
        #endregion Constructors

        #region Navigation
        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            LoginProfile();
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            Cancel();
        }
        #endregion Navigation

        #endregion Events

        #region Methods

        #region UI
        private void ClearFields()
        {
            txtName.Text = "";
            txtPassword.Text = "";
        }
        #endregion UI

        #region ProgileInformationRelated
        private async void LoginProfile()
        {
            string name = txtName.Text;
            string password = txtPassword.Text;

            if (name != null && password != null && name != "" && password != "")
            {
                for (int i = 0; i < ProfileInformation.Username.Count; i++)
                {
                    if (name == ProfileInformation.Username[i].ToString() && password == ProfileInformation.Password[i].ToString())
                    {
                        UserFrame.CurrentUser = name;

                        this.Frame.Navigate(typeof(MainMenu));

                        UserFrame.CurrentUserIndex = i;

                        ProfileInformation.ExtractScoreHistory();

                        break;
                    }
                    else if (i >= ProfileInformation.Username.Count-1)
                    {

                        ContentDialog warningBox = new ContentDialog()
                        {
                            Title = "Warning",
                            Content = "The username and password you have entered do not exist.",
                            CloseButtonText = "Ok"
                        };

                        await warningBox.ShowAsync();
                    }
                }
            }
            else
            {
                ContentDialog warningBox = new ContentDialog()
                {
                    Title = "Warning",
                    Content = "Do not leave the fields blank.",
                    CloseButtonText = "Ok"
                };

                await warningBox.ShowAsync();
            }
        }
        #endregion ProgileInformationRelated

        #region Navigations
        private void Cancel()
        {
            this.Frame.Navigate(typeof(MainPage));
        }
        #endregion Navigations

        #endregion Methods
    }
}