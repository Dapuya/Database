create table Brands(
    ID numeric not null ,
    Name varchar(10) not null,
    primary key (ID, Name)
);

create table Type(
    ID numeric  ,
    Name varchar(20) ,
    primary key (ID, Name)
);

create table Products(
    UPC_code varchar(8) ,
    Name varchar(30) ,
    Price int,
    Type_ID numeric not null ,
    Type_Name varchar(20) not null ,
    Brand_ID numeric not null ,
    Brand_Name varchar(10) not null ,
    Size varchar(8) not null,
    primary key (UPC_code, Name, Price, Size),
    foreign key (Brand_ID,Brand_Name) references Brands(ID, Name),
    foreign key (Type_ID, Type_Name) references Type(ID, Name)
);



create table Vendors(
    ID numeric not null ,
    First_name varchar(10) not null ,
    Last_name varchar(10) not null,
    primary key (ID)
);


create table Address(
    ID numeric primary key ,
    City varchar(20) not null ,
    Street varchar(20) not null ,
    Number varchar(8) not null ,
    foreign key (ID) references Vendors(ID)
);

create table Phone(
    ID numeric,
    Phone_number varchar(15) not null,
    foreign key (ID) references Vendors(ID)
);

create table Store(
    ID numeric  ,
    Name varchar(20)  ,
    Address varchar(20),
    working_hours varchar not null ,
    primary key (ID, Name)
);

create table Store_Orders(
    ID int  ,
    Name varchar(20) ,
    Vendor_ID numeric not null ,
    Brand_ID numeric not null ,
    Brand_Name varchar(20),
    UPC_code varchar(8) ,
    Product_Name varchar(20) ,
    Price int,
    Size varchar(8) not null,
    amount numeric not null ,
    primary key (UPC_code, Product_Name, Price, Size),
    foreign key (ID, Name) references Store(ID, Name),
    foreign key (Brand_ID, Brand_Name) references Brands(ID, Name) ,
    foreign key (UPC_code, Product_Name, Price, Size) references Products(UPC_code, Name, Price, Size)
);



create table Order_items(
    ID int generated always as identity ,
    Store_ID int,
    Store_Name varchar(20),
    UPC_code varchar(50) not null ,
    Name varchar(50) not null ,
    Price int not null ,
    Size varchar(50) not null,
    Amount int not null ,
    primary key (ID),
    foreign key ( UPC_code, Name, Price,Size) references Store_Orders( UPC_code, Product_Name, Price,Size),
    foreign key (Store_ID, Store_Name) references Store(ID, Name)
);


create table Orders(
    ID_for_Orders int,
    Summa int ,
    Dates timestamp not null,
    primary key (ID_for_Orders, summa),
    foreign key (ID_for_Orders) references Order_items(ID)
);

create function for_orders()
returns trigger
language plpgsql
as $$
    declare summa int;
    begin
        Summa = (select price*Amount from Order_items where ID = new.id);
        insert into Orders values (new.ID, Summa, now());
        return new;
    end;
    $$;


create trigger orders
after insert
    on Order_items
    for each row
    execute procedure for_orders();


create table Cash(
    Orders_ID int not null ,
    Receipt_number varchar(6) not null,
    Sum int not null,
    Date timestamp not null ,
    primary key (Orders_ID,Receipt_number, sum),
    foreign key (Orders_ID, sum) references Orders(ID_for_Orders, summa)
);

create table Online(
    Order_ID int  ,
    Bank_account varchar(16)  ,
    Receipt_number varchar(6) not null ,
    Sum int not null ,
    Date timestamp not null  ,
    primary key (Order_ID, Bank_account, Sum),
    foreign key (Order_ID, Sum) references Orders(ID_for_Orders, summa)
);

create table Online_customers(
    ID int primary key ,
    Bank_account varchar(16) not null ,
    sum int not null ,
    First_Name varchar(30) not null,
    Last_Name varchar(30) not null ,
    Address varchar(30) not null ,
    Phone varchar(15) not null,
    foreign key (ID, Bank_account, Sum) references Online(Order_ID, Bank_account, sum)
);



drop table Orders;
drop table order_items;
drop function for_orders();

drop table online_customers;
drop table Online;
drop table Cash;

-- drop table Online_customers;
-- drop table vendors cascade;
-- drop table brands;
drop table store;
