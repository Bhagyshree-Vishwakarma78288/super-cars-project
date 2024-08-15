-- create databse 
create database supercars; 
use supercars; 
-- create table
create table super_car(
 supercar_id INT AUTO_INCREMENT PRIMARY KEY,
 model VARCHAR(50) NOT NULL,
make VARCHAR(50) NOT NULL,
price_in_dollars DECIMAL(10,2) NOT NULL,
horsepower INT NOT NULL,
torque INT NOT NULL,
top_speed int not null,
acceleration DECIMAL(4,2) NOT NULL,
engine_type VARCHAR(50) NOT NULL,
luxury_level ENUM('low', 'medium', 'high') NOT NULL,
weight INT NOT NULL,
num_gears INT NOT NULL,
brand_ambassador VARCHAR(50),
launch_date DATE,
is_available BOOLEAN DEFAULT true,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

insert into super_car(model, make, price_in_dollars, horsepower, torque, top_speed, acceleration,
engine_type, luxury_level, weight, num_gears, brand_ambassador, launch_date, is_available)values 
('Aventador', 'Lamborghini', 500000.00, 730, 690, 217, 2.9, 'V12', 'high', 3472, 7, 'Lewis Hamilton', '2011-03-01', true),
  ('458 Italia', 'Ferrari', 250000.00, 562, 398, 210, 3.4, 'V8', 'medium', 3384, 7, 'Sebastian Vettel', '2010-01-01', true),
  ('GT', 'Ford', 150000.00, 647, 550, 216, 3.0, 'V6', 'medium', 3526, 7, NULL, '2017-01-01', true),
  ('Huracan', 'Lamborghini', 300000.00, 610, 413, 202, 3.2, 'V10', 'high', 3135, 7, 'Kylian Mbappé', NULL, false),
  ('Senna', 'McLaren', 1000000.00, 789, 590, 208, 2.8, 'V8', 'high', 2641, 7, 'Fernando Alonso', NULL, true),
  ('Chiron', 'Bugatti', 3000000.00, 1500, 1180, 261, 2.5, 'W16', 'high', 4398, 7, 'Cristiano Ronaldo', '2016-03-01', true),
  ('One-77', 'Aston Martin', 2000000.00, 750, 553, 220, 3.7, 'V12', 'high', 3307, 6, 'James Bond', '2010-01-01', true),
  ('Veyron', 'Bugatti', 2500000.00, 1001, 922, 253, 2.5, 'W16', 'high', 4162, 7, 'Usain Bolt', '2005-01-01', false),
  ('LaFerrari', 'Ferrari', 1500000.00, 950, 664, 217, 2.5, 'V12', 'high', 2855, 7, 'Michael Schumacher', '2013-01-01', true),
  ('Veneno', 'Lamborghini', 4500000.00, 740, 507, 221, 2.8, 'V12', 'high', 1490, 7, NULL, '2013-01-01', true),
  ('P1', 'McLaren', 1350000.00, 903, 664, 217, 2.8, 'V8', 'high', 3075, 7, 'Lewis Hamilton', '2014-01-01', true),
  ('Sian', 'Lamborghini', 3500000.00, 819, 720, 217, 2.8, 'V12', 'high', 3450, 7, 'Jaden Smith', NULL, false),
  ('Regera', 'Koenigsegg', 2000000.00, 1500, 1475, 255, 2.8, 'V8', 'high', 3527, 7, NULL, '2015-01-01', true),
  ('Huayra', 'Pagani', 2800000.00, 764, 740, 230, 3.0, 'V12', 'high', 2976, 7, 'Lewis Hamilton', '2011-01-01', false),
  ('Sesto Elemento', 'Lamborghini', 2900000.00, 570, 398, 219, 2.5, 'V10', 'high', 2202, 6, NULL, '2010-01-01', true),
  ('TSR-S', 'Zenvo', 1700000.00, 1177, 811, 325, 2.8, 'V8', 'high', 3042, 7, NULL, '2019-01-01', true),
  ('C_Two', 'Rimac', 2000000.00, 1914, 1696, 258, 1.85, 'Electric', 'high', 1950, 1, 'Richard Hammond', '2022-01-01', true),
  ('Speedtail', 'McLaren', 2500000.00, 1050, 848, 250, 2.5, 'Hybrid', 'high', 1400, 7, 'Chris Harris', '2019-01-01', true),
  ('Naraya', 'Mazzanti', 2000000.00, 1000, 1200, 250, 3.1, 'V8', 'high', 1200, 6, NULL, '2023-01-01', false),
  ('Rebel', 'Apollo', 2300000.00, 780, 560, 224, 2.7, 'V12', 'high', 1250, 6, NULL, '2018-01-01', true),
  ('T.50', 'Gordon Murray', 3000000.00, 663, 467, 217, 2.5, 'V12', 'high', 986, 6, 'Lewis Hamilton', '2020-01-01', true),
  ('RP1', 'Rally', 700000.00, 420, 320, 155, 3.3, 'I4', 'medium', 750, 6, NULL, '2015-01-01', false),
  ('F150', 'Ferrari', 2000000.00, 1036, 663, 236, 2.4, 'V12', 'high', 1525, 7, 'Michael Schumacher', '2013-01-01', true),
  ('Chirana TGT', 'Chirana', 400000.00, 120, 320, 200, 3.0, 'I6', 'low', 2000, 5, NULL, '2017-01-01', true),
  ('Zonda HP Barchetta', 'Pagani', 2000000.00, 800, 811, 218, 3.0, 'V12', 'high', 1250, 6, 'Lewis Hamilton', '2018-01-01', false),
  ('Valkyrie', 'Aston Martin', 3000000.00, 1160, 664, 250, 2.5, 'V12', 'high', 1030, 7, 'Max Verstappen', '2021-01-01', true),
  ('Sian Roadster', 'Lamborghini', 3750000.00, 819, 720, 217, 2.8, 'V12', 'high', 3470, 7, NULL, '2020-01-01', false),
  ('CCX', 'Koenigsegg', 2500000.00, 806, 678, 245, 3.2, 'V8', 'high', 1280, 6, NULL, '2006-01-01', true),
  ('RapidE', 'Aston Martin', 250000.00, 610, 950, 249, 3.0, 'Electric', 'medium', 2150, 1, NULL, '2019-01-01', true),
  ('GMA T.50s Niki Lauda', 'Gordon Murray', 4000000.00, 725, 485, 220, 2.5, 'V12', 'high', 852, 6, 'Niki Lauda', '2022-01-01', false),
  ('Gemera', 'Koenigsegg', 1750000.00, 1700, 2580, 248, 1.9, 'Hybrid', 'high', 1850, 3, NULL, '2020-01-01', true),
  ('Essenza SCV12', 'Lamborghini', 3000000.00, 830, 750, 350, 2.8, 'V12', 'high', 1212, 6, NULL, '2020-01-01', false),
  ('Zenvo TSR', 'Zenvo', 1800000.00, 1177, 811, 325, 2.8, 'V8', 'high', 3042, 7, NULL, '2018-01-01', true),
  ('Pininfarina Battista', 'Pininfarina', 2000000.00, 1874, 1696, 217, 1.9, 'Electric', 'high', 1950, 1, NULL, '2022-01-01', false),
  ('Senna GTR', 'McLaren', 1800000.00, 814, 590, 211, 2.9, 'V8', 'high', 1198, 7, 'Jenson Button', '2020-01-01', false),
  ('Venom F5', 'Hennessey', 2500000.00, 1817, 1193, 311, 2.6, 'V8', 'high', 1338, 7, NULL, '2021-01-01', true),
  ('Bugatti Bolide', 'Bugatti', 5000000.00, 1850, 1850, 311, 2.2, 'W16', 'high', 1240, 7, 'Bugatti Chiron Super Sport 300+ Team', '2020-01-01', false),
  ('Regera Ghost Package', 'Koenigsegg', 3000000.00, 1500, 1475, 255, 2.8, 'V8', 'high', 3527, 7, NULL, '2022-01-01', true),
  ('Rimac Nevera', 'Rimac', 2400000.00, 1914, 1696, 258, 1.85, 'Electric', 'high', 2150, 1, NULL, '2021-01-01', true),
  ('T50s', 'Gordon Murray', 4000000.00, 725, 485, 220, 2.5, 'V12', 'high', 852, 6, NULL, '2023-01-01', false);
  
  -- 1 Top 5 Most Expensive Supercars
  select model,price_in_dollars,top_speed
  from super_car
  order by price_in_dollars desc
  limit 5 ; 
  
  -- 2 Supercar with the Highest Top Speed
  select model,price_in_dollars,top_speed
  from super_car
  order by top_speed desc
  limit 1 ; 
  
  -- 3 Fastest Acceleration Time 
  select acceleration,model,top_speed
  from super_car 
  order by acceleration desc
  limit 1 ; 
  
  -- 4 Supercar with the Highest Horsepower
  select horsepower,model,top_speed
  from super_car
  order by horsepower desc
  limit 1 ; 
  
  -- 5 Average Horsepower and Torque Values
  select avg(horsepower) as avg_horsepoert, avg(torque) as avg_torque,model
  from super_car
 group by model
 order by avg_horsepoert desc
 limit 5; 
 
 -- 6 Weight Range for Supercars
 select model,min(weight) as min_weight,
 max(weight) as max_weight from super_car
 group by model; 
 
 -- 7 Most Common Engine Types
 select model,count(engine_type) as count 
 from super_car
 group by model
 order by count desc; 
 
 -- 8  List All Supercars Manufactured by 'Ferrari'
 select * from super_car
 where make = "Ferrari"; 
 
 -- 9  Find Supercars with an Acceleration Less Than 3 Seconds
 select * from super_car
 where acceleration<3.00 ; 
 
 -- 10  List Supercars with 'high' Luxury Level and More Than 1000 Horsepower
 select * from super_car
 where luxury_level = "high" and horsepower>1000 ; 
 
 -- 11  Find Supercars Launched in 2019
 select * from super_car
 where year(launch_date) = 2019; 
 
-- 11 Update the Price of 'Aventador' to 550000
select * from super_car; 
update super_car
set price_in_dollars = 550000
where model = "Aventador"; 

set sql_safe_updates = 0;

-- 12 Delete All Supercars Not Available
delete from super_car
where is_available = false;  
select * from super_car; 

-- 13 List the Total Number of Supercars from Each Manufacturer
select make, count(*) as total 
from super_car
group by make; 

-- 14 Find the Supercar with the Lowest Acceleration
select * from super_car
order by acceleration asc
limit 1 ; 

-- 15 Calculate the Total Value of All Available Supercars
select sum(price_in_dollars) as total_value
from super_car
where is_available = true;

-- 16  List Supercars with a Specific Range of Horsepower (e.g., 500-600)
select * from super_car 
where horsepower between 500 and 600; 

-- 17 Count the Number of Supercars with Each Luxury Level
select luxury_level , count(*) from super_car
group by luxury_level; 

-- 18 find Supercars with More than 500 kg Weight and Less than 500 Horsepower
select * from super_car
where weight>500 and horsepower<500; 

-- 19 find the Supercar with the Longest Name
select model from super_car 
order by length(model) desc
limit 1; 

-- 20 List Supercars with Acceleration Greater Than 2.5 Seconds
select * from super_car
where acceleration >2.5; 

-- 21 Find the Supercar with the Most Number of Gears
select * from super_car
order by num_gears desc
limit 1 ; 











 
 
 
 
 
 

  
  
  
  
  
  
  
  
  
  




















































































































































































































































































































































































































































  
  