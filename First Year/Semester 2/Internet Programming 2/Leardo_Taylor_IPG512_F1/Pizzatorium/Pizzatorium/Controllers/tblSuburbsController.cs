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
    public class tblSuburbsController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblSuburbs
        public async Task<ActionResult> Index()
        {
            var tblSuburbs = db.tblSuburbs.Include(t => t.tblCity);
            return View(await tblSuburbs.ToListAsync());
        }

        // GET: tblSuburbs/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblSuburb tblSuburb = await db.tblSuburbs.FindAsync(id);
            if (tblSuburb == null)
            {
                return HttpNotFound();
            }
            return View(tblSuburb);
        }

        // GET: tblSuburbs/Create
        public ActionResult Create()
        {
            ViewBag.dCityID = new SelectList(db.tblCities, "dCityID", "dCityName");
            return View();
        }

        // POST: tblSuburbs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dSuburbID,dCityID,dSuburb")] tblSuburb tblSuburb)
        {
            if (ModelState.IsValid)
            {
                db.tblSuburbs.Add(tblSuburb);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.dCityID = new SelectList(db.tblCities, "dCityID", "dCityName", tblSuburb.dCityID);
            return View(tblSuburb);
        }

        // GET: tblSuburbs/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblSuburb tblSuburb = await db.tblSuburbs.FindAsync(id);
            if (tblSuburb == null)
            {
                return HttpNotFound();
            }
            ViewBag.dCityID = new SelectList(db.tblCities, "dCityID", "dCityName", tblSuburb.dCityID);
            return View(tblSuburb);
        }

        // POST: tblSuburbs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dSuburbID,dCityID,dSuburb")] tblSuburb tblSuburb)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblSuburb).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.dCityID = new SelectList(db.tblCities, "dCityID", "dCityName", tblSuburb.dCityID);
            return View(tblSuburb);
        }

        // GET: tblSuburbs/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblSuburb tblSuburb = await db.tblSuburbs.FindAsync(id);
            if (tblSuburb == null)
            {
                return HttpNotFound();
            }
            return View(tblSuburb);
        }

        // POST: tblSuburbs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblSuburb tblSuburb = await db.tblSuburbs.FindAsync(id);
            db.tblSuburbs.Remove(tblSuburb);
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
