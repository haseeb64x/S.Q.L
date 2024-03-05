create database haseeb102;

use haseeb102;

create table dept (
	id int primary key,
    name varchar(15)
);

create table teacher (
	id int primary key,
    name varchar(10),
    dept_id int,
    foreign key (dept_id) references dept (id)
);

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

-- Cascading method

drop table teacher;

create table teacher (
	id int primary key,
    name varchar(10),
    dept_id int,
    foreign key (dept_id) references dept (id)
    on update cascade
    on delete cascade
);

update dept set id = 104 where id = 103;

select * from teacher;

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