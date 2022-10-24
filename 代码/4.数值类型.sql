
/*
四.数值类型
	  有符号  有正负
	  无符号  没有负数  不能添加负数
	 
	4.1 整数
	   int(6)  对于有符号没有意义的
	   int(6)  无符号的如果数字的数量 不够宽度 会补0  大于等于数量 正常显示
	
	4.2 bit
	      存储二进制值
		  bit 没有宽度 只能存一个值
		  bit(6) 可以存指定数量个二进制值
	
	4.3小数
		 double
		     double : 不写宽度  能存多少存多少
		 
		 decimal：
		    decimal： 只能存整数 对小数部分 进行四舍五入
			
			
*/

create table t_int(

	i1 int,

	i2 int(6), -- 宽度

	i3 int(6) unsigned zerofill


);

insert into t_int values(3,3,3);

insert into t_int values(1111111,1111111,1111111);

insert into t_int values(-6,-6,-6);

-- bit类型
create table t_bit(

	b1  bit,
	
	b2   bit(6)

);

insert into t_bit values(1,1);

insert into t_bit values(3,3);

select * from t_bit;
-- ERROR 1406 (22001): Data too long for column 'b1' at row 1

insert into t_bit values(1,3);

-- 使用bin() 对 bit值进行解析

select bin(b1),bin(b2) from t_bit;


-- doule 类型的字段表格

create table t_double(

 d1  double,
 
 d2  double(5,2) -- 一共有5位 最多两位小数



);

insert into t_double values (5.12,5.12);

insert into t_double values (5.123,5.123);

insert into t_double values (5.123,5.126);

insert into t_double values (123.126,123.126);
insert into t_double values (1234.126,1234.126);

insert into t_double values (4.111111111111111111111111111111111,123.126);

-- ERROR 1264 (22003): Out of range value for column 'd2' at row 1

select * from t_double;
+-------------------+--------+
| d1                | d2     |
+-------------------+--------+
|              5.12 |   5.12 |
|             5.123 |   5.12 |
|             5.123 |   5.13 |
|           123.126 | 123.13 |
| 4.111111111111111 | 123.13 |
+-------------------+--------+


-- 小数位数 不够用  可以使用 decimal 提高小数的精度

  create table t_decimal(
  
	d1 decimal,
	
	d2 decimal(20,19)
  );


  insert into t_decimal values(1.1,1.1);
  
  insert into t_decimal values(5.6,5.6);
  
  insert into t_decimal values (4.111111111111111111111111111111111,4.111111111111111111111111111111111);





