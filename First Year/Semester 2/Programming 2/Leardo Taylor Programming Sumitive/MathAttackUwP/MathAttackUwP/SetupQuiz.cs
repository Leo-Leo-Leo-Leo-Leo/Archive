using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathAttackUwP
{
    class SetupQuiz
    {
        public void GenerateQuestion()
        {
            Random rnd = new Random();
            UserFrame.CurrentQuestion = "";

            double? FinalAnswer = null;

            for (int i = 1; i < NumberOfTerms(); i++)
            {
                int num1 = rnd.Next(0, 9);
                int num2 = rnd.Next(0, 9);

                int opr1 = rnd.Next(1, 4);

                if (FinalAnswer == null)
                {
                    switch (ChooseOperator(opr1))
                    {
                        case ("/"):
                            while (num2 == 0)
                            {
                                num2 = rnd.Next(1, 9);
                            }
                            FinalAnswer = num1 / num2;
                            UserFrame.CurrentQuestion = num1.ToString() + ChooseOperator(opr1).ToString() + num2.ToString();

                            break;
                        case ("*"):
                            FinalAnswer = num1 * num2;
                            UserFrame.CurrentQuestion = num1.ToString() + ChooseOperator(opr1).ToString() + num2.ToString();

                            break;
                        case ("-"):
                            FinalAnswer = num1 - num2;
                            UserFrame.CurrentQuestion = num1.ToString() + ChooseOperator(opr1).ToString() + num2.ToString();

                            break;
                        default:
                            FinalAnswer = num1 + num2;
                            UserFrame.CurrentQuestion = num1.ToString() + ChooseOperator(opr1).ToString() + num2.ToString();

                            break;
                    }
                }
                else
                {
                    switch (ChooseOperator(opr1))
                    {
                        case ("/"):
                            while (num2 == 0)
                            {
                                num2 = rnd.Next(1, 9);
                            }
                            FinalAnswer = FinalAnswer / num2;
                            UserFrame.CurrentQuestion = "(" + UserFrame.CurrentQuestion + ")" + ChooseOperator(opr1).ToString() + num2.ToString();
                            break;
                        case ("*"):
                            FinalAnswer = FinalAnswer * num2;
                            UserFrame.CurrentQuestion = "(" + UserFrame.CurrentQuestion + ")" + ChooseOperator(opr1).ToString() + num2.ToString();
                            break;
                        case ("-"):
                            FinalAnswer = FinalAnswer - num2;
                            UserFrame.CurrentQuestion += ChooseOperator(opr1).ToString() + num2.ToString();
                            break;
                        default:
                            FinalAnswer = FinalAnswer + num2;
                            UserFrame.CurrentQuestion += ChooseOperator(opr1).ToString() + num2.ToString();
                            break;
                    }
                }
            }
            UserFrame.CorrectAnswer = Math.Round((double)FinalAnswer, 2).ToString();
        }

        private string ChooseOperator(int randomNumber)
        {
            switch (UserFrame.Grade)
            {

                case (1):
                    switch (randomNumber)
                    {
                        default:
                            return "+";
                    }
                case (2):
                    switch (randomNumber)
                    {
                        case (2):
                            return "-";
                        default:
                            return "+";
                    }
                case (3):
                    switch (randomNumber)
                    {
                        case (2):
                            return "-";
                        case (3):
                            return "*";
                        default:
                            return "+";
                    }
                default:
                    switch (randomNumber)
                    {
                        case (1):
                            return "/";
                        case (2):
                            return "-";
                        case (3):
                            return "*";
                        default:
                            return "+";
                    }
            }
        }

        private int NumberOfTerms()
        {
            return ((int)UserFrame.Grade + 2 + (int)UserFrame.CurrentDifficulty);
        }
    }
}











