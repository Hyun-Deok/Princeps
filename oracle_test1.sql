CREATE TABLE dept2 (
    deptno   NUMBER
        CONSTRAINT dept_pk_deptno PRIMARY KEY,
    dname    VARCHAR2(40),
    loc      VARCHAR2(50)
)
    PCTFREE 20 PCTUSED 50;

SELECT table_name FROM user_tables;
SELECT constraint_name FROM user_constraints WHERE table_name = 'DEPT2';

ALTER TABLE emp ADD CONSTRAINT emp_uk_deptno UNIQUE ( empno );
ALTER TABLE emp DROP CONSTRAINT emp_uk_deptno;
SELECT * FROM emp;

ALTER TABLE emp
    ADD CONSTRAINT emp_ck_comm CHECK (
            comm >= 10
        AND
            comm <= 100000
    );

ALTER TABLE emp DROP CONSTRAINT emp_ck_comm;
UPDATE emp SET comm = NULL;
SELECT * FROM emp;

ALTER TABLE emp
    ADD CONSTRAINT emp_ck_comm CHECK (
        comm IN (
            10000,20000,30000,40000,50000
        )
    );

ALTER TABLE emp MODIFY (
    hiredate DATE DEFAULT SYSDATE
);
ALTER TABLE dept ADD CONSTRAINT dept_pk_deptno1 PRIMARY KEY ( deptno );

ALTER TABLE emp
    ADD CONSTRAINT emp_fk_deptno FOREIGN KEY ( deptno )
        REFERENCES dept ( deptno );

CREATE TABLE emp2
    AS
        SELECT
            *
        FROM
            emp;

ALTER TABLE emp MOVE
    TABLESPACE users;

������ ���̺� �����̽� ���� ��ɾ� : 
SELECT * FROM DBA_TABLESPACES;
�����Ǿ� �ִ� DBF ���� ���� : 
SELECT * FROM DBA_DATA_FILES;
�����Ǿ� �ִ� TEMP DBF ���� ���� : 
SELECT * FROM DBA_TEMP_FILE;

SELECT * FROM DEPT2;
TRUNCATE TABLE SCOTT.EMP2;
SELECT * FROM SCOTT.EMP2;

DROP TABLE SCOTT.EMP2;
COMMIT;
SELECT * FROM EMP2;
INSERT INTO EMP(EMPNO,ENAME) VALUES(7369,'SMITH');
SELECT * FROM EMP WHERE EMPNO=7369;

UPDATE EMP SET DEPTNO=30 WHERE EMPNO=7902;
UPDATE EMP SET SAL=SAL*1.1 WHERE DEPTNO=20;

UPDATE EMP2 SET HIREDATE=SYSDATE;
DELETE FROM EMP2 WHERE EMPNO=7902;
DELETE FROM EMP2 WHERE SAL<(SELECT AVG(SAL) FROM EMP2);
DELETE FROM EMP2;
SELECT * FROM EMP2;
COMMIT;

SELECT EMPNO ���, ENAME ���� FROM EMP WHERE DEPTNO=10;
SELECT EMPNO ���, ENAME ���� FROM EMP WHERE EMPNO IN(7900,7934);
SELECT EMPNO ���, ENAME ���� FROM EMP WHERE EMPNO NOT IN (7900,7934);
SELECT EMPNO ���, ENAME ���� FROM EMP WHERE SAL BETWEEN 3000 AND 5000;
SELECT EMPNO ���, ENAME ���� FROM EMP WHERE UPPER(ENAME) LIKE '%K%';
�ι�° ���ڰ� I�� ENAME�� ��ȸ : 
SELECT EMPNO ���, ENAME ���� FROM EMP WHERE UPPER(ENAME) LIKE '_I%';
���� ���� : dept -> a, count -> cnt, ������� �������� ���� -> b : 
SELECT a.dname, b.cnt FROM dept a, (SELECT deptno, COUNT(empno) cnt FROM emp
group by deptno)b
WHERE a.deptno = b.deptno and b.cnt>3;

SELECT e.ename, d.dname FROM emp e, dept d WHERE e.deptno = d.deptno;
SELECT e.ename, d.dname FROM emp e, dept d WHERE e.sal BETWEEN 3000 and 4000;
�������ִ� �Լ� : concat
SELECT concat(a.ename,'') || ':\' || b.sal �޿�
FROM EMP a, EMP b WHERE a.empno = b.empno;

SELECT DISTINCT(a.deptno), b.deptno
FROM emp a, dept b WHERE a.deptno = b.deptno;

SELECT DISTINCT(a.deptno), b.deptno
FROM emp a, dept b WHERE a.deptno(+) = b.deptno;
dual ���̺��� �Լ��� ������ ���̺� ���� ���� �����ϱ� ���� dummy(�ӽð���) table : 
dual ���̺��� �̿��ؼ� �Լ��� ���ϰ��� ��ȯ : 
SELECT ROUND(192.123,1) USERS FROM dual;
SELECT ROUND(192.123,-1) USERS FROM dual;
SELECT TRUNC(7.5597,2) US FROM dual;
SELECT CONCAT('Oracle','Korea')NAME FROM dual;
SELECT * FROM dual;
SELECT RPAD('12345',10,'*') FROM dual;
SELECT SUBSTR('jung-sick',3,3) NAME FROM dual;
SELECT SUBSTR('jung-sick',-3,3) NAME FROM dual;
SELECT LENGTH('jung-sick') US FROM dual;
SELECT REPLACE('123','2','two') FROM dual;
select instr('have nice day','nice') from dual;
select instr('have nice day','vea') from dual;
select trim(0 from 00121334) "trim example" from dual;
select nvl(trim(''),'����') "trim example" from dual;

select user_id from information where user_id='super';
Ư�� ���̵�� �˻������� �� ���̵� ������ Ư������ ������ �ϴ� : 
select nvl(user_id,'123') from information where user_id='super';

select sysdate today, last_day(sysdate) lastday from dual;
select to_char(add_months(sysdate,3),'RRRR/MM/DD') "date" from dual;

select months_between(to_date('2000/06/05'), to_date('2000/09/23')) "date" from dual;
select round(to_date('1998/09/11'),'year') from dual;
select to_char(sysdate,'month') chartest from dual;

select empno,nvl(comm,0) from emp where deptno=30;
select deptno, decode(deptno,10,'accountion',20,'research',30,'sales',40,'operation') decoding from emp;
select ename, dump(ename,16) "16����" from emp where ename='ALLEN';
select greatest(10,100,5,-7) from dual;
select user, uid from dual;
select vsize(ename), ename from emp where deptno=30;

select count(deptno) from dept;
select max(sal) salary from emp;
select min(sal) from emp;
select round(avg(sal),1) salary from emp where deptno=30;
select sum(sal) salary from emp where deptno=30;
select round(stddev(sal),3) from emp where deptno=30;
select * from dept;

emp���̺��� �μ��ڵ� 40���� �ش��ϴ� ����� �ִ��� ��ȸ�Ͻÿ�.
select * from emp where deptno=40;

select b.deptno, count(a.empno) from emp a, dept b where a.deptno=b.deptno group by b.deptno;
select job, count(empno) "�ο���", avg(sal) "��ձ޿���", max(sal)"�ְ�޿���",min(sal)"�����޿���",sum(sal)"�޿��հ�" from emp group by job;
select b.dname, count(a.empno) from emp a, dept b where a.deptno=b.deptno group by dname having count(a.empno)>5;
select job, sum(sal) "�޿��հ�" from emp where job not in ('SALES') group by job having sum(sal)>5000 order by sum(sal) desc;

select ename, job from emp where job=(select job from emp where empno=7369);
select empno, ename, sal, deptno from emp where sal in (select max(sal) from emp group by deptno);
SALESMAN�� (��ü�� �ϳ���)�����޿��� 1250���� ū sal�� ������, deptno�� 20�� �ƴ� : 
select * from emp where deptno!=20 and sal>any(select sal from emp where job='SALESMAN');
SALESMAN�� (��� �����)�ְ�޿��� 1600���� ū sal�� ������, deptno�� 20�� �ƴ� : 
select ename, sal from emp where deptno!=20 and sal>all(select sal from emp where job='SALESMAN');
empno�� ��� mgr���� �ϳ��� �����Ѵٸ� : 
select empno, ename, sal from emp e where exists(select empno from emp where e.empno=mgr);

select empno, sal, deptno from emp where (sal, deptno) in (select sal, deptno from emp where deptno=30 and comm is null);
--  ����(=) 
select empno, sal, deptno from emp where sal in (select sal from emp where deptno=30 and comm is null)
    and deptno in(select deptno from emp where deptno=30 and comm is null);

select job, ename from emp where empno = 7369;
select b.empno, b.ename, b.job, b.sal, b.deptno 
from(select empno from emp where sal > (select avg(sal) from emp where deptno=20))a, emp b 
where a.empno=b.empno and b.mgr is not null and b.deptno!=20;
select empno, ename, sal from emp e where sal>(select avg(sal) sal from emp where e.empno=mgr);

/(������ �ߺ�X)�ߺ����� �ʴ� �� ��� : 
select deptno from emp union select deptno from dept;
/(������)�ߺ��Ǵ� ��簪 ��� : 
select deptno from emp union all select deptno from dept;
/(������)����� �� ��ȯ : 
select deptno from emp intersect select deptno from dept;
/(������)�ι�° ���� ������ ù��° ���� �� : 
select deptno from dept minus select deptno from emp;

select table_name, tablespace_name from user_tables;
select table_name, tablespace_name from all_tables;

emp�� ename�� idx_emp_ename�̶�� ������ ����� : 
create index idx_emp_ename on emp(ename);

select index_name, index_type from user_indexes where table_name='emp';
create unique index emp_empno_indx on emp(empno);       ���λ���
drop index emp_empno_indx;   ���λ���

������
create sequence emp_seq start with 1 increment by 1 maxvalue 100000;
insert into emp(empno,ename,hiredate) values(emp_seq.nextval,'julia',sysdate);
select emp_seq.currval from dual;
select emp_seq.nextval from dual;
alter sequence emp_seq increment by 2 cycle;
insert into emp(empno,ename,hiredate) values(emp_seq.nextval,'romio',sysdate);
select * from emp;
drop sequence emp_seq;

create user test identified by test default tablespace users;
grant all on emp to test;
conn test/test;
