create table products
(
    id          int primary key auto_increment,
    sku         varchar(20)  not null unique,
    name        varchar(128) not null,
    price       int          not null,
    weight      int          not null,
    description text         not null,
    thumbnail   varchar(128) not null,
    image       varchar(128) not null,
    category    varchar(64)  not null,
    created_at  timestamp    not null default current_timestamp,
    stock       int          not null,
    fulltext (name)
);

create table customers
(
    id                       int primary key auto_increment,
    email                    varchar(64)  not null,
    password                 varchar(128) not null,
    full_name                varchar(64)  not null,
    billing_address          text         null,
    default_shipping_address text         null,
    country                  varchar(64)  null,
    phone                    int          not null
);

create table categories
(
    id          int primary key auto_increment,
    name        varchar(64)  not null,
    description text         null,
    thumbnail   varchar(128) null
);

create table options
(
    id          int primary key auto_increment,
    option_name varchar(64) not null
);

create table `orders`
(
    id               int primary key auto_increment,
    customer_id      int         not null references customers (`id`),
    amount           int         not null,
    shopping_address text,
    order_address    text,
    oder_email       varchar(64) not null,
    order_date       datetime    not null,
    order_status     enum ('active','reserved')
);

create table order_details
(
    id         int primary key auto_increment,
    order_id   int         not null references orders (`id`),
    product_id int         not null references products (`id`),
    price      int,
    sku        varchar(20) not null,
    quantity   int         not null
);

create table product_options
(
    id         int primary key auto_increment,
    option_id  int not null references product_options (`id`),
    product_id int not null references product_options (`id`)
);

create table product_categories
(
    id          int primary key auto_increment,
    product_id  int not null references products (`id`),
    category_id int not null references categories (`id`)
);
