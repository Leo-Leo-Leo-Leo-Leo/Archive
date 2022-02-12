using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Declaring_and_Inherating_Classes
{
    interface IValidation
    {
        string SetName { get; set; }
        bool IsThereA_Name();
        bool NameIs8CharLong();
        bool NameIsLowercase();

    }
}
