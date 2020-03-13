using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using AspNetCoreProject.Models;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;

namespace AspNetCoreProject
{

    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.  
        public void ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.  
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.Configure<IdentityOptions>(options =>
            {
                // Password settings
                options.Password.RequireDigit = false;
                options.Password.RequiredLength = 2;
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireUppercase = false;
                options.Password.RequireLowercase = false;
            });

            services.AddAuthentication(options =>
            {
                options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;

            })
          .AddCookie(options =>
          {
              options.LoginPath = new PathString("/Account/Login");
              options.Cookie.Name = "YourAppCookieName";
              options.ExpireTimeSpan = TimeSpan.FromMinutes(60);
              options.SlidingExpiration = true;
              options.AccessDeniedPath = new PathString("/Account/Denied");

          });
            services.AddAuthentication();
            services.AddAuthorization();
            services.AddScoped<CommonActionFilter>();
            services.AddDbContext<ApplicationDbContext>(options =>
           options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

            services.AddIdentity<ApplicationUser, ApplicationRole>().AddEntityFrameworkStores<ApplicationDbContext>();

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            services.AddSession();


        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.  
        public void Configure(IApplicationBuilder app, IHostingEnvironment env , IServiceProvider serivce)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseStaticFiles();
            app.UseCookiePolicy();
            app.UseAuthentication();
            app.UseSession();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });

            CreateRoles(serivce);


        }



        private void CreateRoles(IServiceProvider serviceProvider)
        {


            var roleManager = serviceProvider.GetRequiredService<RoleManager<ApplicationRole>>();
            var userManager = serviceProvider.GetRequiredService<UserManager<ApplicationUser>>();
            Task<IdentityResult> roleResult;
            string email = "admin@gmail.com";

            //Check that there is an Administrator role and create if not
            Task<bool> hasAdminRole = roleManager.RoleExistsAsync("admin");
            hasAdminRole.Wait();

            if (!hasAdminRole.Result)
            {
                ApplicationRole roleCreate = new ApplicationRole();
                roleCreate.Name = "admin";
                roleResult = roleManager.CreateAsync(roleCreate);
                roleResult.Wait();
            }

            //Check if the admin user exists and create it if not
            //Add to the Administrator role

            Task<ApplicationUser> testUser = userManager.FindByEmailAsync(email);
            testUser.Wait();

            if (testUser.Result == null)
            {
                ApplicationUser administrator = new ApplicationUser();
                administrator.Email = email;
                administrator.UserName = email;

                Task<IdentityResult> newUser = userManager.CreateAsync(administrator, "admin");
                newUser.Wait();

                if (newUser.Result.Succeeded)
                {
                    Task<IdentityResult> newUserRole = userManager.AddToRoleAsync(administrator, "admin");
                    newUserRole.Wait();
                }
            }

        }
    }

   
}

