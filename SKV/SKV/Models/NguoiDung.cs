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
    
    public partial class NguoiDung
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NguoiDung()
        {
            this.BinhLuans = new HashSet<BinhLuan>();
            this.Table_Online = new HashSet<Table_Online>();
        }
    
        public int id { get; set; }
        public string TaiKhoan { get; set; }
        public string MatKhau { get; set; }
        public string TenNguoiDung { get; set; }
        public Nullable<int> CapDo { get; set; }
        public Nullable<System.DateTime> created_at { get; set; }
        public Nullable<int> comment_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuans { get; set; }
        public virtual BinhLuan BinhLuan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Table_Online> Table_Online { get; set; }
    }
}