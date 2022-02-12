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
    public sealed partial class MainMenu : Page
    {
        #region Events
        public MainMenu()
        {
            InitializeComponent();

            SetBasicLabels();
        }

        private void chk1_Checked(object sender, RoutedEventArgs e)
        {
            txtInstruction.Text = "";
        }

        private void chk2_Checked(object sender, RoutedEventArgs e)
        {
            txtInstruction.Text = "";
        }

        private void chk3_Checked(object sender, RoutedEventArgs e)
        {
            txtInstruction.Text = "";
        }

        private void chk4_Checked(object sender, RoutedEventArgs e)
        {
            txtInstruction.Text = "Round to second decimal place.";
        }

        private void chkPractice_Checked(object sender, RoutedEventArgs e)
        {
            sldQstNum.IsEnabled = false;
        }

        private void chkPractice_Unchecked(object sender, RoutedEventArgs e)
        {
            sldQstNum.IsEnabled = true;
            sldQstNum.Value = 1;
        }

        private void btnQzRsltHst_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(ResultHistory));
        }

        private async void btnQuiz_Click(object sender, RoutedEventArgs e)
        {
            if (SetGrade())
            {
                SetDifficulty();

                SetNOQ();

                NextWindow();
            }
            else
            {
                ContentDialog warningBox = new ContentDialog()
                {
                    Title = "Warning",
                    Content = "Please select a Grade.",
                    CloseButtonText = "Ok"
                };
                await warningBox.ShowAsync();
            }
        }

        private async void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            await ProfileInformation.SaveProfiles();           
            Logout();
        }
        #endregion Events

        #region Methods

        #region UI
        private void SetBasicLabels()
        {
            txtInstruction.Text = "";
            lblCrntUser.Text = "User: " + UserFrame.CurrentUser;
        }
        #endregion UI

        #region UserFrameRelated 
        private bool SetGrade()
        {
            if (chk1.IsChecked == true)
            {
                UserFrame.Grade = 1;
                return true;
            }
            else if (chk2.IsChecked == true)
            {
                UserFrame.Grade = 2;
                return true;
            }
            else if (chk3.IsChecked == true)
            {
                UserFrame.Grade = 3;
                return true;
            }
            else if (chk4.IsChecked == true)
            {
                UserFrame.Grade = 4;
                return true;
            }
            else
            {
                return false;
            }
        }

        private void SetDifficulty()
        {
            switch (sldDif.Value)
            {
                case (1):
                    UserFrame.CurrentDifficulty = -1;
                    break;
                case (2):
                    UserFrame.CurrentDifficulty = 0;
                    break;
                default:
                    UserFrame.CurrentDifficulty = 1;
                    break;
            }
        }

        private void SetNOQ()
        {
            if (chkPractice.IsChecked == false)
            {
                switch (sldQstNum.Value)
                {
                    case (1):
                        UserFrame.NumberOfQuestions = 10;
                        break;
                    case (2):
                        UserFrame.NumberOfQuestions = 25;
                        break;
                    case (3):
                        UserFrame.NumberOfQuestions = 50;
                        break;
                    default:
                        UserFrame.NumberOfQuestions = 100;
                        break;
                }
            }
            else
            {
                UserFrame.NumberOfQuestions = 5;
            }
        }
        #endregion UserFrameRelated 

        #region Navigation
        private void Logout()
        {
            this.Frame.Navigate(typeof(MainPage));
        }

        private void NextWindow()
        {
            this.Frame.Navigate(typeof(Quiz));
        }
        #endregion Navigation

        #endregion Methods
    }
}
