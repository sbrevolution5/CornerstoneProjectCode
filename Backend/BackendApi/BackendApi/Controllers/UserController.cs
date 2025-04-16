using BackendApi.Data;
using BackendApi.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BackendApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {

        private readonly ILogger<UserController> _logger;
        private readonly SampledbContext _sampledbContext;
        public UserController(ILogger<UserController> logger, SampledbContext sampledbContext)
        {
            _logger = logger;
            _sampledbContext = sampledbContext;
        }

        [HttpGet(Name = "GetAllUsers")]
        public IEnumerable<User> Get()
        {
            var users = _sampledbContext.Users.Include(u=> u.Address)
                .Include(u => u.Telephone)
                .Include(u => u.Institutions)
                .ToList();
            return users;
        }
    }
}
