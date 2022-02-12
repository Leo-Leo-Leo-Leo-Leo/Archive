using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathAttackUwP
{
    public static class UserFrame
    {
        #region SetupQuiz
        public static string CurrentUser { get; set; }//string used to diplay the current user
        public static int? CurrentUserIndex { get; set; }//int used to diplay the current user
        public static int? Grade { get; set; }// used to determine length of equation an operators available 
        public static int? CurrentDifficulty { get; set; }// used to add or remove one term from the current grades default question
        public static int? NumberOfQuestions { get; set; }//used for setting how many questions will be answered.
        #endregion SetupQuiz

        #region DuringQuiz
        public static int? CurrentScore { get; set; }//users current score
        public static string CurrentQuestion { get; set; }// users current question to be answered
        public static string CorrectAnswer { get; set; }// the correct answer to the users question
        #endregion DuringQuiz

        public static void ClearData()
        {
            Grade = null;
            CurrentDifficulty = null;
            NumberOfQuestions = null;
            CurrentScore = null;
            CurrentQuestion = null;
            CorrectAnswer = null;
        }
    }
}
