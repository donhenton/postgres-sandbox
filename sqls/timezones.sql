-- whats available

select * from pg_timezone_names;
select * from pg_timezone_abbrevs;

alter table test_time ADD COLUMN endstamp TIMESTAMP WITH TIME ZONE;
alter table test_time ADD COLUMN endtime TIME  WITH TIME ZONE;



/* ----------------------------------------------- */

select * from test_time;
 
insert into test_time (endstamp,endtime) values ('01/20/2018 10:30:00 US/Pacific','10:30:00+5');
insert into test_time (endstamp,endtime) values ('06/20/2018 10:30:00 US/Pacific','10:30:00+5');

SET TIME ZONE 'etc/UTC' -- set this then display test_time
SET TIME ZONE 'US/Central'; -- set this then display test_time;

SHOW TIME ZONE;