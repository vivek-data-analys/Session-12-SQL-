create database iplmatches ; 
use iplmatches ; 

create table iplmatches (
match_id int , 
team varchar (100) not null ,
runs int ,
match_year int ) ; 

insert into iplmatches (match_id,team,runs,match_year) 
values 
(1, 'CSK', 185, 2020),
(2, 'MI', 210, 2021),
(3, 'RCB', 175, 2022),
(4, 'KKR', 198, 2023),
(5, 'GT', 205, 2024),
(6, 'RR', 167, 2020),
(7, 'SRH', 220, 2021),
(8, 'PBKS', 192, 2022),
(9, 'DC', 180, 2023),
(10, 'LSG', 215, 2024);

set sql_safe_updates = 0 ;

update iplmatches 
set runs = 1089
where match_id = 2;

update iplmatches 
set runs = 4000
where match_id = 1;

update iplmatches 
set runs = 6000
where match_id = 3;


update iplmatches 
set runs = 3000
where match_id = 4;


update iplmatches 
set runs = 2500
where match_id = 6;


select * from iplmatches ; 

with TotalRuns as 
(
select 
team ,
match_year ,
sum(runs) as total_runs 
from iplmatches 
group by team ,match_year 
having match_year = 2023 
)
select 
im.team ,
total_runs 
from iplmatches im 
join TotalRuns as tr 
on tr.team = im.team 
where runs > 2000 ; 









