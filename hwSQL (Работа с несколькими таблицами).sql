-- ================ Задание 1 ================= 

-- 1. Создайте таблицу city с колонками city_id и city_name.

--create table city (city_id bigserial not null primary key, city_name varchar(50) not null);


-- 2. Добавьте в таблицу employee колонку city_id.

--alter table employee drop city_id;
--alter table employee add column city_id int;


-- 3. Назначьте ее внешним ключом и свяжите с таблицей city.

--alter table employee add constraint city_id foreign key(city_id) references city(city_id);


-- 4. Заполните таблицу city и назначьте работникам соответствующие города.

--insert into city (city_name) values ('Nogliki');
--insert into city (city_name) values ('Yujno_sakhalinsk');
--insert into city (city_name) values ('Khabarovsk');
--insert into city (city_name) values ('Vladivostok');
--insert into city (city_name) values ('Almetevsk');
--insert into city (city_name) values ('Kazan');
--insert into city (city_name) values ('Abakan');

-- ================ Задание 2 ================= 

-- 1. Получите имена и фамилии сотрудников, а также города, в которых они проживают.

--select first_name, last_name, city_name
--from employee
--inner join city
--on employee.city_id = city.city_id;


-- 2. Получите города, а также имена и фамилии сотрудников, которые в них проживают. 
-- Если в городе никто из сотрудников не живет, то вместо имени должен стоять null.

--select city_name, first_name, last_name 
--from city
--left join employee
--on employee.city_id = city.city_id;


-- 3. Получите имена всех сотрудников и названия всех городов. Если в городе не живет никто из сотрудников, то вместо имени должен стоять null. 
-- Аналогично, если города для какого-то из сотрудников нет в списке, так же должен быть получен null.

--select first_name, last_name, city_name
--from employee
--right join city
--on employee.city_id = city.city_id;


-- 4. Получите таблицу, в которой каждому имени должен соответствовать каждый город.

select first_name, last_name, city_name
from employee
cross join city




--select*from employee;
--select*from city;