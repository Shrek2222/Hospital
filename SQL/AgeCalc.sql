use Hospital1;
select P1.prsnid, CONCAT ( P1.firstName,' ', P1.lastName) 'Full Name', P1.dob, datediff (year, dob, CURRENT_TIMESTAMP) as 'Age'  
from  Person P1
join Patient P2 on P1.prsnid = P2.prsnid;
select AVG ( datediff (year, dob, CURRENT_TIMESTAMP) )as 'Age'  
from  Person P1
join Patient P2 on P1.prsnid = P2.prsnid
create view vPatient as 
select P1.prsnid, CONCAT ( P1.firstName,' ', P1.lastName) 'Full Name', P1.dob, datediff (year, dob, CURRENT_TIMESTAMP) as 'Age', P1.Gender 
from  Person P1
join Patient P2 on P1.prsnid = P2.prsnid;
select * from vPatient
Select concat ( [Full Name],' is ' , [Age] , ' and a ' , 
    Case when Gender = 'M' then 'Male' else 'Female'  end, '.' ) as Record
from vPatient
