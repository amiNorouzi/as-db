create view product_view as
select id, name, price, thumbnail, stock
from products;

create view product_cat_view as
select products.id          AS product_id,
       products.name        AS pname,
       categories.id        AS category_id,
       products.thumbnail   AS pthumbnail,
       categories.thumbnail AS cthumbnail,
       categories.name      AS cname
from (categories join products)
where products.id between 104 and 120;
