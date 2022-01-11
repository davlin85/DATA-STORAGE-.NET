using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Models
{
    internal class Case
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string HeadLine { get; set; } = null!;

        [Required]
        public string Description { get; set; }

        public DateTime Created { get; set; }
        public DateTime Updated { get; set; }

        public int UserId { get; set; }
        public User User { get; set; }

        public virtual ICollection<User> Users { get; set;}
    }
}
