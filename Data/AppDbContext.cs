using Microsoft.EntityFrameworkCore;
using ProductManagementAPI.Models;
using System.Collections.Generic;
using System.Reflection.Emit;

namespace ProductManagementAPI.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }
        public DbSet<Product> Products { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>()
                .Property(p => p.Price)
                .HasColumnType("decimal(18,2)");  // <- This fixes the warning

            // Seed initial data
            modelBuilder.Entity<Product>().HasData(
                new Product { Id = 1, Name = "Laptop", Quantity = 10, Price = 999.99m },
                new Product { Id = 2, Name = "Smartphone", Quantity = 20, Price = 699.99m },
                new Product { Id = 3, Name = "Tablet", Quantity = 15, Price = 399.99m }
            );
        }

    }
}