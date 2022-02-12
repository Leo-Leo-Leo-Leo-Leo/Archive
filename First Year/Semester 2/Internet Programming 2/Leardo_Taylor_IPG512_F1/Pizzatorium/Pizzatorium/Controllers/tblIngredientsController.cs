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
    public class tblIngredientsController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblIngredients
        public async Task<ActionResult> Index()
        {
            return View(await db.tblIngredients.ToListAsync());
        }

        // GET: tblIngredients/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblIngredient tblIngredient = await db.tblIngredients.FindAsync(id);
            if (tblIngredient == null)
            {
                return HttpNotFound();
            }
            return View(tblIngredient);
        }

        // GET: tblIngredients/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tblIngredients/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dIngredientID,dIngredient,dCost")] tblIngredient tblIngredient)
        {
            if (ModelState.IsValid)
            {
                db.tblIngredients.Add(tblIngredient);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(tblIngredient);
        }

        // GET: tblIngredients/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblIngredient tblIngredient = await db.tblIngredients.FindAsync(id);
            if (tblIngredient == null)
            {
                return HttpNotFound();
            }
            return View(tblIngredient);
        }

        // POST: tblIngredients/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dIngredientID,dIngredient,dCost")] tblIngredient tblIngredient)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblIngredient).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(tblIngredient);
        }

        // GET: tblIngredients/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblIngredient tblIngredient = await db.tblIngredients.FindAsync(id);
            if (tblIngredient == null)
            {
                return HttpNotFound();
            }
            return View(tblIngredient);
        }

        // POST: tblIngredients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblIngredient tblIngredient = await db.tblIngredients.FindAsync(id);
            db.tblIngredients.Remove(tblIngredient);
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
