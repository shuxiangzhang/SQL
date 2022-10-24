/*
6.日期类型.sql
	year
	
	date
	
	time
	
	datetime
	
	timestamp: 会随着时区的变化而变化

*/


create table t_ydt(

 y year, -- 年份

 d date, -- 年月日
 t time  -- 十分秒

);


insert into t_ydt values(now(),now(),now());

select * from t_ydt;

create table t_dt(

	d datetime, -- 年月日 十分秒
	t timestamp -- 年月日 十分秒

);

insert into t_dt values (now(),now());

insert into t_dt values (null,null);

insert into t_dt values ('2022-2-3 13:23:34','2022-2-3 13:23:34');

-- 插入日期
insert into t_dt values (20230203132334,'2022-2-3 13:23:34');
-- 改变时区  设置为 东八区
set time_zone='+8:00';



