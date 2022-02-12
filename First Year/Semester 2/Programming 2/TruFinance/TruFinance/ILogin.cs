using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruFinance
{
    interface ILogin
    {
        bool CheckPassword(string Username, string Password);//the required login method
    }
}
