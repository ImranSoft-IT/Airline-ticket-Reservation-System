using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AspNetCoreProject.Models;
using Newtonsoft.Json;

namespace AspNetCoreProject.Controllers
{
    public class FlightInfoesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public FlightInfoesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: FlightInfoes
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> Index()
        {
            return View(await _context.flightInfoes.ToListAsync());
        }


        public ActionResult Sample()
        {
            return View();
        }

        [HttpPost]
       // [ServiceFilter(typeof(CommonActionFilter))]
        public JsonResult insertFlightsInfo(string flightJson)
        {
            var js = new JsonSerializer();
            FlightInfo[] flights = (FlightInfo[])Newtonsoft.Json.JsonConvert.DeserializeObject(flightJson, typeof(FlightInfo[]));
            try
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        foreach (var v in flights)
                        {
                            v.FlightID = 0;
                            _context.flightInfoes.Add(v);
                            _context.SaveChanges();
                        }


                        dbContextTransaction.Commit();
                        return Json("Data are inserted in Flight Info");

                    }
                    catch (Exception ex)
                    {
                        string k = ex.Message;
                        dbContextTransaction.Rollback();
                        return Json("There is a Problem arise");
                    }

                }
            }
            catch (Exception ex)
            {
                string k = ex.Message;
            }
            return Json("There is a Problem arise");
        }


        // GET: FlightInfoes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var flightInfo = await _context.flightInfoes
                .FirstOrDefaultAsync(m => m.FlightID == id);
            if (flightInfo == null)
            {
                return NotFound();
            }

            return View(flightInfo);
        }

        // GET: FlightInfoes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: FlightInfoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> Create([Bind("FlightID,FlightNunber,TakeOff,Landing")] FlightInfo flightInfo)
        {
            if (ModelState.IsValid)
            {
                _context.Add(flightInfo);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(flightInfo);
        }

        // GET: FlightInfoes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var flightInfo = await _context.flightInfoes.FindAsync(id);
            if (flightInfo == null)
            {
                return NotFound();
            }
            return View(flightInfo);
        }

        // POST: FlightInfoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> Edit(int id, [Bind("FlightID,FlightNunber,TakeOff,Landing")] FlightInfo flightInfo)
        {
            if (id != flightInfo.FlightID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(flightInfo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FlightInfoExists(flightInfo.FlightID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(flightInfo);
        }

        // GET: FlightInfoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var flightInfo = await _context.flightInfoes
                .FirstOrDefaultAsync(m => m.FlightID == id);
            if (flightInfo == null)
            {
                return NotFound();
            }

            return View(flightInfo);
        }

        // POST: FlightInfoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [ServiceFilter(typeof(CommonActionFilter))]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var flightInfo = await _context.flightInfoes.FindAsync(id);
            _context.flightInfoes.Remove(flightInfo);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool FlightInfoExists(int id)
        {
            return _context.flightInfoes.Any(e => e.FlightID == id);
        }
    }
}
