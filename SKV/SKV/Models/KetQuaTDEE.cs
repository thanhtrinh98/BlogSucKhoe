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
    
    public partial class KetQuaTDEE
    {
        public int id { get; set; }
        public Nullable<double> KetQua { get; set; }
        public string HinhAnhTD { get; set; }
        public Nullable<int> ThucDon_ID { get; set; }
    
        public virtual ThucDon ThucDon { get; set; }
    }
}