-- a
create table Student(
    ID int primary key generated always as identity ,
    First_Name varchar not null ,
    Last_Name varchar not null ,
    Date_of_birth date not null
);

create table changes(
    ID int generated always as identity ,
    student_ID int not null ,
    last_name varchar not null ,
    changed_on timestamp(6) not null
);

CREATE FUNCTION trigger_function()
   RETURNS TRIGGER
   LANGUAGE PLPGSQL
AS $$
    declare upd timestamp;
BEGIN
        IF NEW.last_name <> OLD.last_name THEN
		 INSERT INTO changes(student_ID,last_name,changed_on)
		 VALUES(OLD.id,OLD.last_name,now());
	END IF;
    return upd;
END;
$$;

create trigger last_name_changes
    after update
    on Student
    for each row
    execute procedure  trigger_function();

insert into Student (First_Name, Last_Name, date_of_birth)
values ('John', 'Snow', '1990-12-3' );
insert into Student (First_Name, Last_Name)
values ('Lili', 'Rose' );
insert into Student (First_Name, Last_Name)
values ('Michael', 'Will');

update Student set Last_Name = 'Brown' where ID = 2;
update Student set Last_Name = 'Depp' where ID = 1;
update Student set Last_Name = 'Scott' where ID = 3;

select *
from Student;
select *
from changes;

drop trigger last_name_changes on student;
drop function trigger_function();
drop table changes;
drop table Student;

-- b
create table Employee(
    ID int primary key generated always as identity ,
    First_Name varchar not null ,
    Last_Name varchar not null ,
    Date_of_birth date
);

create table ages(
    ID int generated always as identity ,
    employee_ID int not null ,
    last_name varchar not null ,
    age int not null
);

insert into employee (first_name, last_name, date_of_birth)
values ('DSds', 'Mike', '1999.10.22');

CREATE FUNCTION for_age()
   RETURNS TRIGGER
   LANGUAGE PLPGSQL
AS $$
    declare Date_of_birth date;
BEGIN
     insert into ages (employee_ID, last_name, age) values (new.ID, new.last_name, (current_date - new.Date_of_birth)/365.25);
--      set age = round((current_date - new.Date_of_birth)/365.25)
--      where ID = new.ID and Date_of_birth IS NOT NULL;
     return Date_of_birth;
END;
$$;

create trigger age_trigger
    after insert
    on Employee
    for each row
    execute procedure  for_age();

select * from employee;
select * from ages;

drop trigger age_trigger on employee;
drop function for_age();
drop table ages;
drop table employee;


-- c
create table product(
    ID int generated always as identity,
    Price int not null
);

create function tax_price()
returns trigger
language plpgsql
as
    $$
    begin
        update product
        set price = price * 1.12
        where id = new.id;
        return new;
        end;
    $$;

create trigger tax
    after insert
    on product
    for each row
    execute procedure tax_price();

insert into product (Price) values (100);
insert into product (Price) values (90);


select * from product;

drop trigger tax on product;
drop function tax_price();
drop table product;


-- d
create table deletion(
    ID int generated always as identity,
    Name varchar not null
);

create function prev_deletion()
returns trigger
language plpgsql
as $$
    begin
        raise exception 'Deletion prohibited1';
    end;
    $$;

create trigger del_prev
    after delete
    on deletion
    for each row
    execute procedure prev_deletion();

insert into deletion (Name) values ('Jack');
insert into deletion (Name) values ('Dua');

select * from deletion;

delete
from deletion
where name = 'Jack';

drop trigger del_prev on deletion;
drop function prev_deletion();
drop table deletion;

-- e
create table profile(
    username varchar,
    firstlast varchar,
    password varchar,
    val boolean
);

create function create_prof()
returns trigger
language plpgsql
as $$
    begin
        if valid(new.password ) = true then
            update profile
            set val = true, firstlast = outputs(new.firstlast)
            where username = new.username;
        else
            update profile
            set val = false
            where username = new.username;
        end if;
        return new;
    end;
    $$;

create trigger creating
    after insert
    on profile
    for each row
    execute procedure create_prof();

insert into profile (username, firstlast, password)
values ('Dar', 'Nursultanova Dariya', 'Dariya123');

insert into profile (username, firstlast, password)
values ('John', 'David John', 'ssdf');

select * from profile;

drop trigger creating on profile;
drop function create_prof();
drop table profile;