create definer = root@localhost view product_view as
select `az_db`.`products`.`id`        AS `id`,
       `az_db`.`products`.`name`      AS `name`,
       `az_db`.`products`.`price`     AS `price`,
       `az_db`.`products`.`thumbnail` AS `thumbnail`,
       `az_db`.`products`.`stock`     AS `stock`
from `az_db`.`products`;

create definer = root@localhost view product_cat_view as
select `az_db`.`products`.`id`        AS `product_id`,
       `az_db`.`products`.`name`        AS `pname`,
       `az_db`.`categories`.`id`        AS `category_id`,
       `az_db`.`products`.`thumbnail`   AS `pthumbnail`,
       `az_db`.`categories`.`thumbnail` AS `cthumbnail`,
       `az_db`.`categories`.`name`      AS `cname`
from (`az_db`.`categories` join `az_db`.`products`) where az_db.products.id between 104 and 120;
