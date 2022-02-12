using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruFinance
{
    class Calculate : AbsAnswer, ICalculate
    {
        public void Recieve(string Value)
        {
            base.Answer = double.Parse(Value);
        }

        public void Recieve(string Value, string Operation)
        {
            RecieveValue(Value);
            RecieveOperator(Operation);
        }

        public void RecieveValue(string Value)
        {
            if (Num1 == null)
            {
                base.Num1 = double.Parse(Value);
            }
            else
            {
                if (base.Answer != null)
                {
                    base.Num1 = base.Answer;
                }
                base.Num2 = double.Parse(Value);
            }
        }

        public void RecieveOperator(string Operator) 
        {
            base.Operator = Operator;
        }

        public string Equal()
        {
            string result = null;
            switch (base.Operator)
            {
                case ("+"):
                    base.Answer = base.Num1 + base.Num2;
                    break;
                case ("-"):
                    base.Answer = base.Num1 - base.Num2;
                    break;
                case ("*"):
                    base.Answer = base.Num1 * base.Num2;
                    break;
                case ("/"):
                    try
                    {
                        base.Answer = base.Num1 / base.Num2;
                    }
                    catch (DivideByZeroException e)
                    {
                        return ("Error: Cannot Divide by Zero;" + e);
                    }
                    break;
            }
            result = base.Answer.ToString();
            return result;
        }

        public void PosNeg()
        {
            if(base.Num2 != null)
            {

            }
            else if(base.Answer != null)
            {

            }
            else
            {

            }
        }

        public void Clear()
        {
            base.Num1 = null;
            base.Num2 = null;
            base.Answer = null;
            base.Operator = null;
            GC.Collect();
        }
    }
}
