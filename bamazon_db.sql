drop database if exists bamazon_db;

create database bamazon_db;

use bamazon_db;

create table products (
    id integer not null auto_increment,
    product_name varchar (45) null,
    department varchar (45) null,
    price decimal (10.2) null,
    stock integer null,
    primary key (id)
);

insert into products (product_name, department, price, stock)
values ("Basic Economics", "Books", 24.9, 10);
insert into products (product_name, department, price, stock)
values ("Frasier", "DVD", 10, 25);
insert into products (product_name, department, price, stock)
values ("Nirvana", "Music", 7.5, 20);
insert into products (product_name, department, price, stock)
values ("Sony", "TVs", 200, 48);
insert into products (product_name, department, price, stock)
values ("Microsoft", "Laptops", 2350, 20);
insert into products (product_name, department, price, stock)
values ("IPhone X", "Smartphones", 800, 30);
insert into products (product_name, department, price, stock)
values ("G.I. Joe", "Toys", 18, 50);
insert into products (product_name, department, price, stock)
values ("Nautica", "Clothing", 39, 10);
insert into products (product_name, department, price, stock)
values ("Soccer ball", "Sports", 37, 30);
insert into products (product_name, department, price, stock)
values ("Orange Juice", "Groceries", 6.5, 60);

