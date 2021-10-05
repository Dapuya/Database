--a
select dept_name, avg(salary)::numeric(10) as avg_salary from instructor
 group by dept_name order by avg_salary asc;

--b
select building as number
from department,course
where department.dept_name=course.dept_name
group by department.building
order by count(course_id) desc limit 1;

--c
select course.dept_name as number
from department,course
where department.dept_name=course.dept_name
group by course.dept_name
having count(course_id)<=all(
    select count(course_id) as number from department,course
    where department.dept_name=course.dept_name
    group by course.dept_name);


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
