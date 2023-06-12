DELIMITER //

CREATE PROCEDURE get_ten_product()
BEGIN
   SELECT * FROM products ORDER BY id DESC LIMIT 10;
END //

DELIMITER ;
CALL get_ten_product();

DELIMITER //

CREATE PROCEDURE get_n_product(n INT)
BEGIN
   SELECT * FROM products ORDER BY id DESC LIMIT n;
END //

DELIMITER ;
CALL get_n_product(5);

DELIMITER //

CREATE PROCEDURE insert_product($sku varchar(64), $name varchar(64))
BEGIN
   insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
   values ($sku, $name, 1000, 210, 'Samsung', 'phone1.png', 'phone1.png', 'phone', created_at,
           100);
END //

DELIMITER ;
CALL insert_product('DGK2423', 'Apple');
