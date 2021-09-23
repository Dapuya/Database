-- 4
create table customers(
    id int not null ,
    full_name varchar not null,
    timestamp timestamp not null,
    delivery_address varchar not null,
    primary key (id)
    );

select * from customers;
drop  table  "customers" cascade;

create table orders(
    code int not null ,
    customer_id int not null ,
    total_sum double precision check ( total_sum > 0) not null ,
    is_paid boolean not null ,
    primary key (code),
    foreign key (customer_id) references customers
);

drop table orders cascade ;
select * from orders;

create table products(
    id varchar not null ,
    name varchar unique not null ,
    description text,
    price double precision not null check ( price > 0 ),
    primary key (id)
);

drop table products CASCADE ;
select * from products;

create table order_items(
    order_code int not null ,
    product_id varchar not null ,
    quantity int not null check ( quantity > 0 ),
    primary key (order_code, product_id),
    foreign key (order_code) references orders,
    foreign key (product_id) references products
);

drop table order_items cascade ;
select * from order_items;

insert into customers (id,  full_name, timestamp, delivery_address)
values ( 100,'Nursultanova', current_timestamp, 'Abay 110' );

insert into customers (id,  full_name, timestamp, delivery_address)
values ( 101,'Nazar', current_timestamp, 'Nazarbayeva 1' );

insert into orders( code,customer_id, total_sum, is_paid)
values ( 123,100, 12091.54, True);

insert into orders( code, customer_id, total_sum, is_paid)
values ( 124, 101, 10120, FALSE);

insert into products( id, name, description, price)
values (  01, 'bike',
        'blue with massive wheels',  12091.5);

insert into products(id,  name, description, price)
values ( 02, 'skate', 'red with yellow wheels',  10000);

insert into order_items(order_code, product_id, quantity)
values (123, 01, 2);

update customers
set full_name = 'Nursultanova Dariya', delivery_address = 'Abay 111'
where id = 100;

delete from products
where id = 2;

delete from orders
where customer_id = 101;


-- insert update delete