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
    public sealed partial class Quiz : Page
    {
        #region Variables
        SetupQuiz setup = new SetupQuiz();

        private int icount;
        #endregion Variables

        #region Events

        #region Constructors
        public Quiz()
        {
            InitializeComponent();

            icount = 1;            

            SetBasicLabels();
        }
        #endregion Constructors

        #region Navigation
        private void btnBTM_Click(object sender, RoutedEventArgs e)
        {
            ToMenu();
        }

        private async void btnNext_Click(object sender, RoutedEventArgs e)
        {
            if (CheckAnswer() != null)
            {
                NextQuestion();
            }
            else if (txtAnswer.Text == "FINISHED")
            {
                if (UserFrame.NumberOfQuestions != 5)
                {
                    ProfileInformation.CrntScoreHistory.Add("Grade " + UserFrame.Grade.ToString() + " Test: " + UserFrame.CurrentScore.ToString() + " / " + UserFrame.NumberOfQuestions.ToString());
                }
                else
                {
                    ProfileInformation.CrntScoreHistory.Add("Grade " + UserFrame.Grade.ToString() + " Practice Test: " + UserFrame.CurrentScore.ToString() + " / " + UserFrame.NumberOfQuestions.ToString());
                }

                ToMenu();
            }
            else
            {
                ContentDialog warningBox = new ContentDialog()
                {
                    Title = "Warning",
                    Content = "Enter a value!.",
                    CloseButtonText = "Ok"
                };

                await warningBox.ShowAsync();
            }
        }
        #endregion Navigation

        #endregion Events

        #region Methods

        #region UI
        private void SetBasicLabels()
        {
            txtAnswer.IsEnabled = true;

            txtAnswer.Text = "";

            lblUser.Text = "User: " + UserFrame.CurrentUser;

            UserFrame.CurrentScore = 0;

            SetScore();

            setup.GenerateQuestion();

            lblQuestion.Text = UserFrame.CurrentQuestion;
        }

        private async void SetScore()
        {
            if (UserFrame.CorrectAnswer != null)
            {
                if (CheckAnswer() == UserFrame.CorrectAnswer)
                {
                    UserFrame.CurrentScore++;
                }
                else
                {
                    ContentDialog warningBox = new ContentDialog()
                    {
                        Title = "Warning",
                        Content = "You are wrong!.",
                        CloseButtonText = "Ok"
                    };

                    await warningBox.ShowAsync();
                }
            }

            if (txtAnswer.Text != "FINISHED")
            {
                lblQstNum.Text = "Question: " + icount.ToString();
            }

            lblScore.Text = UserFrame.CurrentScore.ToString() + " / " + UserFrame.NumberOfQuestions.ToString();
        }

        private void NextQuestion()
        {
            if (icount <= UserFrame.NumberOfQuestions + 1)
            {
                icount++;

                SetScore();
            }

            if (icount <= UserFrame.NumberOfQuestions)
            {
                setup.GenerateQuestion();

                lblQuestion.Text = UserFrame.CurrentQuestion + "= ???";
            }

            txtAnswer.Text = "";

            if (icount > UserFrame.NumberOfQuestions)
            {
                lblScore.Visibility = Visibility.Collapsed;

                lblQuestion.Text = lblScore.Text;

                if (UserFrame.CurrentScore > UserFrame.NumberOfQuestions / 2)
                {
                    lblQstNum.Text = "You Pass";
                }
                else
                {
                    lblQstNum.Text = "You Fail";
                }

                txtAnswer.IsEnabled = false;
                txtAnswer.Text = "FINISHED";
                btnNext.Content = "Submit";
            }
        }
        #endregion UI

        #region Flags
        private string CheckAnswer()
        {
            string result = null;
            if (decimal.TryParse(txtAnswer.Text, out decimal answer))
            {
                result = Math.Round(answer, 2).ToString();
            }
            return result;
        }
        #endregion Flags

        #region Navigation
        private void ToMenu()
        {
            UserFrame.ClearData();
            this.Frame.Navigate(typeof(MainMenu));
        }
        #endregion Navigation

        #endregion Methods
    }
}

