create database project;
use project;
create table trains(
train_id int primary key,
train_number varchar(10),
type varchar(20),
capacity int);

insert into trains values(1, 'T123', 'Express', 300);
insert into trains values(2, 'T456', 'Freight', 500);
insert into trains values(3, 'T789', 'Local', 150);
insert into trains values(4, 'T012', 'international', 600);
insert into trains values(5, 'T345', 'Subway', 200);


create table stations(
station_id int primary key,
station_name varchar(20),
location varchar(30));

insert into stations values(11,'Howrah','Kolkata');
insert into stations values(12,'Secunderabad','Hyderabad');
insert into stations values(13,'Varanasi','UttarPradesh');
insert into stations values(14,'Ahmedabad','Gujarat');
insert into stations values(15,'Chennai','TamilNadu');

create table schedules(
schedule_id int primary key,
train_id int,
foreign key(train_id) references trains(train_id),
station_id int,
foreign key(station_id) references stations(station_id),
arrival_time datetime,
departure_time datetime);


insert into schedules values(101,1,11,'2024-09-21 12:00:00', '2024-09-21 12:20:00');
insert into schedules values(102,2,12,'2024-09-22 15:00:00', '2024-09-23 15:15:00');
insert into schedules values(103,3,13,'2024-09-23 08:00:00', '2024-09-24 08:20:00');
insert into schedules values(104,4,14,'2024-09-24 11:00:00', '2024-09-25 15:30:00');
insert into schedules values(105,5,15,'2024-09-25 06:00:00', '2024-09-26 08:10:00');

create table tickets(
ticket_id int primary key,
train_id int,
foreign key(train_id) references trains(train_id),
passenger_name varchar(20),
seat_number varchar(30),
price bigint);

insert into tickets values(401,1,'Anjali',35,2000);
insert into tickets values(402,2,'Deepthi',40,2500);
insert into tickets values(403,3,'Nandini',45,1500);
insert into tickets values(404,4,'Mamatha',42,2700);
insert into tickets values(405,5,'Bhavani',38,3000);

create table employees(
employee_id int primary key,
name varchar(20),
position varchar(30),
station_id int,
foreign key(station_id) references stations(station_id));

insert into employees values(111,'John','Station master',11);
insert into employees values(112,'Harry','Railway Engineer',12);
insert into employees values(113,'Williams','Billing Engineer',13);
insert into employees values(114,'Jack','Safety Compliance',14);
insert into employees values(115,'Sona','Train Driver',15);

create table maintenance_record(
record_id int primary key,
train_id int,
foreign key(train_id) references trains(train_id),
maintenance_date datetime,
description text); 

insert into maintenance_record values(501,1,'2024-09-20 10:00:00', 'Engine maintenance and oil change');
insert into maintenance_record values(502,2,'2024-09-19 09:30:00', 'Brake system inspection and repair');
insert into maintenance_record values(503,3,'2024-09-18 14:00:00', 'General cleaning and minor repairs');
insert into maintenance_record values(504,4,'2024-09-17 09:50:00', 'Tire replacement and alignment');
insert into maintenance_record values(505,5,'2024-09-16 05:25:00', 'Fluid top-up and filter replacement');
