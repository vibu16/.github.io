-- -----------------------------------------------------
-- Adding Menu Items in MenuItem Table
-- -----------------------------------------------------
INSERT INTO menu_item
VALUES
(1, 'Sandwich', 99.00, 'Yes', '2017/03/15','Main Course','Yes'),
(2, 'Burger', 129.00, 'Yes', '2017/12/23','Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes', '2018/08/21','Main Course', 'No'),
(4, 'French Fries', 57.00, 'No', '2017/07/02','Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes', '2022/11/02','Dessert', 'Yes');

-- -----------------------------------------------------
-- Displaying Menu Items in MenuItem Table
-- -----------------------------------------------------
select * from menu_item;

-- -----------------------------------------------------
-- Updating Menu Items in MenuItem Table
-- -----------------------------------------------------

UPDATE menu_item
SET me_name="Briyani",me_price=120.00,me_active="Yes",me_date_of_launch='2017/07/02',me_category="Main Course",me_free_delivery="No"
WHERE me_id = 1;

-- -----------------------------------------------------
-- Displaying Menu Items in MenuItem Table After Update
-- -----------------------------------------------------
select * from menu_item;

-- -----------------------------------------------------
-- Adding User in User Table
-- -----------------------------------------------------

INSERT INTO user(us_name)
VALUES('Ben'),('Sarath');

-- -----------------------------------------------------
-- Displaying the Users
-- -----------------------------------------------------
select * from user;

-- -----------------------------------------------------
-- Displaying the Customer Menu Item
-- -----------------------------------------------------
 
 select  me_name, me_free_delivery, me_price, me_category from menu_item 
 where me_active='Yes' and me_date_of_launch  <= (select(curdate()));
 
-- -----------------------------------------------------
-- Adding Items in Cart Table
-- -----------------------------------------------------

 insert into cart(ct_us_id,ct_pr_id) values (1,2);
 insert into cart(ct_us_id,ct_pr_id) values (1,1);
 insert into cart(ct_us_id,ct_pr_id) values (2,1);
 insert into cart(ct_us_id,ct_pr_id) values (2,3);
 
 -- -----------------------------------------------------
-- View Cart
-- -----------------------------------------------------
 select * from cart;

-- -----------------------------------------------------
-- Displaying Cart For User 
-- -----------------------------------------------------

select me_name,me_free_delivery, me_price  from menu_item
inner join cart on ct_pr_id=me_id
where ct_us_id=1;

-- -----------------------------------------------------
-- Displaying Total For User 
-- -----------------------------------------------------

select sum(me_price) as Total from menu_item
inner join cart on ct_pr_id=me_id
where ct_us_id=2;

-- -----------------------------------------------------
-- Remove Item From cart
-- -----------------------------------------------------

delete from cart where ct_us_id=2 and pt_id=1 limit 1;

-- -----------------------------------------------------
-- Displaying Cart For User After Delete
-- -----------------------------------------------------

select me_name,me_free_delivery, me_price  from menu_item
inner join cart on ct_pr_id=me_id
where ct_us_id=1;

-- -----------------------------------------------------
-- Displaying Total For User After Delete
-- -----------------------------------------------------
select sum(me_price) as Total from menu_item
inner join cart on ct_pr_id=me_id
where ct_us_id=1;

 -- -----------------------------------------------------
-- View Cart After Delete
-- -----------------------------------------------------
 select * from cart;