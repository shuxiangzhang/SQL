/*
5.字符串类型.sql
    既可以是单引号 也可以是 双引号


	char 定长    
	     如果没有指定宽度 只能 存一个字符
	
	varchar(20) 使用时必须指定宽度 可变字符串
	
	char: 手机号码  身份证号码
	
	varchar: 评论  昵称
	


*/

create table t_char_varchar(

 c1 char,
 
 c2 char(6)


);

insert into t_char_varchar values ('商',"商");

insert into t_char_varchar values ('商',"商业");

select * from t_char_varchar;


create table t_varchar(
	c1  varchar

);


/*

enum: 仅能出现一个


set: 数据集 
     最多有64个数据    每一个数据对应一个值 从 1  2 4 8 ....
	 添加数据时 可以写值 也可以写  和


表示字段的值 仅有有限的几个
*/

create table t_enum(

id int,

sname varchar(20),

sex enum('男','女')


);

insert into t_enum values(1,'张三','男');
insert into t_enum values(2,'小花','女');

insert into t_enum values(3,'王五','男1');

select * from t_enum;


create table t_set(

id int,

sname varchar(20),
//          1       2      4     8
hobby set('洗脚','羽毛球','读书','跑步')


);

insert into t_set values(1,"张三","洗脚");
insert into t_set values(2,"李四","羽毛球");

-- ERROR 1136 (21S01): Column count doesn't match value count at row 1
insert into t_set values(3,"王五","洗脚","读书");

insert into t_set values(3,"王五","洗脚,读书");

insert into t_set values(4,"赵六",5);

insert into t_set values(5,"陈一",3);
insert into t_set values(6,"安琪拉",9);
insert into t_set values(7,"嬴政",15);

select * from t_set ;

/*
二进制字符串
binary ：定长
       默认存储一个字节的数据
	   如果指定了长度 数据没有存满 那么在右边 一个字节补 00   
	   

varbinary：可变的

      必须指明宽度



*/

create table t_binary(

 b1 binary,
 b2 binary(6)
);


insert into t_binary values ("a","a");
-- 汉字在 gbk  2个字节  utf8 3个字节
insert into t_binary values ("b","商");
-- 此时客户端是 gbk编码  能够存入3个汉字
insert into t_binary values ("c","你好吗");

select * from t_binary;

+------------+----------------+
| b1         | b2             |
+------------+----------------+
| 0x61       | 0x610000000000 |
| 0x62       | 0xC9CC00000000 |
| 0x63       | 0xC4E3BAC3C2F0 |
+------------+----------------+
1 row in set (0.00 sec)

create table t_varbinary(

 b1 varbinary(6),
 b2  binary(6)
 
);


insert into t_varbinary values('a','a');


select * from t_varbinary;


/*


blob: 存储大的二进制对象  视频 音乐   图片.....  

text: 大文本


*/


create table t_b_t(

	b1 blob,
	
	b2 text

);


insert into t_b_t values ('a','a');


select * from t_b_t;



