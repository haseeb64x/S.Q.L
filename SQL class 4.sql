drop database haseeb2;
create database haseeb4;

use haseeb4;

create table students (
	id int primary key,
    name varchar(10),
    age int check (age>18),
    city varchar(10) ,
    marks int,
    grade varchar(3)
);

insert into students (id , name , age , city , marks , grade)values
(101 , "Haseeb" , 19 , default , 77 , "A") ,
(102 , "Mujtaba" , 19 , "Lahore" , 88 , "A+") ,
(103 , "Hamza" , 20 , "Multan" , 66 , "B") ,
(104 , "Hashir" , 20 , "Sukkar" , 75 , "A") ,
(105 , "Abdullah" , 22 , "Islamabad" , 67 , "B");

select * from students;

-- Clausing by using where

select * from students where city in ("Multan" , "Islamabad" , "Lahore") and marks>=85 or age between 19 and 21;

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

-- Delete Query 

delete from students where id = 105;
select * from students;

-- Having Clause
select * from students;
select name , age , marks from students group by name , age , marks having max(marks>=70);