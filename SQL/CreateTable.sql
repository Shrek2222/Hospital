use Hospital1;

create table Person (
prsnid int identity primary key not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
dob date
)

create table Patient (
patnid int identity primary key not null,
prsnid int foreign key references Person(prsnid),
ssn char(9)
)

create table Contact (
contactid int identity primary key not null,
patnid int foreign key references Patient(patnid) not null,
prsnid int foreign key references Person(prsnid) not null,
constraint UC_Contact unique (prsnid,patnid)
)

create table Connection(
Conid int identity primary key not null,
prsnid int foreign key references Person(prsnid) not null,
email varchar(50) ,
homephone char(10) ,
cellphone char(10) ,
)
