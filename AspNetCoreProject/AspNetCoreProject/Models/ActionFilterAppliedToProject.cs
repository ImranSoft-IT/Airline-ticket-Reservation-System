using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace AspNetCoreProject.Models
{
    public class CommonActionFilter : IActionFilter
    {
        SignInManager<ApplicationUser> _signInManager;
        IConfiguration _configuration;
        public CommonActionFilter(SignInManager<ApplicationUser> signInManager , IConfiguration configuration)
        {
            _signInManager = signInManager;
            _configuration = configuration;
        }
       
        public void OnActionExecuted(ActionExecutedContext context)
        {
           

        }

        public void OnActionExecuting(ActionExecutingContext context)
        {
            var dbconOptions = new DbContextOptionsBuilder<ApplicationDbContext>();
            dbconOptions.UseSqlServer(_configuration.GetConnectionString("DefaultConnection"));
            ApplicationDbContext db = new ApplicationDbContext(dbconOptions.Options);

            var MenuPermiBasedOnRoll = from mm in db.MenuModel
                                 join mhm in db.MenuHelperModel on mm.MenuHelperModelId equals mhm.Id
                                 join ro in db.Roles.ToList() on mm.RollId equals ro.Id
                                 join mmm in db.MenuModelManage on mm.Id equals mmm.MenuModelId
                                 select new {
                                     ConName = mhm.ControllerName ,
                                     ActName = mhm.ActionName ,
                                     RollName = ro.Name,
                                     InsName = mmm.Insert ,
                                     DelName  = mmm.Delete ,
                                     UpdName = mmm.Update ,
                                     RetName = mmm.Retrive
                                 };
            string contName = context.RouteData.Values["controller"].ToString();
            string actName = context.RouteData.Values["action"].ToString();
            string metName = context.HttpContext.Request.Method;


            bool Retrive = false;
            bool Insert = false;
            bool Delete = false;
            bool Update = false;

            if (actName.ToString() == "Index" && metName.ToString() == "GET")
            {
                Retrive = true;
            }

            if (actName.ToString() == "Create" && metName.ToString() == "POST")
            {
                Insert = true;
            }

            if (actName.ToString() == "Edit" && metName.ToString() == "POST")
            {
                Update = true;
            }

            if (actName.ToString() == "Delete" && metName.ToString() == "POST")
            {
                Delete = true;
            }

            var allRollInClaims = context.HttpContext.User.Claims.Where(w => w.Type == ClaimTypes.Role).ToList();
            bool permitted = false;
            foreach(var  loopClaimRoll in allRollInClaims)
            {
                if(Retrive)
                {

                   permitted =  MenuPermiBasedOnRoll.Where(w => w.RollName == loopClaimRoll.Value && w.RetName == Retrive && w.ConName.ToString() == contName && w.ActName == actName ).Any();


                    if(permitted)
                    {
                        break;
                    }
                }
                else if(Insert)
                {
                    permitted = MenuPermiBasedOnRoll.Where(w => w.RollName == loopClaimRoll.Value && w.InsName == Insert && w.ConName.ToString() == contName && w.ActName == actName).Any();
                    if (permitted)
                    {
                        break;
                    }

                }
                else if (Delete)
                {
                    permitted = MenuPermiBasedOnRoll.Where(w => w.RollName == loopClaimRoll.Value && w.DelName == Delete && w.ConName.ToString() == contName && w.ActName == actName).Any();
                    if (permitted)
                    {
                        break;
                    }


                }
                else
                {
                    permitted = MenuPermiBasedOnRoll.Where(w => w.RollName == loopClaimRoll.Value && w.UpdName == Update && w.ConName.ToString() == contName && w.ActName == actName).Any();
                    if (permitted)
                    {
                        break;
                    }
                }
            }


            if(!permitted)
            {
                Controller controller = context.Controller as Controller;

                context.Result = controller.RedirectToAction("Login", "Account");
               
            }
            



        }
    }
}
