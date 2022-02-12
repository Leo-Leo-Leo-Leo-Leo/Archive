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
    public class tblUsersController : Controller
    {
        private PizzatoriumEntities1 db = new PizzatoriumEntities1();

        // GET: tblUsers
        public async Task<ActionResult> Index()
        {
            var tblUsers = db.tblUsers.Include(t => t.tblPerson).Include(t => t.tblPizza).Include(t => t.tblSuburb);
            return View(await tblUsers.ToListAsync());
        }

        // GET: tblUsers/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblUser tblUser = await db.tblUsers.FindAsync(id);
            if (tblUser == null)
            {
                return HttpNotFound();
            }
            return View(tblUser);
        }

        // GET: tblUsers/Create
        public ActionResult Create()
        {
            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName");
            ViewBag.dPizzaID = new SelectList(db.tblPizzas, "dPizzaID", "dIngredients");
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb");
            return View();
        }

        // POST: tblUsers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "dUserID,dSuburbID,dPersonID,dPizzaID,dUserName,dPassword,dPhone")] tblUser tblUser)
        {
            if (ModelState.IsValid)
            {
                db.tblUsers.Add(tblUser);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName", tblUser.dPersonID);
            ViewBag.dPizzaID = new SelectList(db.tblPizzas, "dPizzaID", "dIngredients", tblUser.dPizzaID);
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb", tblUser.dSuburbID);
            return View(tblUser);
        }

        // GET: tblUsers/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblUser tblUser = await db.tblUsers.FindAsync(id);
            if (tblUser == null)
            {
                return HttpNotFound();
            }
            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName", tblUser.dPersonID);
            ViewBag.dPizzaID = new SelectList(db.tblPizzas, "dPizzaID", "dIngredients", tblUser.dPizzaID);
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb", tblUser.dSuburbID);
            return View(tblUser);
        }

        // POST: tblUsers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "dUserID,dSuburbID,dPersonID,dPizzaID,dUserName,dPassword,dPhone")] tblUser tblUser)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblUser).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.dPersonID = new SelectList(db.tblPersons, "dPersonID", "dName", tblUser.dPersonID);
            ViewBag.dPizzaID = new SelectList(db.tblPizzas, "dPizzaID", "dIngredients", tblUser.dPizzaID);
            ViewBag.dSuburbID = new SelectList(db.tblSuburbs, "dSuburbID", "dSuburb", tblUser.dSuburbID);
            return View(tblUser);
        }

        // GET: tblUsers/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblUser tblUser = await db.tblUsers.FindAsync(id);
            if (tblUser == null)
            {
                return HttpNotFound();
            }
            return View(tblUser);
        }

        // POST: tblUsers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            tblUser tblUser = await db.tblUsers.FindAsync(id);
            db.tblUsers.Remove(tblUser);
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
