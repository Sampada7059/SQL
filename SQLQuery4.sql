use org;

select * from Worker;
--1. Synonyms
create synonym emp for Worker;

create table TraineeSoftwareEngg
(
Tid int,
TName varchar(20)
)

--sequence

create sequence Tid as int start with 100 increment by 1; 

insert into TraineeSoftwareEngg values(NEXT VALUE FOR Tid,'Sampada');
insert into TraineeSoftwareEngg values(NEXT VALUE FOR Tid,'Sirisha');
insert into TraineeSoftwareEngg values(NEXT VALUE FOR Tid,'Rizwan');


 select * from TraineeSoftwareEngg;

 create table JrSoftwareEngg
(
Jid int,
JName varchar(20)
)

--alter sequence
alter sequence Tid restart with 100 increment by 1;

insert into JrSoftwareEngg values(NEXT VALUE FOR Tid,'Varshini');
insert into JrSoftwareEngg values(NEXT VALUE FOR Tid,'Deepika');
insert into JrSoftwareEngg values(NEXT VALUE FOR Tid,'Sushma');


select * from JrSoftwareEngg;

--drop sequence

drop sequence Tid;

--Index
--clustered index on trainee table
create clustered index ind_Jid on TraineeSoftwareEngg(Tid);

--Non clustered index on trainee table
create index ind_JName on TraineeSoftwareEngg(TName);

--VIEWS

--1)Simple View

create view salaryview
as
select * from Worker where SALARY>5000;

--Retrieve the view
select * from salaryview;

--2)Complex view

create view bonus_view 
as
select * from Worker as w inner join Bonus as b on w.WORKER_ID = b.WORKER_REF_ID;

select * from bonus_view;

--Aggregate
SELECT SUM(SALARY) AS Total_SALARY FROM Worker;


--String functions

--Length
SELECT LEN('SAMPADA POLEPALLI') as Length; 
--concat
SELECT CONCAT('SAMPADA', 'POLEPALLI') as Concat; 
--to upper case
SELECT UPPER('Sampada Polepalli') as ToUpper; 
--to Lower case
SELECT LOWER('Sampada Polepalli') as ToUpper; 
--reverse
SELECT REVERSE('SAMPADA POLEPALLI')as Reverse; 
--substring
SELECT SUBSTRING('SAMPADA POLEPALLI', 1, 5) AS substring; 
 --Remove leading and trailing spaces from a string
SELECT TRIM('    SAMPADA     ') AS TrimmedString; 
--replicate 3 times
SELECT REPLICATE('SAMPADA POLEPALLI ', 2) as Replicate; 


--MATH FUNCTION
-- absolute value
Select abs(-5) as ABSOLUTE; 
--SIGN
Select sign(0) as Sign;
--COS
Select cos(0) as Sign;
--FLOOR VALUE
Select floor(7.8)as floor; 
--POWER
Select power(2,2)as power; 
--DECIMAL
Select round(8.345,1) as Round; 
--sqrt
Select sqrt(4) as squareroot; 


--DATE AND TIME
SELECT DAY(JOINING_DATE) AS DayOfMonth from Worker;