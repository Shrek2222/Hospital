use Hospital1;
insert into  [dbo].[Person]
values ('Shreshth', 'Awadhiya', '26-Feb-1998');
insert into  [dbo].[Person]
values ('Spongebob', 'Awadhiya', '2-Jun-2015');
insert into  [dbo].[Person]
values ('Sandy', 'Awadhiya', '12-Jan-1998');
insert into  [dbo].[Person]
values ('Patrick', 'Awadhiya', '6-Oct-2014');
insert into [dbo].[Person]
values ('Belle', 'Awadhiya', '14-Jan-2016');
insert into [dbo].[Person]
values ('Donald', 'Duck', '12-Jan-1998');
insert into [dbo].[Patient] 
values (6,'666666666')
select * from Patient
alter table Person 
drop constraint CK__Person__Gender__47DBAE45;
alter table Person
drop column Gender;
alter table Person
add Gender varchar(1) constraint CK_PersonGender
check (Gender in ('M','F') );
Update Person
set Gender = 'F'
where prsnid = 5;
Update Person
set Gender = 'M'
where Gender is NULL;
select * from Person

insert into Connection
values (1, 'shreshth.awadhiya@gmail.com','8567950925','8566736786')
insert into Connection
values (1, 'sandysquirrel@bbmail.com','1800536876','1234567891')
insert into Connection
values (6, 'donaldduck@disney.com','4736495847','7485736495')
update Connection
set prsnid = 3
where homephone = '1800536876';
alter table Connection
add contactid int foreign key references Contact(contactid);


