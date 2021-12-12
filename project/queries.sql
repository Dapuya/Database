-- 1
select store_name, name
from order_items ord
group by store_name, name
having count(*) = (
    select  count(*)
    from order_items
    where store_name = ord.store_name
    group by store_name, name
    order by count(*) desc
    limit 1
);

-- 2
select name as total
from order_items, orders
where id_for_orders = order_items.id
group by name
having count(*) = (
    select  count(*)
    from order_items
    where store_name = order_items.store_name
    group by store_name, name
    order by count(*) desc
    limit 1
    );