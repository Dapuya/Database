insert into card_details (card_id, card_name, cvv, brand) values (1, 'jcb', 159, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (2, 'diners-club-carte-blanche', 183, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (3, 'jcb', 162, 'diners-club-carte-blanche');
insert into card_details (card_id, card_name, cvv, brand) values (4, 'jcb', 751, 'mastercard');
insert into card_details (card_id, card_name, cvv, brand) values (5, 'diners-club-international', 740, 'instapayment');
insert into card_details (card_id, card_name, cvv, brand) values (6, 'jcb', 820, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (7, 'jcb', 455, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (8, 'switch', 230, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (9, 'jcb', 350, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (10, 'mastercard', 923, 'jcb');



insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (1, '13 Groton St', 'USA', 149, 'Herric Ave', '7960', '2021-09-13', 48827068, 'Tomas', 'Richart');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (2, '12 Hauptstrasse', 'Austria', 161, 'Forchtenstein', '7212', '2021-10-10', 23456524, 'Anita', 'Isidor');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (3, '209 Böcklinstrasse', 'Austria', 112, 'Wien', '1020', '2021-10-24', 82345467, 'Fabio', 'Wildness');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (4, '48 Hochstrasse', 'Austia', 140, 'Mattersburg', '7210', '2021-10-26', 64542312, 'Klein', 'James');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (5, '70 Vivariumstrasse', 'Austria', 165, 'Wien', '1030', '2021-04-23', 96785674, 'Jack', 'Donald');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (6, '1 Carpenter Lane', 'Indonesia', 172, 'Donald', '6', '2021-02-03', 97445601, 'Darbee', 'Cornell');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (7, '31930 Grayhawk Point', 'Brazil', 141, 'Truax', '87795', '2021-11-21', 30543759, 'Pammi', 'Martin');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (8, '28 Granby Plaza', 'Kyrgyzstan', 142, 'Troy', '3055', '2021-08-23', 97627676, 'Marcia', 'Isidor');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (9, '272 Mcguire Trail', 'Cameroon', 196, 'Hauk', '64081', '2020-12-31', 11723872, 'Edik', 'Claus');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (10, '42 Schmedeman Alley', 'Palestinian Territory', 112, 'Prairieview', '4457', '2021-10-11', 25524231, 'Friederike', 'Madison');



insert into account (account_id, date) values (1, '2021-04-13');
insert into account (account_id, date) values (2, '2021-05-20');
insert into account (account_id, date) values (3, '2021-12-24');


insert into product (product_id, name, amount, price) values (1, 'Shampoo -Dove', 45, 12435);
insert into product (product_id, name, amount, price) values (2, 'Water - Tassay', 100, 5342);
insert into product (product_id, name, amount, price) values (3, 'Cheese - Kerrygold Aged Cheddar', 43, 8764);
insert into product (product_id, name, amount, price) values (4, 'Cigarette- Marlboro', 24, 8275);
insert into product (product_id, name, amount, price) values (5, 'Hinge W Undercut', 10, 7535);
insert into product (product_id, name, amount, price) values (6, 'Cheese - Brie', 49, 7969);
insert into product (product_id, name, amount, price) values (7, 'Cheese - Sheep Milk', 14, 2064);
insert into product (product_id, name, amount, price) values (8, 'Syrup - Chocolate', 26, 5616);
insert into product (product_id, name, amount, price) values (9, 'Bamboo Shoots - Sliced', 11, 5787);
insert into product (product_id, name, amount, price) values (10, 'Bread - 10 Grain Parisian', 17, 2653);




insert into category (category_id, category_name) values (1, 'Red');
insert into category (category_id, category_name) values (2, 'Dark');
insert into category (category_id, category_name) values (3, 'Green');
insert into category (category_id, category_name) values (4, 'Golden');
insert into category (category_id, category_name) values (5, 'Blue');
insert into category (category_id, category_name) values (6, 'Mauv');
insert into category (category_id, category_name) values (7, 'Goldenrod');
insert into category (category_id, category_name) values (8, 'Turquoise');
insert into category (category_id, category_name) values (9, 'pink');
insert into category (category_id, category_name) values (10, 'Khaki');

insert into manufacture (manufacture_id, manufacture_name) values (1, 'developer');
insert into manufacture (manufacture_id, manufacture_name) values (2, 'Subcontractor');
insert into manufacture (manufacture_id, manufacture_name) values (3, 'Architect');
insert into manufacture (manufacture_id, manufacture_name) values (4, 'manager');
insert into manufacture (manufacture_id, manufacture_name) values (5, 'Engineer');
insert into manufacture (manufacture_id, manufacture_name) values (6, 'Estimator');
insert into manufacture (manufacture_id, manufacture_name) values (7, 'Architect');



insert into store (store_id, store_name, store_region) values (1, 'Convolvulaceae', 'Tambopata');
insert into store (store_id, store_name, store_region) values (2, 'Boraginaceae', 'Shuangxi');
insert into store (store_id, store_name, store_region) values (3, 'Scrophulariaceae', 'Taiping');
insert into store (store_id, store_name, store_region) values (4, 'Rosaceae', 'Oster');
insert into store (store_id, store_name, store_region) values (5, 'Rosaceae', 'Nan’an');
insert into store (store_id, store_name, store_region) values (6, 'Asteraceae', 'Strängnäs');
insert into store (store_id, store_name, store_region) values (7, 'Thuidiaceae', 'Leiling');


insert into info_purchase (info_id, tracking_number, date_info) values (1, '1341324', '2021-05-12');
insert into info_purchase (info_id, tracking_number, date_info) values (2, null, '2021-03-29');
insert into info_purchase (info_id, tracking_number, date_info) values (3, '134132', '2021-09-28');
insert into info_purchase (info_id, tracking_number, date_info) values (4, '134132', '2021-01-22');
insert into info_purchase (info_id, tracking_number, date_info) values (5, null, '2021-09-30');
insert into info_purchase (info_id, tracking_number, date_info) values (6, '431256', '2021-03-24');
insert into info_purchase (info_id, tracking_number, date_info) values (7, '546754', '2021-10-16');


insert into ship_company (ship_id, ship_name, delivery_method) values (1, 'Mediterranean', 'post');
insert into ship_company (ship_id, ship_name, delivery_method) values (2, 'Hapag-Lloyd ', 'home');
insert into ship_company (ship_id, ship_name, delivery_method) values (3, 'Evergreen Line', 'post');

insert into offline_customer (customer_id) values (1);
insert into offline_customer (customer_id) values (2);
insert into offline_customer (customer_id) values (3);
insert into offline_customer (customer_id) values (4);
insert into offline_customer (customer_id) values (5);

insert into card_info values  (1, 1);
insert into card_info values  (2, 2);
insert into card_info values  (3, 3);
insert into card_info values  (4, 4);
insert into card_info values  (5, 5);
insert into card_info values  (6, 6);
insert into card_info values  (7, 7);
insert into card_info values  (8, 8);
insert into card_info values  (9, 9);
insert into card_info values  (10, 10);


insert into bill values  (1, 1);
insert into bill values  (2, 2);
insert into bill values  (3, 3);



insert into categ values  (1, 1);
insert into categ values  (2, 1);
insert into categ values  (3, 1);
insert into categ values  (4, 1);
insert into categ values  (5, 1);
insert into categ values  (6, 2);
insert into categ values  (7, 2);
insert into categ values  (8, 2);
insert into categ values  (9, 2);
insert into categ values  (10, 2);




insert into manufact values  (1, 1);
insert into manufact values  (2, 1);
insert into manufact values  (3, 1);
insert into manufact values  (4, 1);
insert into manufact values  (5, 1);
insert into manufact values  (6, 2);
insert into manufact values  (7, 2);
insert into manufact values  (8, 2);
insert into manufact values  (9, 2);
insert into manufact values  (10, 2);





insert into prod values  (1, 1);
insert into prod values  (2, 1);
insert into prod values  (3, 1);
insert into prod values  (4, 1);
insert into prod values  (5, 1);
insert into prod values  (6, 2);
insert into prod values  (7, 2);
insert into prod values  (8, 2);
insert into prod values  (9, 2);
insert into prod values  (10, 2);



insert into info_store values  (1, 1);
insert into info_store values  (2, 1);
insert into info_store values  (3, 2);
insert into info_store values  (4, 2);
insert into info_store values  (5, 3);
insert into info_store values  (6, 3);
insert into info_store values  (7, 4);
insert into info_store values  (8, 4);
insert into info_store values  (9, 5);
insert into info_store values  (10, 5);



insert into info_ship values  (1, 1);
insert into info_ship values  (3, 1);
insert into info_ship values  (4, 2);
insert into info_ship values  (6, 2);
insert into info_ship values  (9, 3);
insert into info_ship values  (12, 1);
insert into info_ship values  (14, 1);
insert into info_ship values  (15, 1);
insert into info_ship values  (17, 3);
insert into info_ship values  (18, 1);


insert into info_offline values  (2, 1);
insert into info_offline values  (5, 1);
insert into info_offline values  (7, 2);
insert into info_offline values  (8, 2);
insert into info_offline values  (10, 1);
insert into info_offline values  (11, 3);
insert into info_offline values  (13, 3);
insert into info_offline values  (16, 3);
insert into info_offline values  (19, 3);
insert into info_offline values  (20, 3);


insert into info_online values  (1, 1);
insert into info_online values  (3, 2);
insert into info_online values  (4, 1);
insert into info_online values  (6, 5);
insert into info_online values  (9, 1);
insert into info_online values  (12, 6);
insert into info_online values  (14, 1);
insert into info_online values  (15, 1);
insert into info_online values  (17, 11);
insert into info_online values  (18, 1);