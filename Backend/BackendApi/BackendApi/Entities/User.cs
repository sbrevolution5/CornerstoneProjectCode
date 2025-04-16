using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BackendApi.Entities;

[Table("users")]
public partial class User
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("firstname")]
    public string? Firstname { get; set; }

    [Column("lastname")]
    public string? Lastname { get; set; }

    [Column("email")]
    public string? Email { get; set; }

    [Column("birthdate")]
    public DateOnly? Birthdate { get; set; }

    [InverseProperty("User")]
    public virtual Address Address { get; set; } 

    [InverseProperty("User")]
    public virtual Telephone Telephone { get; set; } 

    [ForeignKey("UserId")]
    [InverseProperty("Users")]
    public virtual ICollection<Institution> Institutions { get; set; } = new List<Institution>();
}
