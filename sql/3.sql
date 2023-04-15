DELIMITER //

CREATE PROCEDURE insert_fake_data()
BEGIN
    FOR i IN 1..1000000 DO
    insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
    values (concat('DGK123', i), 'S21', 1000, 210, 'Samsung', 'phone1.png', 'phone1.png', 'phone', created_at, 100);
END FOR;
END //

DELIMITER ;

CALL insert_fake_data();

select * from products
