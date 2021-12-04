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


insert into store_orders values (3, 'Trio',  1, 3, 'Mars', '01030004', 'Snickers',280, '200g', 20);
insert into store_orders values (1, 'Maxi',  2, 1, 'Danone', '01020001', 'Activia-vanilla', 160, '125g', 20);
insert into store_orders values (2, 'Smart',  3, 4, 'P&G', '02010002', 'Fairy', 700, '0,7l', 10);
insert into store_orders values (3, 'Trio',  5, 2, 'PepsiCo', '01010002', '7Up', 200, '0,5l', 10);
insert into store_orders values (4, 'Duo',  4, 7, 'Unilever', '01010005', 'Lipton', 170, '0,5l', 15 );
insert into store_orders values (1, 'Maxi',  6, 5, 'CocaCola', '01010004', 'Sprite', 240, '0,5l', 20 );
insert into store_orders values (4, 'Duo',  4, 6, 'Nestle', '01030001','KitKat', 200, '160g', 25);


insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values ( 1,  'Maxi','01020001', 'Activia-vanilla', 160, '125g', 10);
insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values (2,  'Smart','01010002', '7Up', 200, '0,5l', 10);
insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values ( 3, 'Trio','01030004', 'Snickers',280, '200g', 15);
insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values ( 2,'Smart','01030001','KitKat', 200, '160g', 20);
insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values ( 4, 'Duo','01010005', 'Lipton', 170, '0,5l', 20);
insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values ( 4, 'Duo','01010005', 'Lipton', 170, '0,5l', 20);
insert into Order_items ( Store_ID, Store_Name, UPC_code, Name, Price, Size, amount) values ( 2,'Smart','01030001','KitKat', 200, '160g', 10);



insert into cash values (2, '000001', 2000, now());
insert into cash (orders_id, receipt_number, sum, date)
values (5, '000002', 3400, now());

insert into online values (1, '1234567887654321', '000001', 1600, now());
insert into online values (3, '8765432112345678', '000002', 4200, now());
insert into online values (4, '7890123456782345', '000003', 4000, now());

insert into Online_customers values (1, '1234567887654321', 1600,'John', 'Snow', 'Tole Bi 28', '8-777-12-34-567');
insert into Online_customers values (3, '8765432112345678', 4200,'Jenny', 'Smith', 'Kabanbai 39', '8-702-53-65-227');
insert into online_customers values (4, '7890123456782345', 4000, 'Dan', 'Justin', 'Qurmangazy 97', '7-771-22-33-444');



select * from vendors;
select * from brands;
select * from products;
select * from address;
select * from phone;
select * from store;
select * from store_orders;
select * from order_items;
select * from orders;
select * from cash;
select * from online;
select * from online_customers;