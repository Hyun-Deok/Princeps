select DEPARTMENT_NAME as "�а���", CATEGORY as "�迭" from tb_department;   1��
select DEPARTMENT_NAME ||'�� ������'||CAPACITY||'�� �Դϴ�.' as "�а��� ����" from tb_department;   2��
select STUDENT_NAME from tb_student where DEPARTMENT_NO='001' and ABSENCE_YN='y' and STUDENT_SSN like '______2%';   3��
select STUDENT_NAME from tb_student where STUDENT_NO in ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');   4��
select DEPARTMENT_NAME, CATEGORY from tb_department where CAPACITY between 20 and 30;    5��
select DEPARTMENT_NAME, CATEGORY from tb_department where CAPACITY >= 20 and CAPACITY <= 30;    5��
select PROFESSOR_NAME from tb_professor where DEPARTMENT_NO = NULL;    6��
select STUDENT_NAME from tb_student where DEPARTMENT_NO = NULL;    7��
select CLASS_NO, CLASS_NAME from tb_class where PREATTENDING_CLASS_NO != NULL;    8��
-- distinct : �ߺ�����
select distinct CATEGORY from tb_department;    9��
select STUDENT_NO, STUDENT_NAME, STUDENT_SSN from tb_student where STUDENT_NO = '_2%' and STUDENT_ADDRESS = '%����%' and ABSENCE_YN = 'no';   10��


insert into tb_department(department_no,department_name) values ('002','������а�');
insert into tb_student(student_no,department_no,student_name,entrance_date) values ('9973003','002','����',to_date('19990301','YYYY-MM-DD'));
insert into tb_student(student_no,department_no,student_name,entrance_date) values ('A473015','002','����',to_date('20040301','YYYY-MM-DD'));
insert into tb_student(student_no,department_no,student_name,entrance_date) values ('A517105','002','�̽ſ�',to_date('20050301','YYYY-MM-DD'));
select STUDENT_NO as "�й�", STUDENT_NAME as "�̸�", ENTRANCE_DATE as "���г⵵" from tb_student where DEPARTMENT_NO = '2' order by ENTRANCE_DATE;   1��

select professor_name, professor_ssn from tb_professor where length(professor_name) != 3;    2��

select professor_name as "�����̸�", 
to_number(to_char(sysdate,'yyyy'))-(1900+ to_number(substr(PROFESSOR_SSN,1,2))) as "����"
from tb_professor where substr(PROFESSOR_SSN,7,1) = '1' order by PROFESSOR_SSN;          3��

select substr(professor_name,2) as "�̸�" from tb_professor;     4��

select student_no, student_name from tb_student 
where to_number(to_char(entrance_date,'yyyy'))-(1900+to_number(substr(student_ssn,1,2))) > 19;     5��

select to_char(to_date('2020/12/25'),'yyyymmdd day') from dual;    6��
-- rr = 1900���(50~99), 2000���(0~49)
-- dd = 2000���
select to_char(to_date('99/10/11','yy/mm/dd'),'yyyymmdd') as "��¥" from dual;
select to_char(to_date('99/10/11','rr/mm/dd'),'rrrrmmdd') as "��¥" from dual;
select to_char(to_date('49/10/11','yy/mm/dd'),'yyyymmdd') as "��¥" from dual;
select to_char(to_date('49/10/11','rr/mm/dd'),'rrrrmmdd') as "��¥" from dual;      7��

select student_no, student_name from tb_student where substr(student_no,1,1) != 'A';    8��

select round(avg(point),1) as "����" from tb_grade where student_no = 'A517178';      9��

select department_no as "�а���ȣ", count(*) as "�л���(��)" from tb_student group by department_no;    10��
-- �ӵ��� ���� �� : index > count(*) > count(�÷��̸�)
select count(*) from tb_student where coach_professor_no = null;    11��

select substr(term_no,1,4) as "�⵵", round(avg(point),1) as "�⵵ �� ����" from tb_grade where student_no = 'A112113' 
group by substr(term_no,1,4) order by substr(term_no,1,4);    12��
-- y�̸� 1�� �������ش�.
select department_no as "�а��ڵ��", count(case when absence_yn='y' then 1 else 0 end) as "���л� ��" from tb_student 
group by department_no order by 1;    13��

select student_name as "�����̸�", count(*) as "������ ��" from tb_student having count(*)>1 group by student_name;    14��

select substr(term_no,1,4) as "�⵵", substr(term_no,5,2) as "�б�", round(avg(point),1) as "����" from tb_grade
where student_no = 'A112113' group by substr(term_no,1,4),substr(term_no,5,2);     15��


select student_name as "�л� �̸�", student_address as "�ּ���" from tb_student order by student_name;    1��
select student_name, student_ssn from tb_student where absence_yn = 'y' order by 2 desc;     2��
select student_name as "�л��̸�", student_no as "�й�", student_address as "�ּ�" from tb_student where student_address like '%������%'
or student_address like '%��⵵%' and substr(student_no,1,1) = 9;     3��
select professor_name, professor_ssn from tb_professor where department_no = '003' order by 2 desc;    4��
select student_no, point from tb_grade where class_no = 'C3118100' and substr(term_no,1,4) = '2004' order by 2 desc, 1;     5��
-- �ܷ�Ű ���� -> from���� �߰�
select student_no, student_name, department_name from tb_student join tb_department using(department_no) order by 2 asc;    6��
select class_name, department_name from tb_class join tb_department using(department_no);    7��
select class_name, department_name from tb_class, tb_department;    7��
select class_name, professor_name from tb_class, tb_professor;      8��
select class_name, professor_name from tb_class join tb_class_professor using(class_no) join tb_professor using(professor_no);    8��
--select student_no as "�й�", student_name as "�л� �̸�", round(avg(point),1) as "��ü ����" 
--from tb_student join tb_grade using(to_number(term_no)) where department_name = '�����а�';    10��

create table tb_category (name varchar2(10), use_yn char(1) default 'y');      1��
create table tb_class_type (no varchar2(5) primary key, name varchar2(10));    2��
alter table tb_category add constraint tb_category primary key(name);          3��
alter table tb_class_type modify (name varchar2(10) not null);                 4��
alter table tb_category modify (name varchar2(20));
alter table tb_class_type modify (no varchar2(10), name varchar2(20));         5��
alter table tb_category rename column name to category_name;
alter table tb_class_type rename column no to class_type_no;
alter table tb_class_type rename column name to class_type_name;               6��
alter table tb_class_type rename constraint tb_class_type to pk_class_type_no; 
alter table tb_category rename constraint tb_category to pk_category_name;     7��
INSERT INTO TB_CATEGORY VALUES ('����','Y'); INSERT INTO TB_CATEGORY VALUES ('�ڿ�����','Y'); 
INSERT INTO TB_CATEGORY VALUES ('����','Y'); INSERT INTO TB_CATEGORY VALUES ('��ü��','Y'); 
INSERT INTO TB_CATEGORY VALUES ('�ι���ȸ','Y'); commit;                        8��
alter table tb_department add foreign key(category) references tb_category(category_name);
alter table tb_department rename constraint sys_c007060 to pk_department_category;   9��
create or replace view vw_�л��Ϲ����� as select a.student_no as "�й�", a.student_name as "�л��̸�", a.student_address as "�ּ�" from tb_student a;   10��
create or replace view vw_������� as select a.student_name as "�л��̸�", b.department_name as "�а��̸�", c.professor_name as "���������̸�" 
from tb_student a, tb_department b, tb_professor c where c.professor_no = a.coach_professor_no and a.coach_professor_no!=null order by b.department_name;   11��
create or replace view vw_�а����л��� as select a.department_name, count(b.student_no) as student_count from tb_department a, 
tb_student b where a.department_no=b.department_no group by a.department_name;        12��
update vw_�л��Ϲ����� set �л��̸�='��' where �й�='A213046';       13��
create or replace view vw_abc as select * from tb_student with read only;     14��
--select department_no as "�����ȣ", department_name as "�����̸�", sum(capacity where open_yn>(to_char(sysdate,'yy')-3)) as "������������(��)" 
--from tb_department group by department_no, department_name, capacity order by capacity desc;    15��
select to_char(sysdate,'yy')-3 from dual;
