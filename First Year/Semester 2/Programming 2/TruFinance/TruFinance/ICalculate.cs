using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruFinance
{
    interface ICalculate
    {
        void RecieveValue(string Value);
        void RecieveOperator(string Operation);
        string Equal();
        void Clear();
    }
}
