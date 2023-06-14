create table country
(
    id           int          not null primary key auto_increment,
    country_name varchar(255) not null
);

create table university
(
    id              int          not null primary key auto_increment,
    country_id      int          not null references country (id),
    university_name varchar(255) not null
);

create table university_year
(
    university_id             int not null references university (id),
    year                      int not null,
    num_student               int not null,
    student_staff_ratio       int not null,
    pct_international_student int not null,
    pct_female_student        int not null
);

create table ranking_system
(
    id          int          not null primary key auto_increment,
    system_name varchar(255) not null
);

create table ranking_criteria
(
    id                int          not null primary key auto_increment,
    ranking_system_id int          not null references ranking_system (id),
    criteria_name     varchar(255) not null
);

create table university_ranking_year
(
    university_id       int not null references university (id),
    ranking_criteria_id int not null references ranking_criteria (id),
    year                int not null,
    score               int not null
);

select u.university_name, cy.num_student
from university u
         join university_year cy on u.id = cy.university_id
         join university_ranking_year ury on u.id = ury.university_id
         join ranking_criteria rc on rc.id = ury.ranking_criteria_id
         join ranking_system rs on rs.id = rc.ranking_system_id
where ury.year = 2010
  and cy.num_student > 10000
order by ury.score desc
limit 20;

select u.university_name
from university u
         join university_ranking_year ury on u.id = ury.university_id
         join ranking_criteria rc on rc.id = ury.ranking_criteria_id
         join country c on c.id = u.country_id
         join ranking_system rs on rs.id = rc.ranking_system_id
where ury.year = 2020
  and rs.system_name = 'Times'
  and c.country_name = 'iran'
order by ury.score desc
limit 10;


insert into country(country_name)
values ('iran');
insert into country(country_name)
values ('usa');
insert into country(country_name)
values ('brigantine');


insert into university(university_name, country_id)
values ('tehran', 1);
insert into university(university_name, country_id)
values ('oromiya', 1);
insert into university(university_name, country_id)
values ('ardabil', 1);
insert into university(university_name, country_id)
values ('birjand', 1);
insert into university(university_name, country_id)
values ('mashhad', 1);
insert into university(university_name, country_id)
values ('kermanshah', 1);
insert into university(university_name, country_id)
values ('zahedan', 1);
insert into university(university_name, country_id)
values ('esfehan', 1);
insert into university(university_name, country_id)
values ('tabriz', 1);
insert into university(university_name, country_id)
values ('ahvaz', 1);
insert into university(university_name, country_id)
values ('ilam', 1);

insert into university(university_name, country_id)
values ('MIT', 2);
insert into university(university_name, country_id)
values ('harvard', 2);
insert into university(university_name, country_id)
values ('oxford', 3);
insert into university(university_name, country_id)
values ('cambric', 3);
insert into university(university_name, country_id)
values ('Mexico', 2);
insert into university(university_name, country_id)
values ('Corina', 2);
insert into university(university_name, country_id)
values ('California', 2);
insert into university(university_name, country_id)
values ('Washington', 2);
insert into university(university_name, country_id)
values ('college quoin', 3);
insert into university(university_name, country_id)
values ('college king', 3);
insert into university(university_name, country_id)
values ('college prance', 3);
insert into university(university_name, country_id)
values ('college prance viliam', 3);

insert into ranking_system(system_name)
values ('Times');
insert into ranking_system(system_name)
values ('Reuters');

insert into ranking_criteria(ranking_system_id, criteria_name)
values (1, 'general'),
       (2, 'general');

insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (12, 1, 2010, 1000);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (13, 2, 2010, 950);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (14, 1, 2010, 920);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (17, 1, 2010, 910);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (19, 2, 2010, 900);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (15, 1, 2010, 890);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (16, 1, 2010, 880);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (21, 1, 2010, 870);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (20, 2, 2010, 860);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (22, 1, 2010, 850);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (23, 1, 2010, 820);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (1, 1, 2020, 810);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (2, 1, 2020, 800);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (3, 1, 2020, 790);
insert into university_ranking_year(university_id, ranking_criteria_id, year, score)
values (4, 2, 2020, 780),
       (5, 1, 2020, 770),
       (6, 2, 2020, 760),
       (8, 1, 2020, 750),
       (10, 1, 2020, 740),
       (7, 2, 2020, 730),
       (9, 1, 2020, 710),
       (11, 1, 2020, 700);


insert into university_year(university_id, year, num_student, student_staff_ratio, pct_international_student,
                            pct_female_student)
values (1, 2020, 200000, 10, 100, 30),
       (2, 2020, 10000, 10, 100, 30),
       (3, 2020, 50, 10, 100, 30),
       (4, 2020, 20, 10, 100, 30),
       (5, 2020, 10, 10, 100, 30),
       (6, 2020, 5000, 10, 100, 30),
       (7, 2020, 3000, 10, 100, 30),
       (8, 2020, 2000, 10, 100, 30),
       (9, 2020, 1000, 10, 100, 30),
       (10, 2020, 3000, 10, 100, 30),
       (11, 2020, 3300, 10, 100, 30),
       (12, 2010, 100000, 10, 100, 30),
       (13, 2010, 15000, 10, 100, 30),
       (14, 2010, 9000, 10, 100, 30),
       (15, 2010, 20000, 10, 100, 30),
       (16, 2010, 30000, 10, 100, 30),
       (17, 2010, 50000, 10, 100, 30),
       (18, 2010, 60000, 10, 100, 30),
       (19, 2010, 70000, 10, 100, 30),
       (20, 2010, 40000, 10, 100, 30),
       (21, 2010, 300000, 10, 100, 30),
       (22, 2010, 110000, 10, 100, 30),
       (23, 2010, 10000, 10, 100, 30);
