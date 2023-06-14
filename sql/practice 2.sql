create database if not exists iran_air;

create table customers
(
    id        int primary key auto_increment,
    firstName varchar(64)  not null,
    lastName  varchar(64)  not null,
    city      varchar(128) not null,
    state     varchar(128) not null,
    birthday  date
);

create table airports
(
    name        varchar(128)    not null,
    code        int primary key not null check (length(code) = 3),
    city        varchar(128)    not null,
    state       varchar(128)    not null,
    airportLat  int             not null,
    airportLong int             not null,
    cityLat     int             not null,
    cityLong    int             not null,
    population  int             not null
);

create table airlines
(
    name varchar(255)    not null,
    code int primary key not null check (length(code) = 2)
);

create table schedule
(
    airline      int      not null references airlines (code),
    flightNumber int      not null,
    source       int      not null references airports (code),
    destination  int      not null references airports (code),
    departTime   datetime not null,
    arriveTime   datetime not null
);

create table bookings
(
    customerID    int        not null references customers (id),
    airline       int        not null references airlines (code),
    flightNumber  int        not null references schedule (flightNumber),
    boardingGroup int        not null check (length(boardingGroup) = 1 and boardingGroup between 1 and 3),
    seatRow       int        not null check (length(boardingGroup) = 1 and boardingGroup between 1 and 30),
    seatLetter    varchar(1) not null check (length(boardingGroup) = 1 and boardingGroup between 'A' and 'F')
);

select id, firstName, lastName
from customers
where city like 'tehran';


select a.name       as airline_name,
       s.flightnumber,
       s.departtime as takeoff_time,
       s.arrivetime as landing_time
from airlines a
         join schedule s on a.code = s.airline
         join airports ap on s.source = ap.code
         join airports ad on s.destination = ad.code
where ap.code = 'THR'
  and ad.code = 'ILA';


select airports.name, airports.code, airports.city
from airports
where airports.state = 'Hormozgan'
  and airports.population >= 100000;

select airports.state, count(*) as airportscount
from airports
group by airports.state;

select count(b.customerid)
from bookings b
         join airlines a on b.airline = a.code
         join schedule s on a.code = s.airline
where a.name = 'HM'
  and s.flightnumber = 40;


-- بخش  پیشرفته

select bookings.airline, bookings.flightNumber, count(*)
from bookings
group by bookings.airline, bookings.flightNumber;


select bookings.flightNumber, count(*) as num_custumer
from bookings
group by bookings.airline, bookings.flightNumber
order by num_custumer desc
limit 1;
