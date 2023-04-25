#? for
DELIMITER //

CREATE PROCEDURE insert_fake_data()
BEGIN
    FOR i IN 1..1000 DO
    insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
    values (concat('DGK123', i), 'S21', 1000, 210, 'Samsung', 'phone1.png', 'phone1.png', 'phone', created_at, 100);
END FOR;
END //

DELIMITER ;

CALL insert_fake_data();

# ? loop
DELIMITER //

CREATE PROCEDURE insert_fake_data_with_loop()
BEGIN
    DECLARE i INT DEFAULT 1;
    loop_over_data: LOOP
        IF i > 100 THEN
            LEAVE loop_over_data;
        END IF;
        insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
        values (concat('DGK123', i), 'S21', 1000, 210, 'Samsung', 'phone1.png', 'phone1.png', 'phone', created_at, 100);
        SELECT i;
        SET i = i + 1;
    END LOOP;
END //

DELIMITER ;

CALL insert_fake_data_with_loop();

#? while
DELIMITER //

CREATE PROCEDURE insert_fake_data_with_while()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 1000
        DO
            insert into products (sku, name, price, weight, description, thumbnail, image, category, created_at, stock)
            values (concat('DGK123', i), 'S21', 1000, 210, 'Samsung', 'phone1.png', 'phone1.png', 'phone', created_at,100);
            SELECT i;
            SET i = i + 1;
        END WHILE;
END //

DELIMITER ;
CALL insert_fake_data_with_while();
