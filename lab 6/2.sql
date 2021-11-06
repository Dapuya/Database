-- a
create view a as
    select date, count(distinct client_id), avg(amount), sum(amount)
from sell s
group by date
order by date;

select * from a;
drop view a;

-- b
create view b as
    select date, sum(amount)
from sell
group by date
order by sum(amount) desc limit 5;

select * from b;
drop view b;

-- c
create view c as
    select dealer_id, count(dealer_id), avg(amount), sum(amount)
from sell
group by dealer_id
order by dealer_id;

select * from c;
drop view c;

-- d
create view d as
    select location,  sum(t)
from (
     select location, sum(amount) * d2.charge as t
    from sell s join dealer d2 on d2.id = s.dealer_id
    group by location, d2.charge) q
group by location
having location = q.location;

select * from d;
drop view d;

-- e
create view e as
    select location, count(s.id), avg(amount), sum(amount)
from sell s join dealer d on d.id = s.dealer_id
group by location;

select * from e;
drop view e;

-- f
create view f as
    select city, count(s.id), avg(amount), sum(amount)
from client c join sell s on c.id = s.client_id
group by city;

select * from f;
drop view f;

-- g
create view g as
    select city
from (select sum(amount) as sales, location
    from sell join dealer d on d.id = sell.dealer_id
    group by location) sls
    join
        (select city, sum(amount) as expences
        from client c join sell s on c.id = s.client_id
        group by city) expn
on sales < expences and sls.location = expn.city;

select * from g;
drop view g;


select * from dealer;
select * from client;
select * from sell;