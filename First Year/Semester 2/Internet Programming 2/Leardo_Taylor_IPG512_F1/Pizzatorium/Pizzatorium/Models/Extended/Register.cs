using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Pizzatorium.Models.Extended
{
    [MetadataType(typeof(tblUserMetaData))]
    public partial class tblUser
    {
        public string dConfirmPassword { get; set; }
    }

    public class tblUserMetaData
    {
        [Display(Name = "Required")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "This is a required field!")]
        public string dUserName { get; set; }

        [Display(Name = "Required")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "This is a required field!")]
        [DataType(DataType.PhoneNumber, ErrorMessage = "Incorrect Format")]
        public string dPhone { get; set; }

        [Display(Name = "Required")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "This is a required field!")]
        [DataType(DataType.Password, ErrorMessage = "Incorrect Format")]
        public string dPassword { get; set; }

        [Display(Name = "Required")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "This is a required field!")]
        [DataType(DataType.Password, ErrorMessage = "Incorrect Format")]
        [Compare("Password", ErrorMessage = "Password and Confirm password do not match!")]
        public string dConfirmPassword { get; set; }
    }
}