"Prod's by us"
Retailer project


1) Brands: we have different types of brands, that produces a various types of products. Each Brand has it's own ID and name.
2) Products have unique UPC_code, name, cost, mass(size), foreign keys Brand_ID,Brand_Name,Type_ID, Type_Name, that referenced Brand and Type tables respectively.
3) Each Type has it's own Id and name (f.e. Food types has ID 1, Drinks - 2 etc.).
4) Vendors sold products to stores.(ID, First and Last names). Vendors have addresses and phone relations.
5) In store relation kept information about Name, Address, Working hours ans also unique ID for each store.
6) In store_orders we have information about store orders, what kind of products each store has.
7) Order_items - consist orders made by customers(online or using cash).
8) Orders relation - final order table, where each order has ID, total sum(cost * amount) and date, when this order was made.
9) trigger orders - automatically insert into orders table calculating total sum of each order using for_orders function.
10) Cash - relation consist information about which order was served, receipt number( different for online and offline payments) sum and date.
11) Online - similar to the Cash table, but also has bank account attribute.
12) Online_customer - information about customers like Bank account, First, Last names, address and phone.