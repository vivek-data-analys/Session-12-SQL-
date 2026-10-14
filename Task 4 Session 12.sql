create database zomatoresturants ;
use zomatoresturants ; 

create table zomato_resturants ( 
resturant_id int ,
resturant_name varchar (100) not null ,
city varchar (100) not null ,
rating int ) ; 

alter table zomato_resturants 
modify rating decimal (2,1) ;



insert into zomato_resturants ( resturant_id,resturant_name,city,rating) 
values 
(1, 'Honest Restaurant', 'Ahmedabad', 1.2),
(2, 'Gordhan Thal', 'Ahmedabad', 3.5),
(3, 'The Grand Thakar', 'Vadodara', 2.2),
(4, 'Sankalp', 'Surat', 4.0),
(5, 'Havmor Restaurant', 'Mumbai', 1.8),
(6, 'Dominos Pizza', 'Ahmedabad', 4.5),
(7, 'La Pinoz Pizza', 'Surat', 2.7),
(8, 'McDonalds', 'Mumbai', 3.9),
(9, 'Barbeque Nation', 'Vadodara', 1.5),
(10, 'Pizza Hut', 'Rajkot', 4.8),
(11, 'Agashiye', 'Ahmedabad', 2.4),
(12, 'Jassi De Parathe', 'Surat', 3.2),
(13, 'Subway', 'Mumbai', 4.3),
(14, 'Kansar Gujarati Thali', 'Vadodara', 1.9),
(15, 'Belgian Waffle Co', 'Rajkot', 3.7),
(16, 'Burger King', 'Ahmedabad', 2.5),
(17, 'TGB Cafe N Bakery', 'Surat', 4.6),
(18, 'Cream Stone', 'Mumbai', 3.0),
(19, 'Shreeji Krupa', 'Vadodara', 1.4),
(20, 'Marwadi Rasoi', 'Rajkot', 4.9);

with cityaverage as ( 
select 
city ,
avg(rating) as average_rating 
from zomato_resturants 
group by city 
) 
select 
zr.resturant_id ,
zr.resturant_name , 
zr.city ,
zr.rating 
from zomato_resturants  zr 
join cityaverage c 
on zr.city = c.city 
where c.average_rating > 4;




