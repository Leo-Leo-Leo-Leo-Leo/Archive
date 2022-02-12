using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Declaring_and_Inherating_Classes
{
    public class MessagesToUser
    {
        public string PassName = "user has a name!";
        public string PassLength = "user has a long name!";
        public string PassLower = "USER NAME IS LOWERCASE!";

        public virtual string DoNothing()
        {
            return "i did close to nothing!";
        }
    }
}
