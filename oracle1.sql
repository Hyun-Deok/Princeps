select * from dept;
select * from emp;
select * from bonus;

insert into dept values(
10, 'ACCOUNTING', 'NEW YORK');

ALTER TABLESPACE test_EMP2 ADD DATAFILE
    'd:\emp2.dbf' SIZE 10 M
        AUTOEXTEND ON NEXT 10 M MAXSIZE 10 M;
//////////////////////////
���̺� �����̽� ���� Ȯ�� ��ɾ� : 
SELECT * FROM DBA_TABLESPACES;
���̺� �����̽� ���� : SYSTEM, UNDO, TEMPORATY, DATA
������ ���̺� �����̽� Ȯ�� ��ɾ� : 
SELECT * FROM USER_USERS;
UNDO�� ���� ô���� ������ : 
SHOW PARAMETER UNDO;
25�оȿ� ������ ������ �� �ֵ��� �ð��� 900 -> 1500��(25��)���� �ø� : 
ALTER SYSTEM SET UNDO_RETENTION=1500;
25�оȿ� ������ �����͸� ��ȸ : 
SELECT * FROM SCOTT.EMP2 AS OF TIMESTAMP(SYSTIMESTAMP-INTERVAL '25' MINUTE);

ROLLBACK;

select owner, object_name from sys.dba_objects;

create or replace view name_query as select a.ename, b.dname from emp a, dept b where a.deptno=b.deptno and b.deptno=20;
select * from name_query;
create or replace view check_option as select empno, ename, deptno from emp where deptno=10 with check option;
insert into check_option(empno, ename, deptno) values(1000,'jain',10);
select * from check_option;
select view_name, text from user_views;
drop view name_query;

�ó�� - �ý��� �������� �����Ͽ� �ó�� scott.emp�� test.emp�� ����. test������ �����Ͽ� test�� scott.emp�� select�Ѵ�.
conn system/1234
create synonym test.emp for scott.emp;
conn test/test
select empno, ename from emp;

grant create view to scott;
grant create view to test;
