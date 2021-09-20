-- 1
-- * Data-definition language used to specify schemas, define data structures.
-- For instance: create table, alter table, drop table.
-- *Data-manipulation language used to express database queries and updates, manipulate data itself.
-- For example: insert, update, delete, select.



-- 2
create table customers(
    id int not null ,
    full_name varchar(50) not null,
    timestamp timestamp not null,
    delivery_address text not null,
    primary key (id)
    );

select * from customers;

create table orders(
    code int not null ,
    customer_id int,
    total_sum double precision check ( total_sum > 0) not null ,
    is_paid boolean not null ,
    primary key (code),
    foreign key (customer_id) references customers
);

-- drop table orders;

select * from orders;

create table products(
    id varchar,
    name varchar unique not null ,
    description text,
    price double precision not null check ( price > 0 ),
    primary key (id)
);
-- drop table products CASCADE ;
select * from products;

create table order_items(
    order_code int not null ,
    product_id varchar not null ,
    quantity int not null check ( quantity > 0 ),
    foreign key (order_code) references orders,
    foreign key (product_id) references products
);


select * from order_items;
-- drop table order_items;

