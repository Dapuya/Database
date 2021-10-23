-- --a
-- select dept_name, avg(salary)::numeric(10) as avg_salary from instructor
--  group by dept_name order by avg_salary asc;
--
-- --b
-- select building
-- from section
-- group by building
-- having count(*) =
--        (select max(c)
--        from
--             (select count(course_id) as c
--             from section
--             group by building) as alias
--            );
--
-- --c
-- select dept_name
-- from course
-- group by dept_name
-- having count(*) =
--        (select min(c)
--        from(
--            select count(course_id) as c
--            from course
--            group by dept_name) as alias
--            );
--
--
-- --d
-- select student.id,name
-- from student,takes
-- where student.id=takes.id and student.dept_name='Comp. Sci.'
-- group by student.id, name
-- having count(course_id)>3;
--
-- --e
-- select distinct name from instructor
-- where dept_name in ('Biology', 'Philosophy', 'Music');
--
-- --f
-- select id from teaches
-- where year = 2018
-- except (select id from teaches where year = 2017);

--a
select dept_name, avg(salary)::numeric(10) as avg_salary from instructor
 group by dept_name order by avg_salary asc;

--b
select building
from section
group by building
having count(*) =
       (select max(c)
       from
            (select count(course_id) as c
            from section
            group by building) as alias
           );

--c
select dept_name
from course
group by dept_name
having count(*) =
       (select min(c)
       from(
           select count(course_id) as c
           from course
           group by dept_name) as alias
           );


--d
select student.id,name
from student,takes
where student.id=takes.id and student.dept_name='Comp. Sci.'
group by student.id, name
having count(course_id)>3;

--e
select distinct name from instructor
where dept_name in ('Biology', 'Philosophy', 'Music');

--f
select id from teaches
where year = 2018
except (select id from teaches where year = 2017);