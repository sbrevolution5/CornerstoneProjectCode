using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using Microsoft.EntityFrameworkCore;

namespace BackendApi.Entities;

[Table("telephones")]
public partial class Telephone
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("user_id")]
    public int? UserId { get; set; }

    [Column("phone_number")]
    public string? PhoneNumber { get; set; }

    [Column("type")]
    public string? Type { get; set; }

    [JsonIgnore]
    [ForeignKey("UserId")]
    [InverseProperty("Telephone")]
    public virtual User? User { get; set; }
}
