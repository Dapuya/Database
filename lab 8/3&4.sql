-- 3
-- Function:
-- - a function cannot call a stored procedure
-- - possibility to call functions from a select statement
-- - transactions are not allowed
-- - only select statements allowed
-- - must return a result or value to the caller

-- Procedure
-- - stored procedures can call functions as needed
-- - there is no provision tp call procedures from select/having and where statements
-- - transactions can be used in stored procedures
-- - no need to return any value
-- - all the database operations - insert, update, delete


-- 4

create table empl(
    ID int primary key generated always as  identity,
    name  varchar,
    date_of_birth date,
    age int,
    salary int,
    workexperience int,
    discount int
);

insert into empl (name, date_of_birth, age, salary, workexperience, discount)
values ('Kevin', '1985-03-26', 36, 1000,9, 1);

insert into empl(name, date_of_birth, age, salary, workexperience, discount)
values ('Oscar', '1970-04-19', 51, 5000, 20, 4);

select *
from empl;

-- a
create procedure inc_salary()
language plpgsql
as $$
    begin
        update empl
        set salary = salary * (1.1)^(workexperience/2), discount = 10
        where workexperience > 2;
        update empl
        set discount = discount + 1
        where workexperience > 5;
        commit ;
    end;
    $$;

call inc_salary();

-- b
create procedure inc_salary2()
language plpgsql
as $$
    begin
        update empl
        set salary = salary * (1.15)
        where age >= 40;
        update empl
        set salary = salary * (1.15), discount = 20
        where workexperience >= 8;
        commit ;
    end;
    $$;

call inc_salary2();

drop table empl;
drop procedure inc_salary();
drop procedure inc_salary2();
