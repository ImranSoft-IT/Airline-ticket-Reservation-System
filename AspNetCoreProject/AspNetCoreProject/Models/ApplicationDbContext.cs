using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using AspNetCoreProject.Models;

namespace AspNetCoreProject.Models
{
    //public class Project_08Context : DbContext
    //{
    //    public Project_08Context (DbContextOptions<Project_08Context> options)
    //        : base(options)
    //    {
    //    }

    //    public DbSet<Project_08.Models.StudentModel> StudentModel { get; set; }
    //}

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser, ApplicationRole, string, IdentityUserClaim<string>, ApplicationUserRole, IdentityUserLogin<string>, IdentityRoleClaim<string>, IdentityUserToken<string>>
    {
        

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<ApplicationUserRole>(userRole =>
            {
                userRole.HasKey(ur => new { ur.UserId, ur.RoleId });

                userRole.HasOne(ur => ur.Role)
                    .WithMany(r => r.UserRoles)
                    .HasForeignKey(ur => ur.RoleId)
                    .IsRequired();

                userRole.HasOne(ur => ur.User)
                    .WithMany(r => r.UserRoles)
                    .HasForeignKey(ur => ur.UserId)
                    .IsRequired();
            });
        }


        public DbSet<AspNetCoreProject.Models.StudentModel> StudentModel { get; set; }
        public DbSet<AspNetCoreProject.Models.MenuHelperModel> MenuHelperModel { get; set; }
        public DbSet<AspNetCoreProject.Models.MenuModel> MenuModel { get; set; }
        public DbSet<AspNetCoreProject.Models.MenuModelManage> MenuModelManage { get; set; }


        public virtual DbSet<BookingFlight> bookingFlights { get; set; }
        public virtual DbSet<Country> countries { get; set; }
        public virtual DbSet<FlightInfo> flightInfoes { get; set; }
        public virtual DbSet<PassengerInfo> passengerInfoes { get; set; }

        public virtual DbSet<ApplicationUser> ApplicationUsers { get; set; }
        public virtual DbSet<ApplicationRole> ApplicationRoles { get; set; }
        public virtual DbSet<ApplicationUserRole> ApplicationUserRoles { get; set; }


        //public DbSet<AspNetCoreProject.Models.Student_Result> Student_Result { get; set; }
    }
    public class SelectedInfoModel
    {
        public IEnumerable<PassengerInfo> passengers { get; set; }
        public IEnumerable<Country> countries { get; set; }
        public IEnumerable<BookingFlight> bookingFlights { get; set; }
    }


}
