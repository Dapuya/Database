-- --a
-- select s.id,name from student as s,takes as t,course as c
-- where s.id=t.id
--   and t.course_id=c.course_id
--   and c.dept_name='Comp. Sci.'
--   and t.grade in ('A','A-')
-- order by name asc;
--
-- --b
-- select distinct s_id from advisor as a,takes as t,student as s
-- where t.id = a.s_id and s.id = t.id and t.grade in ('C-', 'C', 'C+', 'F');
--
-- --c
-- select distinct dept_name from course
-- except (select dept_name from course,takes
-- where course.course_id=takes.course_id and takes.grade in ('F','C'));
--
-- --d
-- select distinct id, name from instructor
-- except (select instructor.id, instructor.name from instructor, takes, teaches
-- where instructor.id = teaches.id and takes.course_id = teaches.course_id and  takes.grade = 'A');
--
-- --e
-- select distinct time_slot.time_slot_id, title from section, course, time_slot
-- where end_hr < 13 and section.course_id = course.course_id and section.time_slot_id = time_slot.time_slot_id
-- order by title;
--a
select s.id,name from student as s,takes as t,course as c
where s.id=t.id
  and t.course_id=c.course_id
  and c.dept_name='Comp. Sci.'
  and t.grade in ('A','A-')
order by name asc;

--b
select distinct s_id from advisor as a,takes as t,student as s
where t.id = a.s_id and s.id = t.id and t.grade in ('C-', 'C', 'C+', 'F');

--c
select distinct dept_name from course
except (select dept_name from course,takes
where course.course_id=takes.course_id and takes.grade in ('F','C'));

--d
select distinct id, name from instructor
except (select instructor.id, instructor.name from instructor, takes, teaches
where instructor.id = teaches.id and takes.course_id = teaches.course_id and  takes.grade = 'A');

--e
select distinct time_slot.time_slot_id, title from section, course, time_slot
where end_hr < 13 and section.course_id = course.course_id and section.time_slot_id = time_slot.time_slot_id
order by title;