/*
对表的ddl
   创建表 
     添加字段
	 
	 修改字段的数据类型
	 
	 重名名字段
	 
	 
	 删除字段
	 
	 
	对表名进行重命名
	
	展示建表语句
	
*/

create table student(

	sid int,
	sname varchar(20),
	height double,
	hobby set("读书","跑步","下棋"),
	birthday datetime
	
	
);

insert into student values(1,"李白",1.76,3,now());

select * from student;


-- 查看表结构

desc 表名;
desc student;
mysql> desc student;
+----------+---------------------------+------+-----+---------+-------+
| Field    | Type                      | Null | Key | Default | Extra |
+----------+---------------------------+------+-----+---------+-------+
| sid      | int                       | YES  |     | NULL    |       |
| sname    | varchar(20)               | YES  |     | NULL    |       |
| height   | double                    | YES  |     | NULL    |       |
| hobby    | set('读书','跑步','下棋')  | YES  |     | NULL     |        |
| birthday | datetime                  | YES  |     | NULL    |       |
+----------+---------------------------+------+-----+---------+-------+
-- 添加字段
/*
ALTER [IGNORE] TABLE tbl_name
    
alter_specification:
    ADD [COLUMN] column_definition [FIRST | AFTER col_name ]

*/
alter table student add weight double ;-- 在所有字段的后面追加
alter table student add weight double first; -- 将添加的字段放到所有字段的前面
alter table student add weight double after sname; -- 将添加的字段 放在指定字段的后面

mysql> desc student;
+----------+---------------------------+------+-----+---------+-------+
| Field    | Type                      | Null | Key | Default | Extra |
+----------+---------------------------+------+-----+---------+-------+
| sid      | int                       | YES  |     | NULL    |       |
| sname    | varchar(20)               | YES  |     | NULL    |       |
| height   | double                    | YES  |     | NULL    |       |
| hobby    | set('读书','跑步','下棋') | YES  |     | NULL    |       |
| birthday | datetime                  | YES  |     | NULL    |       |
| weight   | double                    | YES  |     | NULL    |       |
+----------+---------------------------+------+-----+---------+-------+


/*
修改表结构

  ALTER [IGNORE] TABLE tbl_name
  MODIFY [COLUMN] column_definition [FIRST | AFTER col_name]
  1.1 修改字段的类型
     alter table student  modify height double(5,2);
  
  
  ALTER [IGNORE] TABLE tbl_name
      CHANGE [COLUMN] old_col_name column_definition [FIRST|AFTER col_name]
  1.2 修改字段的名字
  
      alter table student change weight w double ;

      alter table student change sname name varchar(50) first ;


*/
-- 查看表结构
desc student;
+----------+---------------------------+------+-----+---------+-------+
| Field    | Type                      | Null | Key | Default | Extra |
+----------+---------------------------+------+-----+---------+-------+
| sid      | int                       | YES  |     | NULL    |       |
| sname    | varchar(20)               | YES  |     | NULL    |       |
| weight   | double                    | YES  |     | NULL    |       |
| height   | double                    | YES  |     | NULL    |       |
| hobby    | set('读书','跑步','下棋') | YES  |     | NULL    |       |
| birthday | datetime                  | YES  |     | NULL    |       |
+----------+---------------------------+------+-----+---------+-------+


alter table student  modify height double(5,2);

alter table student change weight w double ;

alter table student change sname name varchar(50) first ;


-- 删除字段
/*
ALTER [IGNORE] TABLE tbl_name

DROP [COLUMN] col_name



alter table student drop w;
*/


desc student;
+----------+---------------------------+------+-----+---------+-------+
| Field    | Type                      | Null | Key | Default | Extra |
+----------+---------------------------+------+-----+---------+-------+
| name     | varchar(50)               | YES  |     | NULL    |       |
| sid      | int                       | YES  |     | NULL    |       |
| w        | double                    | YES  |     | NULL    |       |
| height   | double(5,2)               | YES  |     | NULL    |       |
| hobby    | set('读书','跑步','下棋') | YES  |     | NULL    |       |
| birthday | datetime                  | YES  |     | NULL    |       |
+----------+---------------------------+------+-----+---------+-------+

alter table student drop w;

alter table student drop sid;

-- 修改表名

/*
ALTER [IGNORE] TABLE tbl_name
RENAME [TO] new_tbl_name
*/
alter table student  rename t_s;

alter table t_s rename to student;

-- 展示建表语句

show create table 表名;

show create table student;


-- 删除表 

drop table student;






