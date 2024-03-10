USE product_sale;
create table products
(
 product_id INT(10) NOT NULL,
 product_code VARCHAR (10) NOT NULL,
 product_name varchar(50) NOT NULL,
 product_quantity int(10)NOT NULL,
 product_price int (100)NOT NULL,
 PRIMARY KEY (product_id)
);
 
 use product_sale;
 SELECT * FROM products;

 INSERT INTO products
 value
('11','IPH','IPHONE11','150','24000'),
('12','SMG','SAMSUNG','150','25000'),
('13','OPPO','OPPOF21','50','15000'),
('14','RLME','REALME 13','50','24000');

#DISTINCT CLAUS -WHICH PROVIDE UNIQUE DATA RATHER THAN EVERY DATA IN A TABLE ,SELECT product_name from products
#LIKE OPERATOR-WHICH SHOWS DATA SIMILAR TO EACH OTHER ,USED IN WHERE CLAUS
 select product_name from products where product_name like '%A%';
 
 # IN OPERATOR AND OR OPERATOR- USED TO EXTRACT DATA REGARDING MULTIPLE VALUES
 SELECT * FROM products where (product_name ='IPHONE11' OR product_name='SAMSUNG');
 SELECT * FROM products where product_name IN ('OPPOF21','REALME 13');
 
 #BETWEEN OPERATOR -DATA BETWEEN TWO CONDITION
 SELECT * FROM products WHERE product_price between 15000 AND 25000;
 
 #order by claus - used to sort data,asc-qproductsproductsPRIMARYdesc
 USE product_sale;
 SELECT * from products order by product_price DESC;
 
 #ALIASING -changing column name by using AS statement
 USE product_sale;
 select * from products;
 select product_code as 'product_number';
 
 #GROUP BY 
 select product_code from products group by product_code;
select product_code,count(product_code) as counter
 from products 
 group by product_code
 order by product_code DESC;
 
ALTER TABLE products
add supplier_id int(30)NOT NULL;
#;
use product_sale;
UPDATE products 
SET supplier_id='501';

select * from products;

 select * from products;
 
ALTER TABLE products 
DROP column supplier_;
use product_sale;
CREATE TABLE suppliers(
supplier_id int(10)NOT NULL,
supplier_name varchar(50) NOT NULL,
supplier_number int(50)NOT NULL,
primary key (supplier_id)
);
SELECT*FROM suppliers;
INSERT INTO suppliers
values
('501','ABS COMPANY','88881111'),
('502','XYZ COMPANY','88882222'),
('503','PQR COMPANY','88882222');

