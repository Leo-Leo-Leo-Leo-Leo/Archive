using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pizzatorium.Models;

namespace Pizzatorium.Controllers
{
    public class PizzasController : Controller
    {
        // GET: Pizzas
        [HttpGet]
        public ActionResult AddOrEdit(int id = 0)
        {
            tblPizza pizza = new tblPizza();

            using (PizzatoriumEntities1 db = new PizzatoriumEntities1())
            {
                if (id != 0)
                {
                    pizza = db.tblPizzas.Where(x => x.dPizzaID == id).FirstOrDefault();

                    //Multi Select Dropdown
                    pizza.SelectedIngredientIDArray = pizza.dIngredients.Split(',').ToArray();
                }

                pizza.IngredientsCollection = db.tblIngredients.ToList();

                if (id != 0)
                {
                    pizza = db.tblPizzas.Where(x => x.dPizzaID == id).FirstOrDefault();

                    //Multi Select Dropdown
                    pizza.SelectedSizesIDArray = pizza.dSizeID.ToArray();
                }

                pizza.SizesCollection = db.tblSizes.ToList();
            }
            return View();
        }
        [HttpPost]
        public ActionResult AddOrEdit(tblPizza pizza)
        {
            pizza.dIngredients = string.Join(",", pizza.SelectedIngredientIDArray);

            using (PizzatoriumEntities1 db = new PizzatoriumEntities1())
            {
                if (pizza.dPizzaID == 0)
                {
                    db.tblPizzas.Add(pizza);
                }
                else
                {
                    db.Entry(pizza).State = EntityState.Modified;
                }
                db.SaveChanges();
            }

            return RedirectToAction("AddOrEdit", new { id = 0 });
        }
    }
}