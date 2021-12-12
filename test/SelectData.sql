-- 4a
select oc.first_name, oc.second_name, oc.number,ship_company.ship_name, ip.tracking_number from ship_company join info_ship i on ship_company.ship_id = i.ship_id
and ship_company.ship_name = 'RISPERDAL' join info_purchase ip on ip.info_id = i.info_id and ip.tracking_number = '134132' join info_online io on
    ip.info_id = io.info_id join online_customer oc on io.customer_id = oc.customer_id;
-- 4b

select online_customer.first_name, sum(p2.price) as summa from online_customer join info_online io on online_customer.customer_id = io.customer_id
join info_purchase ip on io.info_id = ip.info_id
join info_store i on ip.info_id = i.info_id join store s on i.store_id = s.store_id join prod p on s.store_id = p.store_id
join product p2 on p.product_id = p2.product_id group by online_customer.first_name order by summa desc limit 1;
-- 4c
select p2.name, sum(p2.price) as summa from info_purchase join info_store i on info_purchase.info_id = i.info_id join store s on i.store_id = s.store_id join
    prod p on s.store_id = p.store_id join product p2 on p.product_id = p2.product_id group by p2.name order by summa desc limit 2;
-- 4d
select p2.name, count(p2.price) as summa from info_purchase join info_store i on info_purchase.info_id = i.info_id join store s on i.store_id = s.store_id join
    prod p on s.store_id = p.store_id join product p2 on p.product_id = p2.product_id group by p2.name order by summa desc limit 2;
-- 4e
select product.name from product where product.name not in (select p2.name from store join info_store i on store.store_id = i.store_id
    join info_purchase ip on i.info_id = ip.info_id and store.store_region = 'Bolembre' join
    prod p on store.store_id = p.store_id join product p2 on p.product_id = p2.product_id group by p2.name);
-- 4f
select info_purchase.info_id, info_purchase.tracking_number, oc.first_name, oc.second_name, oc.street, p2.name, store_name from info_purchase
    join info_online io on info_purchase.info_id = io.info_id join online_customer oc on io.customer_id = oc.customer_id
    join info_store i on info_purchase.info_id = i.info_id join store s on i.store_id = s.store_id
    join prod p on s.store_id = p.store_id join product p2 on p.product_id = p2.product_id;

