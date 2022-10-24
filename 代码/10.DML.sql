/*
DML:数据操纵语言 对表中数据的增 删 改 查

*/

-- 创建表

create table stars(

id int ,

sname varchar(30),

sex char,

age  int

);
-- 添加数据

-- insert 
insert into  表名  values (字段值,字段值...);

insert into  stars  values (1,'李白','男',20);

-- ERROR 1136 (21S01): Column count doesn't match value count at row 1

insert into  stars  values (2,'李白','男');

-- 给指定的字段赋值

insert into  表名(字段名1，字段名2)  values (字段值1,字段值2);

insert into stars(id,sname,sex) values(2,"杜甫","男");

insert into stars(id,sname ,age) values(3,"李清照",30);

insert into stars(sname) values("李商隐");


-- 只给某些字段赋值
insert into stars set sname = "安琪拉";
-- 多个字段也只写一个 set 
insert into stars set sname = "妲己" ,  age =30;


-- 批量添加


insert into stars values(6,"项羽","男",20);
insert into stars values(7,"不知火舞","女",30);
insert into stars values(8,"貂蝉","女",40);


insert into stars values (9,"武则天","女",20),(10,"王昭君","女",30),(11,"西施","女",40);


insert into stars(id,sname ,age) values(3,"李清照",30),(3,"李清照",30);



select * from stars;

-- 修改数据 
/*
  update
  
    1. 满足条件数据的修改 
	
	2. 批量修改

*/

-- 将年龄 是 20 的记录  名字改为 范冰冰


update 表名 set 字段名 = 字段值  [where  筛选条件];

update stars set sname ="范冰冰" where age =20;


-- 将 安琪拉  的  id 设置为16 性别设置为 女

update stars set id = 16,sex = '女' where sname = '安琪拉';


-- 将 id 设置为66

update stars set  id =66;



-- 新建表

/*
查询表内所有的数据
select * from 表;
  
  
查询表内某些字段的数据

select 字段名 from stars;

select id , sname , age from stars;



查询符合要求的数据


select 字段名/ *  from [where 筛选条件];


*/

create table stars(

	id int,

	

	sname varchar(30),

	sex char,

	age  int,
	salary int

);


insert into stars values (9,"武则天","女",20,12000),(10,"王昭君","女",30,10000),(11,"西施","女",40,9000);

insert into stars values (1,"嬴政","男",20,15000);


select * from stars;

select id , sname , age from stars;


-- 查询薪资>10000 明星的名字

select sname  from stars where salary >10000;


select sname,sex,salary from stars where sex = '女';


/*
删除：
	1.删除 满足要求的数据
	
	
	2.删除所有的数据 
	    如果没有筛选条件 删除表内所有的数据


delete from 表名  [筛选条件];

    3. truncate table 表名;  ddl 语句 
	   删除了表又创建了一张新表。
*/
select * from stars;

+------+--------+------+------+--------+
| id   | sname  | sex  | age  | salary |
+------+--------+------+------+--------+
|    9 | 武则天 | 女   |   20 |  12000 |
|   10 | 王昭君 | 女   |   30 |  10000 |
|   11 | 西施   | 女   |   40 |   9000 |
|    1 | 嬴政   | 男   |   20 |  15000 |
+------+--------+------+------+--------+

-- 删除年龄是20的数据

delete  from stars where age = 20;

delete from stars;


truncate table stars;


