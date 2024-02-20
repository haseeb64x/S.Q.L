drop database haseeb16;

create database haseeb8;

use haseeb8;

create table students (
	id int primary key,
    name varchar(10),
    age int check (age>18),
    city varchar(10) default "Karachi",
    marks int,
    grade varchar(3)
);

insert into students (id , name , age , city , marks , grade)values
(101 , "Haseeb" , 19 , default , 77 , "A") ,
(102 , "Mujtaba" , 19 , default , 88 , "A+") ,
(103 , "Hamza" , 20 , default , 66 , "B") ,
(104 , "Hashir" , 20 , default , 75 , "A") ,
(105 , "Abdullah" , 22 , default , 67 , "B");

select * from students;

--  Clausing
-- Where
select * from students where id = 103;
select * from students where age = 19;
select * from students where age = 19 and marks > 75;
select * from students where city in ("Karachi");
select * from students where city = "Karachi" or marks > 80;

-- Update

set sql_safe_updates=0;

update students
set marks = 69 where marks = 66;

update students
set marks = marks+5 where id in (001,002,003,004,005);

-- Aggregate Functions
select * from students;
select min(marks) from students;
select max(age) from students;
select max(name) from students;
select min(name) from students;
select count(city) from students;
select avg(marks) from students;

--  Group By
select city , name from students group by city , name ;
select age , marks , grade from students group by age , marks , grade;

-- Order By
select * from students order by name DESC;