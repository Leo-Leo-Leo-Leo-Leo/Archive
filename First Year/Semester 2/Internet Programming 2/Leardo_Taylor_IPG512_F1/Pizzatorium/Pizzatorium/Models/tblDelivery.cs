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
    
    public partial class tblDelivery
    {
        public int dDeliveryID { get; set; }
        public int dSuburbID { get; set; }
        public int dPersonID { get; set; }
        public string dPhoto { get; set; }
    
        public virtual tblPerson tblPerson { get; set; }
        public virtual tblSuburb tblSuburb { get; set; }
    }
}