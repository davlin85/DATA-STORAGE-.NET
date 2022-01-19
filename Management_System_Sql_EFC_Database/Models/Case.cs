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
        [StringLength(200)]
        public string Description { get; set; } = null!;

        public DateTime DateTime { get; set; }

        [Required]
        public int UserId { get; set; }
        public User User { get; set; }

        [Required]
        public int StatusId { get; set; }
        public Status Status { get; set; }

        [Required]
        public int AdminId { get; set; }
        public Admin Admin { get; set; }    

    }
}

