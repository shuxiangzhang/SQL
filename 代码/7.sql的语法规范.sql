/*
1. mysql 是关键字 不区分大小写
	SELECT  select  SeLecT
	
2. 在命名时 不要使用mysql中的关键字

3. 如果定义的库名 表名中有 关键字或者是空格 可以使用 飘号

4. 标点符号必须是英文半角

5. 一个数据库管理系统 不能存在同名的库 库中不能存在同名的表  表中不能存在同名的字段

6. mysql 的注释
    --  单行注释
	# 单行注释
	/*  * / 多行注释

7. 设置别名    在查找的字段后面  使用 "别名"
*/
-- 单行注释

# 单行注释

/*
多行注释
*/
create table `CREATE`(

id int

);

create database `insert`;


select * from person；


create database atguigu;


create table person(
id  int

);

create table `te st`(

id int,

tname varchar(20)


);


create table t_test(

id int,

sname varchar(20),

birthday datetime,

hobby set("洗澡","羽毛球","篮球")

);



insert into t_test values (1,"李白",now(),3);


select  * from t_test;

select  sname, birthday , hobby  from t_test;

select  sname, birthday as "生日" , hobby  from t_test;

select  sname, birthday  "生日" , hobby  from t_test;

select  sname, birthday  "生 日" , hobby  from t_test;