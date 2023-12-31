--THINGS THAT YOU CAN DO WHEN YOU JUST GET STARTED WITH ORACLE DATABASE
--FIRST STEP

  connect system

--SECOND STEP

        --CREATE A NEW USER
    --here anishbro is username and 8080 is a password
create user anishbro identified by 8080;
grant connect,resource to anishbro
  
  --grant create table access to user
  grant create table to anishbro
  
  --provide resource or space in the  database so users can create tables
  -- here you don't need to make datafile.dbf it is itself created
  CREATE TABLESPACE custom_tablespace 
DATAFILE '/path/to/datafile.dbf' SIZE 100M;

--show current logged user
select user from dual;



--Show the information of the current user:
select * from user_users;

--show all users your user can see
 select username from all_users order by username;

--display all users in a database that a user having high level of authority can see in oracle
select username from dba_users order by username;

--save changes you made permanent
commit

--connect to user 
connect user 
--THIRD STEP(OPTIONAL)

      --LIST ALL THE TABLE USING THIS QUERY
 select table-user from user_tables;
