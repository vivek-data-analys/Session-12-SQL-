create database flipkart ; 
use flipkart ; 



create table flikartorders ( 
order_id int primary key , 
user_id int , 
order_date date ,
total_amount int ) ; 

insert into flikartorders (order_id,user_id,order_date,total_amount) 
values 
(1, 101, '2023-01-15', 1500.00),
(2, 102, '2023-02-20', 2500.00),
(3, 103, '2023-03-10', 3200.00),
(4, 104, '2023-04-25', 1800.00),
(5, 105, '2023-05-12', 4500.00),
(6, 106, '2023-06-18', 2100.00),
(7, 107, '2023-07-05', 5200.00),
(8, 108, '2023-08-22', 900.00),
(9, 109, '2023-09-14', 3750.00),
(10, 110, '2023-10-30', 6200.00),
(11, 111, '2023-11-11', 1300.00),
(12, 112, '2023-12-19', 2800.00),
(13, 101, '2022-03-08', 1900.00),
(14, 102, '2022-07-21', 4100.00),
(15, 103, '2024-01-17', 5500.00),
(16, 104, '2024-04-09', 2300.00),
(17, 105, '2024-08-26', 6800.00),
(18, 106, '2025-02-14', 1600.00),
(19, 107, '2025-06-23', 3400.00),
(20, 108, '2025-11-07', 7200.00);


with MonthlyTotals as 
( 
select 
month(order_date) as month_number,
sum(total_amount) as total_Salaes 
from flikartorders 
where year(order_date) = 2023 
group by month(order_date) 
) 
select 
 month_number ,
 total_Salaes 
 from MonthlyTotals 
 order by total_Salaes desc 
 limit 1  ; 
 



