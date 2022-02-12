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
    public class tblSizesController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblSizes
        public async Task<ActionResult> Index()
        {
            return View(await db.tblSizes.ToListAsync());
        }

        // GET: tblSizes/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblSize tblSize = await db.tblSizes.FindAsync(id);
            if (tblSize == null)
            {
                return HttpNotFound();
            }
            return View(tblSize);
        }

        // GET: tblSizes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tblSizes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dSizeID,dSize")] tblSize tblSize)
        {
            if (ModelState.IsValid)
            {
                db.tblSizes.Add(tblSize);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(tblSize);
        }

        // GET: tblSizes/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblSize tblSize = await db.tblSizes.FindAsync(id);
            if (tblSize == null)
            {
                return HttpNotFound();
            }
            return View(tblSize);
        }

        // POST: tblSizes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dSizeID,dSize")] tblSize tblSize)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblSize).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(tblSize);
        }

        // GET: tblSizes/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblSize tblSize = await db.tblSizes.FindAsync(id);
            if (tblSize == null)
            {
                return HttpNotFound();
            }
            return View(tblSize);
        }

        // POST: tblSizes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblSize tblSize = await db.tblSizes.FindAsync(id);
            db.tblSizes.Remove(tblSize);
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
