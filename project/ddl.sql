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
    primary key (ID, Name, Address)
);

create table Store_Orders(
    ID numeric,
    Name varchar(20) ,
    Address varchar(20),
    Vendor_ID numeric not null ,
    Brand_ID numeric not null ,
    Brand_Name varchar(20),
    UPC_code varchar(8) ,
    Product_Name varchar(20) ,
    Price int,
    Size varchar(8) not null,
    amount numeric not null ,
    foreign key (ID, Name, Address) references Store(ID, Name, Address),
    foreign key (Brand_ID, Brand_Name) references Brands(ID, Name) ,
    foreign key (UPC_code, Product_Name, Price, Size) references Products(UPC_code, Name, Price, Size)
);

create table List_of_Products(
    ID numeric ,
    UPC_code varchar(8) not null ,
    Name varchar(8) not null ,
    Price int not null ,
    Size varchar(8) not null,
    Amount numeric not null ,
    Reciept_number varchar(6) not null ,
    primary key (ID, Reciept_number),
    foreign key (UPC_code, Name, Price,Size) references Products(UPC_code, Name, Price,Size)
);


create table Final_Order(
    ID numeric not null ,
    Reciept_number varchar(6) not null ,

);


create table Orders(
    ID numeric not null ,
    Reciept_number varchar(6)  not null ,

    Date date not null ,
    primary key (ID, Reciept_number),
    foreign key (ID, Reciept_number) references List_of_Products(ID, Reciept_number)
);

create table Cash(
    ID numeric not null ,
    Receipt_number varchar(6) not null,
    Sum numeric not null ,
    Date date not null  ,
    foreign key (ID, Receipt_number) references Orders(ID,Reciept_number)
);

create table Online(
    ID numeric  ,
    Bank_account varchar(16)  ,
    Receipt_number varchar(6) not null ,
    Sum numeric not null ,
    Status varchar(8) not null ,
    Date date not null  ,
    primary key (ID, Bank_account),
    foreign key (ID, Receipt_number) references Orders(ID, Reciept_number)
);

create table Online_customers(
    ID numeric primary key ,
    Bank_account varchar(16) not null ,
    First_Name varchar(8) not null,
    Last_Name varchar(8) not null ,
    Address varchar(10) not null ,
    Phone varchar(15) not null,
    foreign key (ID, Bank_account) references Online(ID, Bank_account)
);





-- drop table Online;
-- drop table Products;
--
-- drop table Online_customers;
-- drop table vendors cascade;
-- drop table brands;
-- drop table stores;
