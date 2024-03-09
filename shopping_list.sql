CREATE database shoppingLists;

-- Table that represents the list of some items I usually buy at Target store
CREATE TABLE targetList (
    product_id INT AUTO_INCREMENT,
    generic_product_name VARCHAR(15),
    specific_product VARCHAR(15),
    brand VARCHAR(15),
    PRIMARY KEY(product_id)
);

DESCRIBE targetList;

-- Add three rows to targetList table
INSERT INTO targetList(generic_product_name, specific_product, brand) VALUES('Salad Kit', 'Classic Caesar', 'Good & Gather');
INSERT INTO targetList(generic_product_name, specific_product, brand) VALUES('Jam', 'Strawberry', 'Smucker''s');
INSERT INTO targetList(generic_product_name, specific_product, brand) VALUES('Tea', 'Black Decaffeinated', 'Lipton');

-- Attribute "specific_product" was declared with a VARCHAR with a length that is too short
-- Therefore, increase maximum length of VARCHAR from 15 characters to 20 characters
ALTER TABLE targetList
MODIFY COLUMN specific_product VARCHAR(20);

SELECT * FROM targetList;

-- Duplicate table schema of Target list and use duplicate for Cub Foods list table
INSERT INTO cubFoodsList
SELECT product_id, generic_product_name, specific_product, brand
FROM targetList
WHERE 1 < 0;

DESCRIBE cubFoodsList;

