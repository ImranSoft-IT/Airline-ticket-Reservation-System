using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AspNetCoreProject.Models;

namespace AspNetCoreProject.Controllers
{
    public class BookingFlightsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BookingFlightsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: BookingFlights
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.bookingFlights.Include(b => b.Country).Include(b => b.FlightInfo).Include(b => b.PassengerInfo);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: BookingFlights/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bookingFlight = await _context.bookingFlights
                .Include(b => b.Country)
                .Include(b => b.FlightInfo)
                .Include(b => b.PassengerInfo)
                .FirstOrDefaultAsync(m => m.BookID == id);
            if (bookingFlight == null)
            {
                return NotFound();
            }

            return View(bookingFlight);
        }

        // GET: BookingFlights/Create
        public IActionResult Create()
        {
            ViewData["CountryID"] = new SelectList(_context.countries, "CountryID", "Country1");
            ViewData["FlightID"] = new SelectList(_context.flightInfoes, "FlightID", "FlightNunber");
            ViewData["PassengerID"] = new SelectList(_context.passengerInfoes, "PassengerID", "FirstName");
            return View();
        }

        // POST: BookingFlights/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("BookID,FromPlace,Destination,FlightDate,PassengerID,CountryID,FlightID")] BookingFlight bookingFlight)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bookingFlight);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["CountryID"] = new SelectList(_context.countries, "CountryID", "Country1", bookingFlight.CountryID);
            ViewData["FlightID"] = new SelectList(_context.flightInfoes, "FlightID", "FlightNunber", bookingFlight.FlightID);
            ViewData["PassengerID"] = new SelectList(_context.passengerInfoes, "PassengerID", "FirstName", bookingFlight.PassengerID);
            return View(bookingFlight);
        }

        // GET: BookingFlights/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bookingFlight = await _context.bookingFlights.FindAsync(id);
            if (bookingFlight == null)
            {
                return NotFound();
            }
            ViewData["CountryID"] = new SelectList(_context.countries, "CountryID", "Country1", bookingFlight.CountryID);
            ViewData["FlightID"] = new SelectList(_context.flightInfoes, "FlightID", "FlightNunber", bookingFlight.FlightID);
            ViewData["PassengerID"] = new SelectList(_context.passengerInfoes, "PassengerID", "FirstName", bookingFlight.PassengerID);
            return View(bookingFlight);
        }

        // POST: BookingFlights/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("BookID,FromPlace,Destination,FlightDate,PassengerID,CountryID,FlightID")] BookingFlight bookingFlight)
        {
            if (id != bookingFlight.BookID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bookingFlight);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BookingFlightExists(bookingFlight.BookID))
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
            ViewData["CountryID"] = new SelectList(_context.countries, "CountryID", "Country1", bookingFlight.CountryID);
            ViewData["FlightID"] = new SelectList(_context.flightInfoes, "FlightID", "FlightNunber", bookingFlight.FlightID);
            ViewData["PassengerID"] = new SelectList(_context.passengerInfoes, "PassengerID", "FirstName", bookingFlight.PassengerID);
            return View(bookingFlight);
        }

        // GET: BookingFlights/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bookingFlight = await _context.bookingFlights
                .Include(b => b.Country)
                .Include(b => b.FlightInfo)
                .Include(b => b.PassengerInfo)
                .FirstOrDefaultAsync(m => m.BookID == id);
            if (bookingFlight == null)
            {
                return NotFound();
            }

            return View(bookingFlight);
        }

        // POST: BookingFlights/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var bookingFlight = await _context.bookingFlights.FindAsync(id);
            _context.bookingFlights.Remove(bookingFlight);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BookingFlightExists(int id)
        {
            return _context.bookingFlights.Any(e => e.BookID == id);
        }
    }
}
