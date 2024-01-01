Create table sai(empid number primary key,ename varchar2(20),mgr number,salary number); 

insert into sai values (1,'sai',20,2000,'nath');

alter table sab add lastname varchar(20);

select * from sai;

commit
delete from sai where empid=1;

commit;

alter table sainath rename to sai; 

truncate table sai;

create or replace procedure p2 is
begin 
insert into sab values(3,'sai',20,2000,'nath');
dbms_output.put_line('new r inser');
end;
/
exec p2;
set serveroutput on;

Create table sab(empid number primary key,ename varchar2(20),kgr number,salary number); 

select * from sab;

create or replace function f1 return number as
v1 sab%rowtype;
begin
select empid into v1.empid from sab where empid=3;
return 18;
end;

select f1 from sab;










