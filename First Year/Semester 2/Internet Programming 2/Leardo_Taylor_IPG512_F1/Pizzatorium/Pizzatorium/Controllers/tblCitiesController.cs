using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Pizzatorium.Models;

namespace Pizzatorium.Controllers
{
    public class tblCitiesController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblCities
        public async Task<ActionResult> Index()
        {
            return View(await db.tblCities.ToListAsync());
        }

        // GET: tblCities/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblCity tblCity = await db.tblCities.FindAsync(id);
            if (tblCity == null)
            {
                return HttpNotFound();
            }
            return View(tblCity);
        }

        // GET: tblCities/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tblCities/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dCityID,dCityName")] tblCity tblCity)
        {
            if (ModelState.IsValid)
            {
                db.tblCities.Add(tblCity);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(tblCity);
        }

        // GET: tblCities/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblCity tblCity = await db.tblCities.FindAsync(id);
            if (tblCity == null)
            {
                return HttpNotFound();
            }
            return View(tblCity);
        }

        // POST: tblCities/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dCityID,dCityName")] tblCity tblCity)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblCity).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(tblCity);
        }

        // GET: tblCities/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblCity tblCity = await db.tblCities.FindAsync(id);
            if (tblCity == null)
            {
                return HttpNotFound();
            }
            return View(tblCity);
        }

        // POST: tblCities/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblCity tblCity = await db.tblCities.FindAsync(id);
            db.tblCities.Remove(tblCity);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
