-- a
select *
from dealer cross join client ;

-- b
select d.id, d.name, c.name, city, priority, s.id, date, amount
from dealer d join client c on d.id = c.dealer_id
join sell s on c.id = s.client_id and d.id = s.dealer_id
order by d.id;

-- c
select d.id, d.name, c.id, c.name
from dealer d inner join client c
on d.location = c.city;

-- d
select s.id, amount, c.name, city
from sell s join client c
on 100 <= s.amount and s.amount <= 500 and s.client_id = c.id
order by amount;

-- e
select distinct d.id
from dealer d right join client c
    on d.id = c.dealer_id;

-- f
select c.name, city, d.name, charge
from dealer d join client c on d.id = c.dealer_id;

-- g
select c.name, city, d.id, d.name, charge
from dealer d join client c on d.id = c.dealer_id and charge > 0.12 ;

-- h
select c.name, city, s.id, date, amount, d.name, charge
from client c left outer join sell s on c.id = s.client_id left join dealer d on d.id = c.dealer_id ;

-- i
select c.name, priority, d.name, s.id, amount
from client c
right outer join dealer d
on d.id=c.dealer_id
left outer join sell s
on s.client_id=c.id
where s.amount>=2000
and c.priority is not null;





select * from dealer;
select * from client;
select * from sell;