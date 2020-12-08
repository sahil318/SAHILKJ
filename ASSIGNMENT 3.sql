use assign;
create table D1(dept_id INTEGER ,dept_name varchar(50));
create table e_table(emp_id INTEGER, emp_name varchar(30),dept_id INTEGER, salary INTEGER, manager INTEGER);
insert into e_table values(1,'Arun',1,8000,4);
insert into e_table values(2,'Kiran',1,7000,1);
insert into e_table values(3,'Scott',1,3000,1);
insert into e_table values(4,'Max',2,9000,null);
insert into e_table values(5,'Jack',2,8000,4);
insert into e_table values(6,'King',null,6000,1);
insert into D1 value(1,'Finance');
insert into D1 values(2,'Training');
insert into D1 values(3,'Marketing');
show tables;
alter table D1 add primary key (dept_id);
alter table e_table add foreign key (dept_id) references D1(dept_id);
alter table D1 modify dept_id integer not null;
select *, sum(salary) from e_table group by dept_id;
select dept_id , sum(salary) from e_table group by dept_id having sum(salary) > 17000;
select dept_id, sum(salary) from e_table group by dept_id having sum(salary)>18000;
select dept_id, sum(salary) from e_table group by dept_id having sum(salary)<20000;