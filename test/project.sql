--population relations--
insert into store (store_id, name, town, transportation_id) values (1, 'Toyota Center', 	 'California',  2);
insert into store (store_id, name, town, transportation_id) values (2, 'King Artur FLowers', 'Almaty', 		3);
insert into store (store_id, name, town, transportation_id) values (3, 'Sulpak',    		 'Bishkek', 	4);
insert into store (store_id, name, town, transportation_id) values (4, 'Technodom', 		 'Moscow', 		1);
insert into store (store_id, name, town, transportation_id) values (5, 'iPoint',    		 'Pavlodar', 	5);

insert into class (class_id, name) values (1, 'Cars');
insert into class (class_id, name) values (2, 'Flowers');
insert into class (class_id, name) values (3, 'Camera');
insert into class (class_id, name) values (4, 'Phones');
insert into class (class_id, name) values (5, 'Notebook');

insert into items (item_id, name, price, supplier, brand, class_id, storage_id) values (1, 'Camry 75', '50000', 'China', 'w30', 'Toyota', '2');
insert into items (item_id, name, price, supplier, brand, class_id, storage_id) values (2, 'Roses', '10000', 'Russia', 'Art-Flower', '1', '1');
insert into items (item_id, name, price, supplier, brand, class_id, storage_id) values (3, 'Sony XC200', '1200000', 'Japan', 'Sony', '3', '3');
insert into items (item_id, name, price, supplier, brand, class_id, storage_id) values (4, 'iPhone 13', '1300000', 'China', 'Apple', '4', '4');
insert into items (item_id, name, price, supplier, brand, class_id, storage_id) values (5, 'Macbook Pro', '900000', 'USA', 'Apple', '5', '5');

insert into storage (storage_id, storage_reserve, number_of_transportations, number_of_received) values (1, 100, 99, 98);
insert into storage (storage_id, storage_reserve, number_of_transportations, number_of_received) values (2, 32, 200, 232);
insert into storage (storage_id, storage_reserve, number_of_transportations, number_of_received) values (3, 12, 10, 5);
insert into storage (storage_id, storage_reserve, number_of_transportations, number_of_received) values (4, 1000, 500, 1001);
insert into storage (storage_id, storage_reserve, number_of_transportations, number_of_received) values (5, 98, 63, 29);

insert into clients (client_id, name, phone_number, email, payment_id) values (1, 'Bolat', '87011231234', 'bolat_full_db@gmail.com', 1);
insert into clients (client_id, name, phone_number, email, payment_id) values (2, 'Kanat', '87711231235', 'kanat_full_db@gmail.com', 2);
insert into clients (client_id, name, phone_number, email, payment_id) values (3, 'Maksat','87011231236', 'maksat_full_db@gmail.com', 3);
insert into clients (client_id, name, phone_number, email, payment_id) values (4, 'Manat', '87011231237', 'manat_full_db@gmail.com',4);
insert into clients (client_id, name, phone_number, email, payment_id) values (5, 'Marat', '87011231238', 'marat_full_db@gmail.com', 5);

insert into purchases (purchase_id, purchase_sum, items_id, payment_id) values (1, 3, 1, 1);
insert into purchases (purchase_id, purchase_sum, items_id, payment_id) values (3, 1, 3, 3);
insert into purchases (purchase_id, purchase_sum, items_id, payment_id) values (2, 2, 2, 2);
insert into purchases (purchase_id, purchase_sum, items_id, payment_id) values (4, 4, 4, 4);
insert into purchases (purchase_id, purchase_sum, items_id, payment_id) values (5, 5, 5, 5);

insert into transportation (transportation_id, company_name, phone_number, tracking_number, purchase_id, date_of_arrival, date_of_receipt) values (1, 'RusPochta', '87001234567', 123456, 1, '01.01.2019', '01.01.2020');
insert into transportation (transportation_id, company_name, phone_number, tracking_number, purchase_id, date_of_arrival, date_of_receipt) values (2, 'KyrgyzPochta', '87011234567', 123456, 2, '01.01.2021', '02.01.2021');
insert into transportation (transportation_id, company_name, phone_number, tracking_number, purchase_id, date_of_arrival, date_of_receipt) values (3, 'USPS', '87021234567', 123456, 4, '06.12.2021', '06.12.2021');
insert into transportation (transportation_id, company_name, phone_number, tracking_number, purchase_id, date_of_arrival, date_of_receipt) values (4, 'KazPochta', '87051234567', 123456, 5, '01.05.2018', '16.07.2020');
insert into transportation (transportation_id, company_name, phone_number, tracking_number, purchase_id, date_of_arrival, date_of_receipt) values (5, 'UzbekPochta', '87071234567', 123456, 3, '12.02.2020', '13.09.2020');

insert into payments (payment_id, type, entire_amount, purchase_id, client_id, date_of_payment) values (1, 'credit', 50000, 1, 1, '01.01.2020');
insert into payments (payment_id, type, entire_amount, purchase_id, client_id, date_of_payment) values (2, 'debet', 100000, 2, 2, '01.02.2020');
insert into payments (payment_id, type, entire_amount, purchase_id, client_id, date_of_payment) values (3, 'credit', 150000, 3, 3, '01.03.2020');
insert into payments (payment_id, type, entire_amount, purchase_id, client_id, date_of_payment) values (4, 'debet', 200000, 4, 4, '01.04.2020');
insert into payments (payment_id, type, entire_amount, purchase_id, client_id, date_of_payment) values (5, 'credit', 250000, 5, 5, '31.12.2020');

insert into accounts (account_id, nick, remains, client_id) values (1, 'bolat_iron', 100000, 1);
insert into accounts (account_id, nick, remains, client_id) values (2, 'kanat_1976', 200000, 2);
insert into accounts (account_id, nick, remains, client_id) values (3, 'maksat_official', 300000, 3);
insert into accounts (account_id, nick, remains, client_id) values (4, 'manat_galymovich', 400000, 4);
insert into accounts (account_id, nick, remains, client_id) values (5, 'marat_sexyboy', 500000, 5);


--queries--
--1
SELECT c.client_id, c.name, c.email FROM clients c
JOIN transportation t ON t.purchase_id = pur.purchase_id
JOIN payments pay     ON c.client_id = pay.client_id
JOIN purchases pur    ON pay.payment_id = pur.payment_id
WHERE lower(t.company_name) = 'usps' AND t.tracking_number = 123456;

SELECT i.name, i.price, pur.purchase_sum FROM items i
JOIN payments pay  ON pay.payment_id = pur.payment_id
JOIN purchases pur ON i.item_id = pur.items_id
JOIN clients c     ON c.client_id = pay.client_id
WHERE c.client_id = 2;

--2
SELECT c.client_id, c.name, MAX(i.price) as max_price from clients c
JOIN payments pay 	ON c.client_id = pay.client_id
JOIN purchases pur 	ON pay.payment_id = pur.payment_id
JOIN items i 		ON i.item_id = pur.items_id
WHERE pay.date_of_payment BETWEEN '01.01.2020' AND '31.12.2020'
GROUP BY c.client_id 
ORDER BY max_price desc limit 1;


--3
SELECT DISTINCT i.name, i.item_id, (SUM(pur.purchase_sum) * i.price) as dollar_amount FROM items i
JOIN payments pay 	ON pur.payment_id = pay.payment_id
JOIN purchases pur 	ON pur.items_id = i.item_id
WHERE pay.date_of_payment BETWEEN '01.01.2020' AND '31.12.2020'
GROUP BY i.item_id, ROLLUP(i.item_id)
ORDER BY dollar_amount DESC LIMIT 2;

--4
SELECT DISTINCT i.name, i.item_id, SUM(pur.purchase_sum) as amount FROM items i
JOIN payments pay  ON pay.payment_id = pur.payment_id
JOIN purchases pur ON i.item_id = pur.items_id
WHERE pay.date_of_payment BETWEEN '01.01.2020' AND '31.12.2020'
GROUP BY i.item_id, ROLLUP(i.item_id)
ORDER BY amount DESC LIMIT 2;

--5
SELECT i.name FROM items i
JOIN storage p 	ON i.storage_id = p.storage_id
JOIN store s 	ON p.store_id = s.store_id
WHERE p.storage_reserve = 0 AND lower(s.town) = 'california';


--6
SELECT t.transportation_id, t.date_of_arrival, t.date_of_receipt FROM transportation t
WHERE t.date_of_arrival < t.date_of_receipt;

--7
SELECT distinct c.name, SUM(pay.entire_amount) as bill FROM payments pay
JOIN clients c ON pay.client_id = c.client_id
GROUP BY c.name, ROLLUP(c.name);



