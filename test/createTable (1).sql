create table card_details(
    card_id int not null,
    card_name varchar not null ,
    cvv int not null ,
    brand varchar,
    primary key (card_id)
);
create table online_customer(
    customer_id int not null,
    address varchar,
    country varchar,
    city varchar,
    postal_code int,
    street varchar,
    apart int,
    date date,
    number varchar,
    first_name varchar not null,
    second_name varchar not null,
    primary key (customer_id)
);
create table card_info (
    customer_id int references online_customer(customer_id),
    card_id int references card_details(card_id),
    primary key (customer_id, card_id)
);


create table account(
    account_id int not null,
    date date not null,
    primary key (account_id)
);

create table bill(
    customer_id int ,
    account_id int references account(account_id),
    primary key (customer_id, account_id),
    foreign key (customer_id) references online_customer(customer_id),
    foreign key (account_id)  references account(account_id)
);

create table product(
    product_id int not null primary key ,
    name varchar not null,
    amount int not null,
    price int not null
);

create table category(
    category_id int not null primary key,
    category_name varchar not null
);

create table categ(
    product_id int references product(product_id),
    category_id int references category(category_id),
    primary key (product_id, category_id)
);


create table manufacture(
    manufacture_id int not null primary key,
    manufacture_name varchar not null
);

create table manufact(
    product_id int references product(product_id),
    manufacture_id int references manufacture(manufacture_id),
    primary key (product_id, manufacture_id)
);

create table store(
    store_id int not null,
    store_name varchar not null,
    store_region varchar not null,
    primary key (store_id)
);


create table prod(
    product_id int references product(product_id),
    store_id int references store(store_id),
    primary key (product_id, store_id)
);

create table info_purchase(
    info_id int not null,
    tracking_number varchar,
    date_info date,
    primary key (info_id)
);

create table info_store(
        info_id int references info_purchase(info_id),
    store_id int references store(store_id),
    primary key (info_id, store_id)
);

create table ship_company(
    ship_id int not null,
    ship_name varchar not null,
    delivery_method varchar,
    primary key (ship_id)
);

create table info_ship(
    info_id int references info_purchase(info_id),
    ship_id int references ship_company(ship_id),
    primary key (info_id, ship_id)
);

create table offline_customer(
    customer_id int not null primary key
);

create table info_offline(
    info_id int references info_purchase(info_id),
    customer_id int references offline_customer(customer_id),
    primary key (info_id, customer_id)
);

create table info_online(
    info_id int references info_purchase(info_id),
    customer_id int references online_customer(customer_id),
    primary key (info_id, customer_id)
);


