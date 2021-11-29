

create table Brands(
    ID numeric not null ,
    Name varchar(10) not null,
    primary key (ID, Name)
);

insert into Brands values (1, 'Danone');
insert into Brands values (2, '');
insert into Brands values (3, 'Danone');
insert into Brands values (4, 'Danone');
insert into Brands values (5, 'Danone');



create table Products(
    UPC_code varchar(8) ,
    Name varchar(10) ,
    Price int,
    Brand_ID numeric not null ,
    Brand_Name varchar(10) not null ,
    Size varchar(8) not null,
    primary key (UPC_code, Name, Price),
    foreign key (Brand_ID,Brand_Name) references Brands(ID, Name)
);

create table Type(
    ID numeric  ,
    Name varchar(8) ,
    UPC_code varchar(8) not null ,
    Product_name varchar(10) not null ,
    Price int not null ,
    primary key (ID, Name),
    foreign key (UPC_code, Product_name, Price) references Products(UPC_code, Name, Price)
);


create table Vendors(
    ID numeric primary key ,
    First_name varchar(10) not null ,
    Last_name varchar(10) not null,
    UPC_code varchar(8) not null ,
    Product_Name varchar(10) not null ,
    Price int not null ,
    Brand_ID numeric not null ,
    Brand_Name varchar(10) not null,
    foreign key (UPC_code, Product_Name, Price) references Products(UPC_code, Name, Price),
    foreign key (Brand_ID, Brand_Name) references Brands(ID, Name)
);

create table Address(
    ID numeric not null ,
    City varchar(8) not null ,
    Street varchar(8) not null ,
    Number varchar(8) not null ,
    foreign key (ID) references Vendors(ID)
);


create table Phone(
    ID numeric not null ,
    Phone_number varchar(10) not null,
    foreign key (ID) references Vendors(ID)
);



create table Stores(
    ID numeric  ,
    Name varchar(10)  ,
    Address varchar(10),
    Vendor_ID numeric not null ,
    working_hours varchar not null ,
    UPC_code varchar(8) ,
    Product_Name varchar(10) ,
    Price int,
    primary key (ID, Name),
    foreign key (Vendor_ID) references Vendors(ID),
    foreign key (UPC_code, Product_Name, Price) references Products(UPC_code, Name, Price)
);

create table Orders(
    ID numeric not null ,
    Reciept_number numeric  not null ,
    Total_price numeric not null ,
    Date date not null ,
    Status varchar(10) not null,
    primary key (ID, Reciept_number)
);



create table List_of_Products(
    ID numeric primary key ,
    UPC_code varchar(8) not null ,
    Name varchar(8) not null ,
    Price int not null ,
    Order_ID numeric not null ,
    Reciept_number numeric not null ,
    foreign key (UPC_code, Name, Price) references Products(UPC_code, Name, Price),
    foreign key (Order_ID, Reciept_number) references Orders(ID,Reciept_number)
);

create table Cash(
    ID numeric not null ,
    Receipt_number numeric not null,
    Sum numeric not null ,
    Status varchar(8) not null ,
    Date date not null  ,
    foreign key (ID, Receipt_number) references Orders(ID,Reciept_number)
);

create table Online(
    ID numeric  ,
    Bank_account numeric  ,
    Receipt_number numeric not null ,
    Sum numeric not null ,
    Status varchar(8) not null ,
    Date date not null  ,
    primary key (ID, Bank_account),
    foreign key (ID, Receipt_number) references Orders(ID, Reciept_number)
);

create table Online_customers(
    ID numeric primary key ,
    Bank_account numeric not null ,
    First_Name varchar(8) not null,
    Last_Name varchar(8) not null ,
    Address varchar(10) not null ,
    Phone varchar(10) not null,
    foreign key (ID, Bank_account) references Online(ID, Bank_account)
);





-- drop table Online;
-- drop table Products;
--
-- drop table Online_customers;
-- drop table vendors cascade;
-- drop table brands;
-- drop table stores;
