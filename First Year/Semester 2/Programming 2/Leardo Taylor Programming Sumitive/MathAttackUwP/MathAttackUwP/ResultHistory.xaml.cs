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
    public sealed partial class ResultHistory : Page
    {
        public ResultHistory()
        {
            this.InitializeComponent();
            try
            {
                if (ProfileInformation.CrntScoreHistory.Count != 1)
                {
                    for (int i = 0; i < ProfileInformation.CrntScoreHistory.Count; i++)
                    {
                        if (ProfileInformation.CrntScoreHistory[i] != "ScorePlaceHolder")
                        {
                            lstvwResult.Items.Add(ProfileInformation.CrntScoreHistory[i]);
                        }
                    }
                }
                else
                {
                    lstvwResult.Items.Add("No results available");
                }
            }
            catch (Exception)
            {
                lstvwResult.Items.Add("No results available");
            }
        }

        private void btnReturn_Click(object sender, RoutedEventArgs e)
        {
            lstvwResult.Items.Clear();
            this.Frame.Navigate(typeof(MainMenu));
        }
    }
}
