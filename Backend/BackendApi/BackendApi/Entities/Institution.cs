using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using Microsoft.EntityFrameworkCore;

namespace BackendApi.Entities;

[Table("institutions")]
public partial class Institution
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("name")]
    public string? Name { get; set; }

    [Column("city")]
    public string? City { get; set; }

    [Column("state")]
    public string? State { get; set; }

    [Column("domain")]
    public string? Domain { get; set; }

    [JsonIgnore]
    [ForeignKey("InstitutionId")]
    [InverseProperty("Institutions")]
    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
