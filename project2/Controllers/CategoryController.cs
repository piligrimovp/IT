using DataModels;
using LinqToDB;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace project2.Controllers
{
    [Route("api/")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        [HttpPost("categoryMap")]
        public IEnumerable<object> getMap()
        {
            using (var db = new PayplDB())
            {
                List<object> tasks = db.Categories.Where(x => x.ParentId == null)
                    .Select(x => new
                    {
                        x.Id,
                        x.Name,
                        x.Slug,
                        x.Tax,
                        children = getChildren(x)
                    }).ToList<object>();
                return tasks;
            }
        }

        private IEnumerable<object> getChildren(Category category)
        {
            using (var db = new PayplDB())
            {
                return (from cat in db.Categories
                        where cat.ParentId == category.Id
                        select new
                        {
                            cat.Id,
                            cat.Name,
                            cat.Slug,
                            cat.Tax,
                            children = getChildren(cat)
                        }).ToArray();
            }
        }

        public class PaginateCategory
        {
            public string category { get; set; }
            public int count { get; set; }
            public int page { get; set; }
        }

        [HttpPost("category")]
        public ActionResult<string> getCategory([FromBody] PaginateCategory paginate)
        {
            using (var db = new PayplDB())
            {
                double pages;
                Category[] categories = new Category[] { }; object[] products = new object[] { };
                if (paginate.category.Length == 0)
                {
                    categories = db.Categories.Where(x => x.ParentId == null).ToArray();
                    products = db.Goods.Where(x => categories.Contains(new Category() { Id = x.CategoryId }))
                        .Select(x => new
                        {
                            x.Id,
                            x.Name,
                            x.Price,
                            x.Discount,
                            x.Description,
                            x.Slug,
                            media_link = db.Media.Where(y => y.GoodId == x.Id).Select(y => y.Link).FirstOrDefault(),
                            category_slug = x.Category.Slug
                        }).Skip((paginate.page - 1) * paginate.count).Take(paginate.count).ToArray<object>();
                    pages = Math.Ceiling(db.Goods.Count() / (double)paginate.count);
                }
                else
                {
                    Category oCategory = db.Categories.Where(x => x.Slug == paginate.category).FirstOrDefault();
                    List<int> categories_id = new List<int>() { oCategory.Id };
                    if (oCategory.ParentId == null)
                    {
                        categories = db.Categories.Where(x => x.ParentId == null).Select(x => x).ToArray();
                    }
                    else
                    {
                        categories = db.Categories.Where(x => x.Slug == paginate.category).Select(x => x).ToArray();

                    }
                    var cats = db.Categories.Where(x => x.ParentId == oCategory.Id);
                    foreach (var cat in cats) {
                        categories_id.Add(cat.Id);
                    }
                    products = db.Goods.Where(x => categories_id.Contains(x.CategoryId)).Select(x => x)
                        .Skip((paginate.page - 1) * paginate.count).Take(paginate.count).ToArray();
                    pages = Math.Ceiling(db.Goods.Where(x => categories_id.Contains(x.CategoryId)).Count() / (double)paginate.count);
                }
                return Newtonsoft.Json.JsonConvert.SerializeObject(new { categories = categories, products = products, pages = pages },
                    new Newtonsoft.Json.JsonSerializerSettings()
                    {
                        Formatting = Newtonsoft.Json.Formatting.Indented,
                        ContractResolver = new Newtonsoft.Json.Serialization.DefaultContractResolver()
                        {
                            NamingStrategy = new Newtonsoft.Json.Serialization.SnakeCaseNamingStrategy()
                        }
                    });
            }
        }

        [HttpGet("catalog")]
        public ActionResult<string> getBreadcrumb()
        {
            return Breadcrumb();
        }

        [HttpGet("catalog/{slug}")]
        public ActionResult<string> getBreadcrumb([FromRoute] string slug)
        {
            return Breadcrumb(slug);
        }

        [HttpGet("catalog/{slug}/{product}")]
        public ActionResult<string> getBreadcrumb([FromRoute] string slug, [FromRoute] string product)
        {
            return Breadcrumb(slug, product);
        }

        public class BreadcrumbClass
        {
            public string name { get; set; }
            public string link { get; set; }
        }

        public string Breadcrumb(string slug = "", string product = "")
        {
            List<BreadcrumbClass> breadcrumbs = new List<BreadcrumbClass>() { new BreadcrumbClass { name = "Каталог", link = "/catalog" } };
            using (var db = new PayplDB())
            {
                var category = db.Categories.Where(x => x.Slug == slug).Select(x => x).FirstOrDefault();
                if (category != null)
                {
                    do
                    {
                        breadcrumbs.Add(new BreadcrumbClass() { name = category.Name, link = $"/catalog/{category.Slug}" });
                        category = category.Parent;
                    } while (category != null);
                }
                var prod = db.Goods.Where(x => x.Slug == product).Select(x => x).FirstOrDefault();
                if (prod != null)
                {
                    breadcrumbs.Add(new BreadcrumbClass() { name = prod.Name, link = "" });
                }
            }
            return Newtonsoft.Json.JsonConvert.SerializeObject(breadcrumbs);
        }
    }
}