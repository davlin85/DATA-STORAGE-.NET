using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Models
{
    [Index(nameof(AdminName), IsUnique = true)]

    internal class Admin
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string AdminName { get; set; } = null!;

        public virtual ICollection<Case> Cases { get; set; }
    }
}
