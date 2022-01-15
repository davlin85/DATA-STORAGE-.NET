﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Models
{
    [Index(nameof(StatusName), IsUnique = true)]

    internal class Status
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string StatusName { get; set; } = null!;

        public virtual ICollection<Case> Cases { get; set; }
    }
}
