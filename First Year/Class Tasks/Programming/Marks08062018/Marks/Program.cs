using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Marks
{
    class Program
    {
        static void Main(string[] args)
        {
            MathMarks ma = new MathMarks();
            ma.GetMark();
            ma.DetermineMaxMark();
            ma.CalculateAverageMark();
            ma.Display();
        }
    }

    public class MathMarks
    {
        double[] eachMark = new double[5];
        double aveMark = 0,sumMark = 0, highMark = 0;

        public void GetMark()
        {
            for (int i = 0; i <= eachMark.Length-2; i++)
            {
                Console.Write("Please enter the the the mark for the test" + (i+1).ToString() +":");
                eachMark[i] = int.Parse(Console.ReadLine());
                sumMark = sumMark + eachMark[i];
            }
            Console.Write("Please enter the the the mark for the practical/Project:");
            eachMark[4] = int.Parse(Console.ReadLine());
            sumMark = sumMark + eachMark[4];
        }

        public void DetermineMaxMark()
        {
            for (int i = 0; i < eachMark.Length; i++)
            {
                highMark = Math.Max(highMark, eachMark[i]);   
            }
        }

        public void CalculateAverageMark()
        {
            aveMark = sumMark / 5;
        }

        public void Display()
        {
            string outText =   
                "Description    \t\t\t      Mark" + "\n" +
                "==============================" + "\n" +
                "Test1:         \t\t\t       " + eachMark[0].ToString() + "\n" +
                "Test2:         \t\t\t       " + eachMark[1].ToString() + "\n" +
                "Test3:         \t\t\t       " + eachMark[2].ToString() + "\n" +
                "Test4:         \t\t\t       " + eachMark[3].ToString() + "\n" +
                "Project:       \t\t\t       " + eachMark[4].ToString() + "\n" +
                "Highest Mark:  \t\t\t       " + highMark.ToString()    + "\n" +
                "Average Mark:  \t\t\t       " + aveMark.ToString();
            MessageBox.Show(outText);
        }
    }
}
