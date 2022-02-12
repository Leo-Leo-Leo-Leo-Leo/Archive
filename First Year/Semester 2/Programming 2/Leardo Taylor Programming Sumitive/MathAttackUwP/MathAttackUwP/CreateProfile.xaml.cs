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
    public sealed partial class CreateProfile : Page
    {
        #region Events

        #region Constructors
        public CreateProfile()
        {
            InitializeComponent();

            ClearFields();
        }
        #endregion Constructors

        #region Navigation
        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {
            _CreateProfile();
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            Logout();
        }
        #endregion Navigation

        #endregion Events

        #region Methods

        #region UI
        private void ClearFields()
        {
            txtName.Text = "";
            txtCnfName.Text = "";
            txtPass.Text = "";
            txtCnfPass.Text = "";
        }
        #endregion UI

        #region Flags
        private bool CheckString(string _string)
        {
            int FlagCounter = 0;
            for (int i = 0; i < _string.Length; i++)
            {
                if (_string[i] == '!' || _string[i] == '@' || _string[i] == '#' || _string[i] == '$' || _string[i] == '&')
                {
                    FlagCounter++;
                }
            }

            if (FlagCounter > 0)
            {
                return false;
            }

            return true;
        }
        #endregion Flags

        #region ProfileInformationRelated
        private async void _CreateProfile()
        {
            string username = txtName.Text;
            string cnfusername = txtCnfName.Text;
            string password = txtPass.Text;
            string cnfpassword = txtCnfPass.Text;

            if (username != null && password != null && username != "" && password != "")
            {
                if (CheckString(username) == true && CheckString(password) == true)
                {
                    if (username == cnfusername && password == cnfpassword)
                    {
                        switch (ProfileInformation.CheckEntry(username))
                        {
                            case ("username"):
                                ContentDialog warningBox1 = new ContentDialog()
                                {
                                    Title = "Warning",
                                    Content = "This username already exists.",
                                    CloseButtonText = "Ok"
                                };

                                await warningBox1.ShowAsync();
                                break;
                            default:

                                UserFrame.CurrentUser = username;

                                ProfileInformation.Username.Add(username.ToString());
                                ProfileInformation.Password.Add(password.ToString());
                                ProfileInformation.CrntScoreHistory.Add("ScorePlaceHolder");
                                ProfileInformation.AllScoreHistory.Add("ScorePlaceHolder");


                                UserFrame.CurrentUserIndex = ProfileInformation.Username.Count - 1;

                                this.Frame.Navigate(typeof(MainMenu));

                                break;
                        }
                    }
                    else
                    {
                        ContentDialog warningBox3 = new ContentDialog()
                        {
                            Title = "Warning",
                            Content = "There is a miss-match in the information you have entered.",
                            CloseButtonText = "Ok"
                        };

                        await warningBox3.ShowAsync();
                    }
                }
                else
                {
                    ContentDialog warningBox = new ContentDialog()
                    {
                        Title = "Warning",
                        Content = "You are entering illegal characters, do not use the following: !, @, #, $, &.",
                        CloseButtonText = "Ok"
                    };

                    await warningBox.ShowAsync();
                }
            }
            else
            {
                ContentDialog warningBox = new ContentDialog()
                {
                    Title = "Warning",
                    Content = "You did not enter valid data.",
                    CloseButtonText = "Ok"
                };

                await warningBox.ShowAsync();
            }
        }
        #endregion ProfileInformationRelated

        #region Navigation
        private void Logout()
        {
            this.Frame.Navigate(typeof(MainPage));
        }
        #endregion Navigation

        #endregion Methods
    }

}