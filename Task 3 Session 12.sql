create database calender ; 
use calender;


create table calendar_days ( 
Day_Date date ); 

insert into calendar_days (Day_Date) 
values 
('2023-01-05'),
('2023-02-14'),
('2023-03-20'),
('2023-04-10'),
('2023-05-25'),
('2023-06-15'),
('2023-07-08'),
('2023-08-19'),
('2023-09-12'),
('2023-10-30'),
('2023-11-17'),
('2023-12-22'),
('2022-03-18'),
('2022-07-25'),
('2024-01-11'),
('2024-04-21'),
('2024-08-16'),
('2025-02-09'),
('2025-06-28'),
('2025-11-13');


with recursive CalendarCTE as ( 
select curdate() as Day_Date 

union all 
select Date_Add(Day_Date,interval 1 day) 
from CalendarCTE 	
where Day_Date < Date_ADd(Curdate() , interval  6 day ) 
) 
select day_date 
from CalendarCTE ;


