drop database haseeb64;

create database haseeb32;

use haseeb32;

create table students (
	id int primary key,
    name varchar(10),
    age int,
    city varchar(10),
    marks int,
    grade varchar(3)
);

insert into students (id , name , age , city , marks , grade)values
(004 , "Abdullah" , 13 , "MUL" , 75 , "B"),
(005 , "Ahad" , 12 , "LAH" , 60 , "c");

select * from students;

-- Clausing 
--  WHERE 
select * from students;
select * from students where id = 001;
select * from students where name = "Ahad";
select * from students where city = "KHI";
select * from students where city in ("KHI" , "MUL");
select * from students where age between 13 and 17;
select * from students where marks = 90 or grade = "B";
select * from students where marks = 85 and grade = "A";
select distinct city from students;

-- Update
set sql_safe_updates=0;
update students
set name = "Hamza" where id = 002;

select * from students;

update students
set marks = marks+5 where id in (001,002,003,004,005)
