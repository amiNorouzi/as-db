update options
set option_name = 'ضد آب'
where id = 5;

# ? ------------------------
delete
from options
where id = 5;

# ? ------------------------
drop table options;

# ? ------------------------
insert into options (option_name)
values ('IPX8');

# ? ------------------------
insert into options (id, option_name)
values (5, 'IPX8');

# ? ------------------------
select option_name
from options
where id between 3 and 5;

# ? ------------------------
select *
from orders
         join order_details on orders.id = order_details.order_id;

# ? ------------------------
select id, count(id)
from order_details
group by order_id;

# ? ------------------------
select id, count(id) as num_details
from order_details
group by order_id
having num_details > 1;

# ? ------------------------
select *
from options
where option_name like '%IP%';

# ? ------------------------
SELECT *
FROM options
WHERE option_name NOT LIKE '%IP%';

# ? ------------------------
alter table options
    add fulltext option_name (option_name);

# create fulltext index option_name
#     on options (option_name);

# ? ------------------------
select *
from options
where match (option_name) against ('%IP% *');

# ? ------------------------
select *
from options
where not match (option_name) against ('%IP% *');

# ? descending and ascending
select *
from options
where not match (option_name) against ('%IP% *')
order by id DESC;

# ? ------------------------
select *
from options
where match (option_name) against ('%ip% *')
order by match (option_name) against ('%ip% *') desc;

# ? ------------------------
select option_name, match (option_name) against ('%ip6% *') as score
from options
where match (option_name) against ('%ip6% *')
order by score desc;

# ? ------------------------
select *
from options
where id between 3 and 5;

alter table options
    add column if not exists age int;

select *
from options
limit 3;
