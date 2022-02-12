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
    public class tblPersonsController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblPersons
        public async Task<ActionResult> Index()
        {
            return View(await db.tblPersons.ToListAsync());
        }

        // GET: tblPersons/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblPerson tblPerson = await db.tblPersons.FindAsync(id);
            if (tblPerson == null)
            {
                return HttpNotFound();
            }
            return View(tblPerson);
        }

        // GET: tblPersons/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tblPersons/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dPersonID,dName")] tblPerson tblPerson)
        {
            if (ModelState.IsValid)
            {
                db.tblPersons.Add(tblPerson);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(tblPerson);
        }

        // GET: tblPersons/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblPerson tblPerson = await db.tblPersons.FindAsync(id);
            if (tblPerson == null)
            {
                return HttpNotFound();
            }
            return View(tblPerson);
        }

        // POST: tblPersons/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dPersonID,dName")] tblPerson tblPerson)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblPerson).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(tblPerson);
        }

        // GET: tblPersons/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblPerson tblPerson = await db.tblPersons.FindAsync(id);
            if (tblPerson == null)
            {
                return HttpNotFound();
            }
            return View(tblPerson);
        }

        // POST: tblPersons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblPerson tblPerson = await db.tblPersons.FindAsync(id);
            db.tblPersons.Remove(tblPerson);
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
