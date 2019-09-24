-- CREATE TABLE public.test_time
-- (
--     startdate date,
--     startstamp timestamp without time zone,
--     starttime time without time zone,
--     action_type text COLLATE pg_catalog."default"
-- )

select * from test_time;

insert into test_time (startdate, startstamp, starttime, action_type)
values('tomorrow'::abstime,'tomorrow'::abstime,'tomorrow'::abstime,'tomorrow');

insert into test_time (startdate, startstamp, starttime, action_type)
values('now','now','now','now');

insert into test_time (startdate, startstamp, starttime, action_type)
values('epoch'::abstime,'epoch'::abstime,'epoch'::abstime,'epoch');