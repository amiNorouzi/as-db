insert into options (option_name)
values ('IP68');
insert into options (option_name)
values ('Quick charges');
insert into options (option_name)
values ('Wireless charges');
insert into options (option_name)
values ('IP67');
insert into options (option_name)
values ('always on display');

insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
values ('DGK1234', 'S21', 1000, 210, 'Samsung', 'phone1.png', 'phone1.png', 'phone', created_at, 100);
insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
values ('DGK1235', 'Iphone 11', 222, 190, 'Apple', 'phone2.png', 'phone2.png', 'phone', created_at, 100);
insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
values ('DGK1236', 'Iphone 12', 3232, 195, 'Apple', 'phone3.png', 'phone3.png', 'phone', created_at, 100);
insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
values ('DGK1237', 'Galaxy note 20', 332, 200, 'Samsung', 'phone4.png', 'phone4.png', 'phone', created_at, 100);
insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
values ('DGK1238', 'Redmi 10', 100, 180, 'Xiaomi', 'phone5.png', 'phone5.png', 'phone', created_at, 100);

insert into product_options (option_id, product_id)
values (1, 2);
insert into product_options (option_id, product_id)
values (1, 3);
insert into product_options (option_id, product_id)
values (2, 3);
insert into product_options (option_id, product_id)
values (2, 4);
insert into product_options (option_id, product_id)
values (4, 4);

insert into categories (name, description, thumbnail)
values ('Phone', 'Mobile', 'mobile.png');
insert into categories (name, description, thumbnail)
values ('TV', 'TV', 'tv.png');
insert into categories (name, description, thumbnail)
values ('Sports', 'Sports', 'Sports.png');
insert into categories (name, description, thumbnail)
values ('Speakers', 'Speakers', 'Speakers.png');
insert into categories (name, description, thumbnail)
values ('Headphones', 'Headphones', 'Headphones.png');

insert into product_categories (product_id, category_id)
values (1, 2);
insert into product_categories (product_id, category_id)
values (1, 3);
insert into product_categories (product_id, category_id)
values (2, 3);
insert into product_categories (product_id, category_id)
values (2, 4);
insert into product_categories (product_id, category_id)
values (4, 4);

insert into customers (email, password, full_name, billing_address, default_shipping_address, country, phone)
values ('axyz2022@gmail.cpm', 'S21', 'FullName1', 'billing_address1', 'default_shipping_address1', 'iran', 9180000000);
insert into customers (email, password, full_name, billing_address, default_shipping_address, country, phone)
values ('bxyz2022@gmail.com', 'Iphone 11', 'FullName2', 'billing_address2', 'default_shipping_address2', 'iran',
        9180000000);
insert into customers (email, password, full_name, billing_address, default_shipping_address, country, phone)
values ('cxyz2022@gmail.com', 'Iphone 12', 'FullName3', 'billing_address3', 'default_shipping_address3', 'iran',
        9180000000);
insert into customers (email, password, full_name, billing_address, default_shipping_address, country, phone)
values ('dxyz2022@gmail.com', 'Galaxy note 20', 'FullName4', 'billing_address4', 'default_shipping_address4', 'iran',
        9180000000);
insert into customers (email, password, full_name, billing_address, default_shipping_address, country, phone)
values ('exyz2022@gmail.com', 'Redmi 10', 'FullName5', 'billing_address', 'default_shipping_address5', 'iran',
        9180000000);

insert into orders (oder_email, customer_id, amount, order_address, shopping_address, order_date, order_status)
values ('axyz2022@gmail.cpm', 1, 1, 'order_address1', 'shipping_address1', order_date, 'active');
insert into orders (oder_email, customer_id, amount, order_address, shopping_address, order_date, order_status)
values ('bxyz2022@gmail.com', 1, 2, 'order_address2', 'shipping_address2', order_date, 'active');
insert into orders (oder_email, customer_id, amount, order_address, shopping_address, order_date, order_status)
values ('cxyz2022@gmail.com', 3, 3, 'order_address3', 'shipping_address3', order_date, 'active');
insert into orders (oder_email, customer_id, amount, order_address, shopping_address, order_date, order_status)
values ('dxyz2022@gmail.com', 4, 4, 'order_address4', 'shipping_address4', order_date, 'active');
insert into orders (oder_email, customer_id, amount, order_address, shopping_address, order_date, order_status)
values ('exyz2022@gmail.com', 4, 5, 'order_address', 'shipping_address5', order_date, 'active');
