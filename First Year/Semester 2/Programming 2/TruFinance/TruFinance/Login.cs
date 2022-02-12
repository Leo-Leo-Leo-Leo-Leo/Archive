using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruFinance
{
    public class Login : ILogin
    {
        string[] Usernames = { "Admin", "Normal" };//stores hardcoded usernames
        string[] Passwords = { "IamAdmin", "IamNormal" };//stores hardcoded usernames

        public bool CheckPassword(string Username, string Password)//aurgumnets needed for pars
        {
            bool result = false;//default login detail

            for (int i = 0; i < Usernames.Length; i++)// will search entire array of usernames
            {
                if (Username == Usernames[i] && Password == Passwords[i])// both password and username must be correct for the result to return true
                {
                    result = true;//true if the right account is found
                }
            }

            return result;//returning results
        }
    }
}
