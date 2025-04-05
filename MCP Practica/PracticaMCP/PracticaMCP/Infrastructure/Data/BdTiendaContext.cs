using Microsoft.EntityFrameworkCore;

namespace PracticaMCP.Infrastructure.Data
{
    public class BdTiendaContext : DbContext
    {
        public BdTiendaContext(DbContextOptions<BdTiendaContext> options)
            : base(options)
        {
        }

        public DbSet<Producto> Productos { get; set; }
    }
}
