using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AspNetCoreProject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Hosting;
using System.IO;
using System.Text;

namespace AspNetCoreProject.Controllers
{
    public class PassengerInfoesController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IHostingEnvironment _env;

        public PassengerInfoesController(ApplicationDbContext context, IHostingEnvironment env)
        {
            _context = context;
            _env = env;
        }

        // GET: PassengerInfoes
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> Index(string sortOrder, string currentFilter, string searchString, int? pageNumber)
        {
            ViewData["CurrentSort"] = sortOrder;
            ViewData["NameSortParm"] = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewData["DateSortParm"] = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                pageNumber = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewData["CurrentFilter"] = searchString;

            var passengers = from s in _context.passengerInfoes select s;

            if (!String.IsNullOrEmpty(searchString))
            {
                passengers = passengers.Where(s => s.FirstName.Contains(searchString)
                                       || s.LastName.Contains(searchString));
            }

            switch (sortOrder)
            {
                case "name_desc":
                    passengers = passengers.OrderByDescending(s => s.FirstName);
                    break;
                case "Date":
                    passengers = passengers.OrderBy(s => s.DateOfBirth);
                    break;
                case "date_desc":
                    passengers = passengers.OrderByDescending(s => s.DateOfBirth);
                    break;
                default:
                    passengers = passengers.OrderBy(s => s.FirstName);
                    break;
            }

            int pageSize = 3;
            return View(await PaginatedList<PassengerInfo>.CreateAsync(passengers.AsNoTracking(), pageNumber ?? 1, pageSize));
            //return View(await passengers.AsNoTracking().ToListAsync());
        }


        public ActionResult IndexSingle(int? PassengerId, int? CountryId)
        {
            var singleSelectList = new SelectedInfoModel();
            singleSelectList.passengers = _context.passengerInfoes.ToList();
            if (PassengerId == null)
            {
                byte[] kkk = HttpContext.Session.Get("PassengerId");
                if (kkk != null)
                {
                    string someString = Encoding.ASCII.GetString(kkk);
                    PassengerId = Convert.ToInt32(someString);

                    //PassengerId = Convert.ToInt32(Session["PassengerId"].ToString());
                }
            }

            if (PassengerId != null)
            {
                HttpContext.Session.SetString("PassengerId", PassengerId.ToString());

                singleSelectList.bookingFlights = _context.bookingFlights.Where(w => w.PassengerID == PassengerId.Value).ToList();

            }

            if (CountryId != null)
            {
                singleSelectList.countries = _context.countries.Include(i => i.BookingFlights).Where(w => w.CountryID == CountryId.Value).ToList();
            }

            return View(singleSelectList);
        }


        // GET: PassengerInfoes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var passengerInfo = await _context.passengerInfoes
                .FirstOrDefaultAsync(m => m.PassengerID == id);
            if (passengerInfo == null)
            {
                return NotFound();
            }

            return View(passengerInfo);
        }

        // GET: PassengerInfoes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: PassengerInfoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ServiceFilter(typeof(CommonActionFilter))]
        public IActionResult Create([Bind("PassengerID,FirstName,LastName,DateOfBirth,Age,PhoneNumber,Email,passportNo,ImageUrl")] PassengerInfo passengerInfo, IFormFile formFile)
        {
            if (ModelState.IsValid)
            {

                string imagePath = _env.WebRootPath + "\\images\\passenger\\" + formFile.FileName;
                using (var stream = new FileStream(imagePath, FileMode.Create))
                {
                    formFile.CopyTo(stream);
                }
                passengerInfo.ImageUrl = "~/images/passenger/" + formFile.FileName;
                _context.passengerInfoes.Add(passengerInfo);
                _context.SaveChanges();
                return RedirectToAction("Index");
 
            }
            return View(passengerInfo);
        }

        // GET: PassengerInfoes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var passengerInfo = await _context.passengerInfoes.FindAsync(id);
            if (passengerInfo == null)
            {
                return NotFound();
            }
            return View(passengerInfo);
        }

        // POST: PassengerInfoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> Edit(int id, [Bind("PassengerID,FirstName,LastName,DateOfBirth,Age,PhoneNumber,Email,passportNo,ImageUrl")] PassengerInfo passengerInfo, IFormFile formFile)
        {
            if (id != passengerInfo.PassengerID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    string imagePath = _env.WebRootPath + "\\images\\passenger\\" + formFile.FileName;
                    using (var stream = new FileStream(imagePath, FileMode.Create))
                    {
                        formFile.CopyTo(stream);
                    }
                    passengerInfo.ImageUrl = "~/images/passenger/" + formFile.FileName;
                    _context.passengerInfoes.Add(passengerInfo);
                    
                    

                    _context.Update(passengerInfo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PassengerInfoExists(passengerInfo.PassengerID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("Index");
            }
            return View(passengerInfo);
        }

        // GET: PassengerInfoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var passengerInfo = await _context.passengerInfoes
                .FirstOrDefaultAsync(m => m.PassengerID == id);
            if (passengerInfo == null)
            {
                return NotFound();
            }

            return View(passengerInfo);
        }

        // POST: PassengerInfoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var passengerInfo = await _context.passengerInfoes.FindAsync(id);
            _context.passengerInfoes.Remove(passengerInfo);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PassengerInfoExists(int id)
        {
            return _context.passengerInfoes.Any(e => e.PassengerID == id);
        }
    }
}
