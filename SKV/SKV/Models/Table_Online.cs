//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SKV.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Table_Online
    {
        public int id { get; set; }
        public Nullable<int> SoTV { get; set; }
        public Nullable<int> NguoiDung_id { get; set; }
    
        public virtual NguoiDung NguoiDung { get; set; }
    }
}
