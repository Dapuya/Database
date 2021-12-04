create table Orders(
    ID numeric not null ,
    Reciept_number varchar(6)  not null ,
    Sum numeric not null ,
    Date date not null ,
    primary key (ID),
    foreign key (ID, Reciept_number) references List_of_Products(ID, Reciept_number)
);


create function total_price()
returns trigger
language plpgsql
as $$
    begin
        update Orders set Sum = sum + new.Sum
        where ID = new.ID ;
    end;
    $$;
