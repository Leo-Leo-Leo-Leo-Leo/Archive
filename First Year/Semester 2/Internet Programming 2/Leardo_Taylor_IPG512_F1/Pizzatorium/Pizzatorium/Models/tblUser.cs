//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pizzatorium.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblUser
    {
        public int dUserID { get; set; }
        public int dSuburbID { get; set; }
        public int dPersonID { get; set; }
        public int dPizzaID { get; set; }
        public string dUserName { get; set; }
        public string dPassword { get; set; }
        public string dPhone { get; set; }
    
        public virtual tblPerson tblPerson { get; set; }
        public virtual tblPizza tblPizza { get; set; }
        public virtual tblSuburb tblSuburb { get; set; }
    }
}
