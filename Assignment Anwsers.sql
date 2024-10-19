#create database emarket;

#use emarket;

#CustomerID,Name,Email,JoinDate

/*create table customers(
customer_id int primary key,
customer_name varchar(20),
email varchar(25),
join_date date
);*/

#OrderID,CustomerID,OrderDate,TotalAmount

/*create table orders(
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal(10,2)
);*/

#CategoryID,CategoryName

/*create table category(
category_id int primary key,
category_name varchar(25)
);*/

#SupplierID,SupplierName,ContactEmail

/*create table suppliers(
supplier_id int primary key,
supplier_name varchar(25),
email varchar(25)
);*/

#ProductID,ProductName,CategoryID,SupplierID,Price

/*create table products(
product_id int primary key,
product_name varchar(25),
category_id int,
supplier_id int,
price decimal(10,2)
);*/
/*insert into customers(customer_id,customer_name,email,join_date)values
(11,'Sumanth','sumanthmr0103@gmail.com','2024-10-19');*/

/*insert into category(category_id,category_name)values
(311,'Laptops');*/

/*insert into orders(order_id,customer_id,order_date,total_amount)values
(111,11,'2024-10-19',650.00);*/

/*insert into suppliers(supplier_id,supplier_name,email)values
(411,'Besant Technologies','besanttech@gmail.com');*/

/*insert into products(product_id,product_name,category_id,supplier_id,price)values
(211,'HP Laptop',311,411,650.00);*/

#rename table category to categories;

#1.Query
/*select count(p.product_name) as total_products, c.category_name from products as p
inner join categories as c
on p.category_id = c.category_id
group by c.category_name
having total_products > 5;*/

#2.Query
/*select c.customer_name, sum(o.total_amount) as Total_Order_Value from customers as c
left join orders as o 
on c.customer_id = o.customer_id
group by c.customer_name
having Total_Order_Value between 500.00 and 1000.00;*/

#3.Query
/*select o.order_date, c.customer_name from orders as o
inner join customers as c
on o.customer_id = c.customer_id
where o.order_date between '2024-01-01' and '2024-12-31'
order by o.order_date desc;*/

#4.Query
/*select s.supplier_name, count(p.product_name) as Total_Products from suppliers as s
left join products as p
on s.supplier_id = p.supplier_id
where s.supplier_name like 'a%'
group by s.supplier_name;*/

#5.Query
/*select p.product_name, c.category_name from products as p
left join categories as c
on p.category_id = c.category_id
where p.product_name like '%phone%'
order by product_name;*/

#select * from customers;
#select * from orders;
#select * from category;
#select * from suppliers;
#select * from products;
#commit;