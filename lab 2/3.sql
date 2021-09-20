-- 3
create table students(
    full_name varchar not null ,
    age int not null ,
    birth_date date not null ,
    gender char not null ,
    average_grade float not null , --float(3,2)
    information varchar,
    dormitory boolean not null ,
    additional_info text,
    primary key (full_name)
);
drop table students;
select * from students;

create table instructor(
    full_name varchar not null ,
    lang_s varchar,
    work_experience float,
    remote_lessons boolean,
    primary key (full_name)
);

select * from instructor;

create table lesson_participants(
    lesson_title varchar,
    instructor_name varchar,
    student_name varchar,
    room_number int,
    primary key (lesson_title, room_number),
    foreign key (instructor_name) references instructor,
    foreign key (student_name) references students
);

select * from lesson_participants;

drop table lesson_participants;

