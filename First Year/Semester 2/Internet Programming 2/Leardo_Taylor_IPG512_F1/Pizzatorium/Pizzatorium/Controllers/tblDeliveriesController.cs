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
    public class tblDeliveriesController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblDeliveries
        public async Task<ActionResult> Index()
        {
            var tblDeliveries = db.tblDeliveries.Include(t => t.tblPerson).Include(t => t.tblSuburb);
            return View(await tblDeliveries.ToListAsync());
        }

        // GET: tblDeliveries/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblDelivery tblDelivery = await db.tblDeliveries.FindAsync(id);
            if (tblDelivery == null)
            {
                return HttpNotFound();
            }
            return View(tblDelivery);
        }

        // GET: tblDeliveries/Create
        public ActionResult Create()
        {
            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName");
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb");
            return View();
        }

        // POST: tblDeliveries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dDeliveryID,dSuburbID,dPersonID,dPhoto")] tblDelivery tblDelivery)
        {
            if (ModelState.IsValid)
            {
                db.tblDeliveries.Add(tblDelivery);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName", tblDelivery.dPersonID);
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb", tblDelivery.dSuburbID);
            return View(tblDelivery);
        }

        // GET: tblDeliveries/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblDelivery tblDelivery = await db.tblDeliveries.FindAsync(id);
            if (tblDelivery == null)
            {
                return HttpNotFound();
            }
            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName", tblDelivery.dPersonID);
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb", tblDelivery.dSuburbID);
            return View(tblDelivery);
        }

        // POST: tblDeliveries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dDeliveryID,dSuburbID,dPersonID,dPhoto")] tblDelivery tblDelivery)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblDelivery).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName", tblDelivery.dPersonID);
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb", tblDelivery.dSuburbID);
            return View(tblDelivery);
        }

        // GET: tblDeliveries/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblDelivery tblDelivery = await db.tblDeliveries.FindAsync(id);
            if (tblDelivery == null)
            {
                return HttpNotFound();
            }
            return View(tblDelivery);
        }

        // POST: tblDeliveries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblDelivery tblDelivery = await db.tblDeliveries.FindAsync(id);
            db.tblDeliveries.Remove(tblDelivery);
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
