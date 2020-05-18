using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DataModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace project2.Controllers
{
    [Route("api/")]
    [ApiController]
    public class GoodsController : ControllerBase
    {
        public class PaginateGoods
        {
            public string mode { get; set; }
            public int page { get; set; }
            public int count { get; set; }
        }

        [HttpPost("goodsList")]
        public IEnumerable<object> getGoods([FromBody] PaginateGoods paginate)
        {
            using (var db = new PayplDB())
            {
                List<object> goods = new List<object>();
                switch(paginate.mode)
                {
                    case "all":
                    case "popular":
                    case "novelty":
                    case "sale":
                        goods = db.Goods.Select(x => new
                        {
                            x.Id,
                            x.Name,
                            x.Price,
                            x.Discount,
                            x.Description,
                            x.Slug,
                            category_slug = x.Category.Slug,
                            media_link = db.Media.Where(y => y.GoodId == x.Id).Select(y => y.Link).FirstOrDefault(),
                        }).Skip((paginate.page - 1) * paginate.count).Take(paginate.count).ToList<object>();
                            break;
                    default: break;
                }

                return goods;
            }
        }

        [HttpPost("productDetail")]
        public ActionResult<object> good([FromBody] Good good)
        {
            using (var db = new PayplDB())
            {
                return db.Goods.Where(x => x.Slug == good.Slug).Select(x => new
                {
                    x.Id,
                    x.Name,
                    x.Price,
                    x.Discount,
                    x.Description,
                    x.CategoryId,
                    x.Slug,
                    x.UserId,
                    media = db.Media.Where(y => y.GoodId == x.Id).Select(y => y)
                }).FirstOrDefault();
            }
        }
    }
}