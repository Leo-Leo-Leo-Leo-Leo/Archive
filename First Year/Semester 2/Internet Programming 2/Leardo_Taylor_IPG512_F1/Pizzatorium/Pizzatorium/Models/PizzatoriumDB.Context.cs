﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pizzatorium.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PizzatoriumEntities1 : DbContext
    {
        public PizzatoriumEntities1()
            : base("name=PizzatoriumEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<tblCity> tblCities { get; set; }
        public virtual DbSet<tblDelivery> tblDeliveries { get; set; }
        public virtual DbSet<tblIngredient> tblIngredients { get; set; }
        public virtual DbSet<tblPerson> tblPersons { get; set; }
        public virtual DbSet<tblPizza> tblPizzas { get; set; }
        public virtual DbSet<tblSize> tblSizes { get; set; }
        public virtual DbSet<tblSuburb> tblSuburbs { get; set; }
        public virtual DbSet<tblUser> tblUsers { get; set; }
    }
}
