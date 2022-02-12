using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.UI.Xaml.Controls;
using Windows.Storage;
using Windows.Storage.Streams;

namespace MathAttackUwP
{
    public static class ProfileInformation
    {
        private static StorageFolder ProfilePath = KnownFolders.PicturesLibrary;

        const string MstrConn = "MathAttackProfiles.txt";

        public static List<string> Username = new List<string>();
        public static List<string> Password = new List<string>();
        public static List<string> AllScoreHistory = new List<string>();
        public static List<string> CrntScoreHistory = new List<string>();

        public static void StoreScoreHistory()
        {
            if (CrntScoreHistory.Count != 0)
            {
                string scores = "";

                for (int i = 0; i < CrntScoreHistory.Count; i++)
                {
                    if (i < CrntScoreHistory.Count - 1)
                    {
                        scores += CrntScoreHistory[i] + "#";
                    }
                    else
                    {
                        scores += CrntScoreHistory[i];
                    }
                }

                try
                {
                    AllScoreHistory[(int)(UserFrame.CurrentUserIndex)] = scores;
                }
                catch (Exception)
                {
                    for (int i = 0; i <= UserFrame.CurrentUserIndex; i++)
                    {
                        AllScoreHistory.Add("ENTRY" + i.ToString() + "#");
                    }

                    AllScoreHistory[(int)(UserFrame.CurrentUserIndex)] = scores;
                }
            }
        }

        public static void ExtractScoreHistory()
        {
            CrntScoreHistory.Clear();

            if (AllScoreHistory.Count != 0)
            {
                string[] scores = new string[AllScoreHistory[(int)UserFrame.CurrentUserIndex].Split('#').Length];

                scores = AllScoreHistory[(int)UserFrame.CurrentUserIndex].Split('#');

                for (int i = 0; i < scores.Length; i++)
                {
                    CrntScoreHistory.Add(scores[i]);
                }
            }
        }

        public static string CheckEntry(string username)
        {
            for (int i = 0; i < Username.Count; i++)
            {
                if (username == Username[i])
                {
                    return "username";
                }
            }
            return null;
        }

        public static void PurgeData()
        {
            Username.Clear();
            Password.Clear();
            CrntScoreHistory.Clear();
            AllScoreHistory.Clear();

            GC.Collect();
        }

        #region Crap

        public async static Task SaveProfiles()
        {
            StoreScoreHistory();

            StorageFile ProfileText = await ProfilePath.CreateFileAsync(MstrConn, CreationCollisionOption.ReplaceExisting);
            ProfileText = await ProfilePath.GetFileAsync(MstrConn);

            string Usernames = "";

            for (int i = 0; i < Username.Count; i++)
            {
                if ( i < Username.Count-1)
                {
                    Usernames +=  Username[i] +"@";
                }
                else
                {
                    Usernames += Username[i];
                }
            }

            string Passwords = "";

            for (int i = 0; i < Password.Count; i++)
            {
                if ( i < Password.Count-1)
                {
                    Passwords += Password[i] + "$";
                }
                else
                {
                    Passwords += Password[i];
                }
            }

            string Scores = "";

            for (int i = 0; i < AllScoreHistory.Count; i++)
            {
                if ( i < AllScoreHistory.Count-1)
                {
                    Scores += AllScoreHistory[i] + "&";
                }
                else
                {
                    Scores += AllScoreHistory[i];
                }
            }

            string insertString = Usernames + "!" + Passwords + "!" + Scores;

            await FileIO.WriteTextAsync(ProfileText, insertString);
        }

        public async static Task LoadProfiles()
        {
            StorageFile ProfileText;

            try
            {
                ProfileText = await ProfilePath.GetFileAsync(MstrConn);
            }
            catch (Exception)
            {
                ProfileText = await ProfilePath.CreateFileAsync(MstrConn, CreationCollisionOption.ReplaceExisting);
                ProfileText = await ProfilePath.GetFileAsync(MstrConn);
            }

            string Profiles = await FileIO.ReadTextAsync(ProfileText);

            if (Profiles != "" || Profiles != null)
            {
                string[] arrprofiledata = new string[2];
                string[] arrusernames = new string[99];
                string[] arrpasswords = new string[99];
                string[] arrscores = new string[99];

                if (Profiles.Split('!').Length == 3)
                {
                    arrprofiledata = Profiles.Split('!');
                    arrusernames = arrprofiledata[0].Split('@');
                    arrpasswords = arrprofiledata[1].Split('$');
                    arrscores = arrprofiledata[2].Split('&');

                    if (arrusernames.Length == arrpasswords.Length && arrpasswords.Length == arrscores.Length)
                    {
                        for (int i = 0; i < arrusernames.Length; i++)
                        {
                            Username.Add(arrusernames[i]);
                            Password.Add(arrpasswords[i]);
                            AllScoreHistory.Add(arrscores[i]);
                        }
                    }
                    else
                    {
                        await LPError();
                    }
                }
                else
                {
                    await LPError();
                }
            }
            else
            {
                await LPError();
            }
        }

        private static async Task LPError()
        {
            ContentDialog warningBox = new ContentDialog()
            {
                Title = "Warning",
                Content = "There was an error loading profile information. Please create a new profile!.",
                CloseButtonText = "Ok"
            };

            await warningBox.ShowAsync();

            StorageFile ProfileText = await ProfilePath.CreateFileAsync(MstrConn, CreationCollisionOption.ReplaceExisting);
            //ProfileText = await ProfilePath.GetFileAsync(MstrConn);
            //await FileIO.WriteTextAsync(ProfileText, "Default!Default!Default");

        }
        #endregion Crap
    }
}