/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/
create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

/*Наполнить таблицу employees 70 строками*/
insert into employees (employee_name)
values ('Arthur'), ('Michelle'), ('Natalia'), ('Anna'), ('Jack'),
('Pavel'), ('Eva'), ('Maria'), ('Ivan'), ('Sofia'), 
('Svetlana'),('Ella'), ('Dima'), ('Alla'), ('Marta'), 
('Ignat'), ('William'), ('George'), ('Sara'), ('Irina'), 
('Sergey'), ('Victor'), ('Catherine'),('Anastasia'), ('Alexander'), 
('Andrey'), ('Tatiana'), ('Alina'),('Vladimir'), ('Vadim'), 
('Leonard'), ('Valentin'), ('Valentina'),('Christina'), ('Alexandra'), 
('Polina'), ('Marina'), ('Albina'),('Marat'), ('Mark'),
('Dmitriy'), ('Oleq'), ('Miron'),('Vitaly'),('Eugene'),
('Helen'), ('Anton'), ('Albert'), ('Boris'), ('Aleksey'), 
('Vasiliy'), ('Yana'),('Tamara'), ('Rimma'), ('Rita'),
('Kira'), ('Dina'), ('Darina'), ('Yan'), ('Yura'),
('Stepan'), ('Rodion'), ('Nikita'), ('Efim'), ('Egor'),
('Gena'), ('Gleb'), ('Slava'), ('Taya'), ('Zoya');

/*Вывести данные таблицы employees*/
select * from employees;

/*Создать таблицу salary
- id serial primary key,
- monthly_salary int not NULL*/

create table salary(
id serial primary key,
monthly_salary int not null
);

/*Наполнить таблицу salary 16 строками*/
insert into salary (monthly_salary)
values (1000), (1100), (1200), (1300), (1400), 
(1500), (1600), (1700), (1800), (1900),
(2000), (2100), (2200), (2300), (2400);

/*Вывести данные таблицы salary*/
select * from salary;

/*Создать таблицу employee_salary
- id serial primary key,
- employee_id int not null unique
- salary_id int, not null*/

create table employee_salary(
id serial  primary key,
employee_id int not null unique,
salary_id int not null
);

/*Наполнить таблицу employee_salary 40 строками:
в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary (employee_id, salary_id)
values (1, 3), (2, 1), (3, 3), (5, 7), (7, 8),
(9, 10), (12, 10), (10, 13), (11, 5), (14, 6),
(16, 6), (19, 4), (20, 14), (21, 14), (22, 10),
(23, 11), (26, 8), (28, 8), (30, 9), (33, 1),
(35, 7), (37, 7), (40, 12), (41, 12), (44, 13),
(48, 15), (50, 15), (55, 6), (56, 5), (60, 10),
(96, 4), (101, 7), (99, 12), (88, 2), (123, 13),
(100, 1), (90, 15), (80, 6), (77, 5), (145, 1);

/*Вывести данные таблицы employee_salary*/
select * from employee_salary;


/*Создать таблицу roles
- id serial primary key,
- role_name int not null unique*/
create table roles (
 id serial  primary key,
role_name int not null unique
);

/*Поменять тип столба role_name с int на varchar(30)*/
ALTER table roles
ALTER COLUMN role_name type varchar(30);

/*Наполнить таблицу roles 20 строками*/
insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

/*Вывести данные таблицы roles*/
select * from roles;


/*Создать таблицу roles_employee
- id serial primary key,
- employee_id int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)*/
create table roles_employee(
id serial  primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
  references  employees(id),
foreign key (role_id)
  references roles(id)
);

/*Наполнить таблицу roles_employee 40 строками*/
insert into roles_employee (employee_id, role_id)
values (7, 2),
(20, 4),
(3, 3),
(5, 20),
(23, 4),
(11, 12),
(10, 9),
(70, 12),
(17, 5),
(27, 15),
(44, 20),
(55, 13),
(67, 13),
(60, 18),
(4, 1),
(14, 1),
(1, 3),
(6, 19),
(31, 19),
(69, 18),
(13, 7),
(15, 16),
(21, 14),
(22, 11),
(33, 11),
(37, 12),
(38, 10),
(66, 10),
(51, 20),
(50, 14),
(40, 15),
(32, 10),
(49, 9),
(47, 8),
(9, 7),
(19, 6),
(18, 5),
(28, 3),
(2, 4),
(58, 2);

/*Вывести данные таблицы roles_employee*/
select * from roles_employee;
