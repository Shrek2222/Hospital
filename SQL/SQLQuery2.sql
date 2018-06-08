use Hospital1;
--Oldest 
select concat (P1.firstName,' ', P1.lastName) 'Name' , datediff (year, dob, CURRENT_TIMESTAMP) as 'Age' 
from Person P1
join Patient P2 on P1.prsnid = P2.prsnid
where dob = (select min([dob]) from Person P3 join Patient P4 on P3.prsnid = P4.prsnid)
--Youngest
select firstName, lastName
from [dbo].Person
where dob = (select max([dob]) from Person)
select * from Connection
select * from Contact
--Joining Tables
select P1.prsnid, CONCAT ( P1.firstName,' ', P1.lastName) 'Full Name', P1.dob, datediff (year, dob, CURRENT_TIMESTAMP) as 'Age', P1.Gender, P3.email, P3.homephone, P3.cellphone
from  Person P1
join Patient P2 on P1.prsnid = P2.prsnid
join Connection P3 on P1.prsnid = P3.prsnid
create view VContact as 
select P1.prsnid, CONCAT ( P1.firstName,' ', P1.lastName) 'Full Name', P1.dob, datediff (year, dob, CURRENT_TIMESTAMP) as 'Age', P3.email, P3.homephone, P3.cellphone
from Person P1 
join Connection P3 on P1.prsnid = P3.prsnid;
select * from VContact;
select * from Contact;
select * from Patient;
select P5.prsnid, 