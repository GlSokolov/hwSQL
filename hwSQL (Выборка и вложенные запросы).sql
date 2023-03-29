-- ======= Задание 1 =======================
select * from book;

-- 1. Доведите количество записей в таблице до 5.
insert into book (first_name, last_name, gender, age)
values ('Lena', 'Golovach', 'female', 28);
insert into book (first_name, last_name, gender, age)
values ('Valeriy', 'Albertovich', 'male', 54);
insert into book (first_name, last_name, gender, age)
values ('Denis', 'Petrov', 'male', 27);

-- 2. Получите информацию об именах и фамилиях по всем сотрудникам. 
-- Колонки должны называться «Имя» и «Фамилия».
select id as id,
first_name as Имя,
last_name as Фамилия
from book
group by id;

-- 3. Получите всю информацию о сотрудниках, которые младше 30 или старше 50 лет.
select * from book where age > 50;
select * from book where age < 30;

-- 4. Получите всю информацию о сотрудниках, которым от 30 до 50 лет.
select * from book
where age between 30 and 50;

-- 5. Выведите полный список сотрудников, которые отсортированы по фамилиям в обратном порядке.
select * from book
order by last_name DESC;

-- select * from book
-- order by last_name ASC;

-- 6. Выведите сотрудников, имена которых длиннее 4 символов.
select first_name, last_name 
from book 
where length(first_name) > 4;


-- ======= Задание 2 =======================
select * from book;

-- 1. Измените имена у двух сотрудников так, чтобы на 5 сотрудников было только 3 разных имени, 
-- то есть чтобы получились две пары тезок и один сотрудник с уникальным именем.
update book
set first_name = 'Denis' where first_name = 'Valeriy';

update book
set first_name = 'Lena' where first_name = 'Varya';

select * from book;

-- 2. Посчитайте суммарный возраст для каждого имени. Выведите в двух столбцах «имя» и «суммарный возраст».
select first_name as Имя,
sum(age) as Суммарный_возраст
from book
group by Имя;

-- 3. Выведите имя и самый юный возраст, соответствующий имени.
select first_name as Имя,
min(age) as Минимальный_возраст
from book
group by Имя;

-- 4. Выведите имя и максимальный возраст только для неуникальных имен.
-- Результат отсортируйте по возрасту в порядке возрастания.
select first_name as Имя,
max(age) as Максимальный_возраст
from book
group by Имя having count(first_name) > 1;

