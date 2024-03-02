 create database haseeb1020;
 
use haseeb1020;
 
 create table student (
	id int primary key,
    name varchar(10),
    age int,
    marks int,
    grade varchar(3),
    city varchar(10)
);

insert into student (id , name , age , marks , grade , city)values
(101 , "Haseeb" , 16 , 98 , "A+1" , "Karachi"),
(102 , "Hamza" , 15 , 88 , "A" , "Karachi"),
(103 , "Hassan" , 14 , 78 , "B" , "Karachi"),
(104 , "Ali" , 13 , 68 , "A+" , "Karachi"),
(105 , "Mujtaba" , 17 , 89 , "A+1" , "Karachi");

-- Clausing 
-- Where
select * from student where id = 103;
select * from student where age = 19;
select * from student where age = 19 and marks > 75;
select * from student where city in ("Karachi");
select * from student where city = "Karachi" or marks > 80;

-- Update

set sql_safe_updates=0;

update student
set marks = 69 where marks = 66;

update student
set marks = marks+5 where id in (101,102,103,104,105);

-- Aggregate Functions
select * from student;
select min(marks) from student;
select max(age) from student;
select max(name) from student;
select min(name) from student;
select count(city) from student;
select avg(marks) from student;

--  Group By
select city , name from student group by city , name ;
select age , marks , grade from student group by age , marks , grade;

-- Order By
select * from student order by name DESC;



-- Foriegn Key

create table dept(
	id int primary key,
    name varchar(15)
);

create table teacher(
	id int primary key,
    name varchar(10),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade
    on delete cascade
);

drop table teacher; 

select * from dept;

insert into dept values
(101 , "Science"),
(102 , "Commerce"),
(103 , "Arts");

select * from teacher;

insert into teacher (id , name , dept_id) values
(101 , "Alex" , 101),
(102 , "Hamza" , 102),
(103 , "Ali" , 103);

-- Cascade
update dept set id = 104 where id = 103;


-- Joining Method
-- Inner Joint
select * from  dept inner join teacher on dept.id = teacher.id;

-- Right Joint
select * from  dept right join teacher on dept.id = teacher.id;

-- Left Joint
select * from  dept left join teacher on dept.id = teacher.id;

-- Full Joint 
select * from  dept left join teacher on dept.id = teacher.id
union
select * from  dept right join teacher on dept.id = teacher.id;

-- Alteration 

alter table student
add column car varchar(10);

select * from student;

alter table student change car bike varchar(10);
alter table student modify bike int;

alter table student
drop bike;

update student
set bike = 600;

alter table student
drop car;