-- create roles that cant login that are generic such as hr or accounting
-- grant permissions to those roles

-- create users (roles with logins) and add them to roles they need to get their job done

-- create a role that cant login

CREATE ROLE jdatabase_group_rd WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

COMMENT ON ROLE jdatabase_group_rd IS 'read only permissions on jdatabase tables only';

-- while in the jdatabase database
grant select on all tables in schema public to jdatabase_group_rd;

-- create a user 
CREATE ROLE rd_user WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
    PASSWORD 'readonly';

GRANT jdatabase_group_rd TO rd_user;
COMMENT ON ROLE rd_user IS 'read only jdatabase user';

-- psql -U rd_user -d jdatabase -h localhost
select * from authors succeeds
insert into author (id,name) values ('444','fred'); fails