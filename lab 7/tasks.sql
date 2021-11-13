-- 1
-- SQL provides large object data types for character data (clob)
-- and binary data (blob)

-- 2
-- Privileges control the ability to run SQL statements.
-- A role is a privelege group, whereas a User is a person or Active Directory group.
-- For example, an AD group "IT_Developers" may have Writer access to a database,
-- but the AD group "Domain Administrators" aren't neccessarily admins on the database.

-- a
create role accountant;
grant select on accounts, transactions to accountant;

create role administrator;
grant select, update on customers, accounts, transactions to administrator;

create role support;
grant all privileges on customers, accounts, transactions to support;

-- b
create user John;
grant accountant to John;

create user Oscar;
grant accountant to Oscar;

create user Anne;
grant administrator to Anne;

create user Pam;
grant administrator to Pam;

create user Michael;

create user Jim;
grant support to Jim;

create user Dwight;

-- c
grant select, update on customers, accounts, transactions to Michael with grant option;
grant select, update, insert on customers, accounts, transactions to Dwight with grant option;

-- d
revoke insert on accounts from Dwight;

-- 3b
alter table customers
    alter column name set not null;

alter table customers
    alter column birth_date set not null;

select * from customers;


--5
--a
create unique index index_of_customers on accounts(customer_id, currency);
--b
create index index_of_transactions on accounts(currency, balance);


-- 6
do
$$
    declare bal int;
    declare lim int;
    begin
--         savepoint s1;
        update accounts
        set balance = balance - 400
        where account_id = 'RS88012';
        update accounts
        set balance = balance + 400
        where account_id = 'NT10204';
        select balance into bal from accounts where account_id = 'RS88012';
        select accounts.limit into lim from accounts where account_id = 'RS88012';
        if bal < lim then
--             rollback to savepoint s1;
            update transactions set status = 'rollback' where id = 3;
        else
            commit;
            update transactions set status = 'commited' where id = 3;
        end if;
    end;
$$
