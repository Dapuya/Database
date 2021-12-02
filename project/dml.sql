insert into Brands values (1, 'Danone');
insert into Brands values (2, 'PepsiCo');
insert into Brands values (3, 'Mars');
insert into Brands values (4, 'P&G');
insert into Brands values (5, 'CocaCola');
insert into Brands values (6, 'Nestle');
insert into Brands values (7, 'Unilever');

insert into type values (1, 'Food');
insert into type values (2, 'Drinks');
insert into type values (3, 'Household chemicals');


insert into Products values ('01030001', 'KitKat', 200, 1, 'Food',6, 'Nestle', '160g');
insert into Products values ('01030002', 'KitKat', 250, 1, 'Food',6, 'Nestle', '200g');
insert into Products values ('01030003', 'Snickers', 200, 1, 'Food',3, 'Mars', '160g');
insert into Products values ('01030004', 'Snickers', 280, 1, 'Food',3, 'Mars', '200g');
insert into Products values ('01020001', 'Activia-vanilla', 160, 1, 'Food',1, 'Danone', '125g');
insert into Products values ('01020002', 'Activia-strawberry', 180, 1, 'Food',1, 'Danone', '125g');
insert into Products values ('01010001', 'Pepsi', 250, 2, 'Drinks', 2, 'PepsiCo', '0,5l');
insert into products values ('01010002', '7Up', 200, 2,  'Drinks', 2,'PepsiCo', '0,5l');
insert into products values ('01010003', 'Coca-Cola', 250, 2, 'Drinks', 5, 'CocaCola', '0,5l');
insert into products values ('01010004', 'Sprite', 240, 2, 'Drinks',5, 'CocaCola', '0,5l');
insert into products values ('02010001', 'Tide', 1000, 3, 'Household chemicals',4, 'P&G', '1kg');
insert into products values ('02010002', 'Fairy', 700, 3, 'Household chemicals',4, 'P&G', '0,7l');
insert into products values ('01010005', 'Lipton', 170, 2, 'Drinks', 7, 'Unilever', '0,5l');
insert into products values ('02010003', 'Cif', 720, 3, 'Household chemicals',7,'Unilever', '0,7l');


insert into vendors values (1, 'Pam', 'Beesly');
insert into vendors values (2, 'Jim', 'Halpert');
insert into vendors values (3, 'Michael', 'Scott');
insert into vendors values (4, 'Dwight', 'Schrute');
insert into vendors values (5, 'Kelly', 'Kapoor');
insert into vendors values (6, 'Kevin', 'Malone');

insert into address values (1, 'Almaty', 'Dostyk', '32/1');
insert into address values (2, 'Almaty', 'Abai', '43/21');
insert into address values (3, 'Almaty', 'Kurmangazy', '97/18');
insert into address values (4, 'Almaty', 'ToleBi', '193');
insert into address values (5, 'Almaty', 'Gogol', '95/1');
insert into address values (6, 'Almaty', 'Kabanbai', '16');

insert into phone values (1,'8-777-21-32-434');
insert into phone values (1,'8-702-43-57-444');
insert into phone values (2,'8-771-11-76-431');
insert into phone values (3,'8-707-00-98-381');
insert into phone values (4,'8-707-21-92-727');
insert into phone values (4,'8-708-88-07-708');
insert into phone values (5,'8-705-65-83-257');
insert into phone values (6,'8-777-04-18-481');
insert into phone values (6,'8-701-20-50-111');

insert into store values (1, 'Maxi', 'Abay 1', '08:00-23:00');
insert into store values (2, 'Smart', 'Satbayev 23', '00:00-24:00');
insert into store values (3, 'Trio', 'Baitursynov 85', '09:00-23:00');
insert into store values (4, 'Duo', 'Dostyk 43', '08:00-22:00');




insert into store_orders values (3, 'Trio', 'Baitursynov 85', 1, 3, 'Mars', '01030004', 'Snickers',280, '200g', 20);
insert into store_orders values (1, 'Maxi', 'Abay 1', 2, 1, 'Danone', '01020001', 'Activia-vanilla', 160, '125g', 20);
insert into store_orders values (2, 'Smart', 'Satbayev 23', 3, 4, 'P&G', '02010002', 'Fairy', 700, '0,7l', 10);
insert into store_orders values (3, 'Trio', 'Baitursynov 85', 5, 2, 'PepsiCo', '01010002', '7Up', 200, '0,5l', 10);
insert into store_orders values (4, 'Duo', 'Dostyk 43', 4, 7, 'Unilever', '01010005', 'Lipton', 170, '0,5l', 15 );
insert into store_orders values (1, 'Maxi', 'Abay 1', 6, 5, 'CocaCola', '01010004', 'Sprite', 240, '0,5l', 20 );
insert into store_orders values (4, 'Duo', 'Dostyk 43', 4, 6, 'Nestle', '01030001','KitKat', 200, '160g', 25);


insert into list_of_products values (1, '01010001', 'Pepsi', 250, '0,5l', 10, '000001');
insert into list_of_products values (1,'02010003', 'Cif', 720, '0,7l', 10, '000002');
insert into list_of_products values (2, '02010002', 'Fairy', 700, '0,7l', 15, '000003');
insert into list_of_products values (3, '01030004', 'Snickers', 280, '200g', 20, '000004');
insert into list_of_products values (3, '01030001', 'KitKat', 200, '160g', 20, '000005');


insert into orders values (1, '000001', 2500, date);
insert into orders values (1, '000002', 7200, date);
insert into orders values (2, '000003', 10500, date);
insert into orders values (3, '000004', 5600, date);
insert into orders values (3, '000005', 4000, date);

insert into cash values (2, '000003', 10500, date );


insert into online values (1, '1234567887654321', '000001', 9700);
insert into online values (3, '8765432112345678', '', 9600);


insert into Online_customers values (1, '1234567887654321', 'John', 'Snow', 'Tole Bi 28', '8-777-12-34-567');
insert into Online_customers values (3, '8765432112345678', 'Jenny', 'Smith', 'Kabanbai 39', '8-702-53-65-227');




select * from vendors;
select * from brands;
select * from products;
select * from address;
select * from phone;
select * from store;