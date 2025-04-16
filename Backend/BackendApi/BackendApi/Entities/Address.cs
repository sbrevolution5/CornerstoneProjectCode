using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
using Microsoft.EntityFrameworkCore;

namespace BackendApi.Entities;

[Table("addresses")]
public partial class Address
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("user_id")]
    public int? UserId { get; set; }

    [Column("street_address")]
    public string? StreetAddress { get; set; }

    [Column("city")]
    public string? City { get; set; }

    [Column("state")]
    public string? State { get; set; }

    [Column("postal_code")]
    public string? PostalCode { get; set; }

    [JsonIgnore]
    [ForeignKey("UserId")]
    [InverseProperty("Address")]
    public virtual User? User { get; set; }
}
