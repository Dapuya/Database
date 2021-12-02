create table members(
    memid int primary key ,
    surname varchar(200),
    firstname varchar(200),
    address varchar(300),
    zipcode int,
    telephone varchar(20),
    recommendedby int,
    joindate timestamp
);

insert into members (memid, surname, firstname, address, zipcode, telephone, recommendedby, joindate)
values (2, 'Red', 'Shirt', 'Abai 130', 12345, '8-702-450-30-64', 11, now());

insert into members values
(12, 'Green', 'Yard', 'Tole Bi 21', 23422, '8-707-348-60-41', 2, '2017-03-31 9:30:20');

insert into members values
(22, 'Blue', 'Sky', 'Gogol 9', 75493, '8-777-684-31-96', 2, '2017-03-31 9:30:20');


create table booking(
    facid int primary key ,
    memid int,
    starttime timestamp,
    slots int,
    foreign key (memid) references members(memid)
);

create table facilities(
    facid int,
    name varchar(100),
    membercost numeric,
    guestcost numeric,
    initialoutlay numeric,
    monthlymaintenance numeric,
    foreign key (facid) references booking(facid)
);

with recursive recommenders (member, recommender)
    as (
        select memid, recommendedby
        from members
        union
        select members.memid, members.recommendedby
        from recommenders
        inner join members on members.recommendedby = recommenders.member
)
select * from recommenders
where member = 22 or member = 12
order by member asc, recommender desc;

drop table members;
drop table booking;
drop table facilities;