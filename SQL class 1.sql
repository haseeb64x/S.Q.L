-- New Database Creation
create database haseeb;
--  Use database 
use haseeb;
-- New Table
-- varchar(n) , where n limits the  number of charachters
create table employee (
	id int primary key,
    name varchar(10),
    grade varchar(2),
    marks int,
    city varchar(10)
);

select * from employee;

insert into employee (id , name , grade , marks , city)values
(001 , "Ali" , "A" , 88 , "Karachi"),
(002 , "Aliza" , "B" , 68 , "Lahore"),
(003 , "Hamza" , "A+" , 98 , "Haiderabad"),
(004 , "Huzaifa" , "B+" , 78 , "Islamabad"),
(005 , "Ibrahim" , "C" , 58 , "Faisalabad")



