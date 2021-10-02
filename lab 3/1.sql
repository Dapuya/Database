--a
select all course_id from course where credits>3;

--b
select room_number from section where building = 'Watson' or building = 'Packard';

--c
select course_id from course where dept_name = 'Comp. Sci.';

--d
select course_id from section where semester = 'Fall';

--e
select id, name from student where tot_cred > 45 and tot_cred < 90;

--f
select name from student where substring(name, length(name),1) in ('a','e','u','o','i');

--g
select course_id from prereq where prereq_id = 'CS-101';