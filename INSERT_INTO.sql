----���̺��� ���� ��� �ۼ�
----�⺻Ű�� �ܷ�Ű�� �䱸 ���ǿ� ���� �� �� �ְ�
----������ �⺻Ű�� �����ϴ� ���� ��� �ۼ� 
--
----�а� ���̺� �ۼ�
--create table tb_department(
--    department_no varchar2(10) not null,
--    department_name varchar2(20) not null,
--    category varchar2(20),
--    open_yn char(1),
--    capacity number,
--    
--    constraint pk_department primary key(department_no)
--);
--
----���� ���̺� �ۼ�
--create table tb_professor(
--    professor_no varchar2(10) not null,
--    professor_name varchar2(30) not null,
--    professor_ssn varchar2(14),
--    professor_address varchar2(100),
--    department_no varchar2(10),
--    
--    constraint pk_professor primary key(professor_no),
--    
--    constraint fk_professor foreign key(department_no)
--        references tb_department(department_no)
--);
--
----�л� ���̺� �ۼ�
--create table tb_student(
--    student_no varchar2(10) not null,
--    department_no varchar2(10) not null,
--    student_name varchar2(30) not null,
--    student_ssn varchar2(14),
--    student_address varchar2(100),
--    entrance_date date,
--    absence_yn char(1),
--    coach_professor_no varchar2(10),
--    
--    constraint pk_student primary key(student_no),
--    
--    constraint fk_student0 foreign key(department_no)
--        references tb_department(department_no),
--    constraint fk_student1 foreign key(coach_professor_no)
--        references tb_professor(professor_no)
--);
--alter
--
--
----���� ���̺� �ۼ�
--create table tb_class(
--    class_no varchar2(10) not null,
--    department_no varchar2(10) not null,
--    preattending_class_no varchar2(10),
--    class_name varchar2(30) not null,
--    class_type varchar2(10),
--    
--    constraint pk_class primary key(class_no),
--    
--    constraint fk_class0 foreign key(department_no)
--        references tb_department(department_no),
--    constraint fk_class1 foreign key(preattending_class_no)
--        references tb_department(department_no)
--);
----alter table tb_class
----    add constraint fk_class1 foreign key(preattending_class_no)
----    references tb_department(department_no);
--    
----���� ���� ���̺� �ۼ�
--create table tb_class_professor(
--    class_no varchar2(10) not null,
--    professor_no varchar2(10) not null,
--    
--    constraint pk_class_professor primary key(class_no, professor_no),
--    
--    constraint fk_class_professor0 foreign key(class_no)
--        references tb_class(class_no),
--    constraint fk_class_professor1 foreign key(professor_no)
--        references tb_professor(professor_no)
--);
--
----���� ���̺� �ۼ�
--create table tb_grade(
--    term_no varchar2(10) not null,
--    class_no varchar2(10) not null,
--    student_no varchar2(10) not null,
--    point number(3,2),
--    
--    constraint pk_grade primary key(term_no, class_no, student_no),
--    
--    constraint fk_grade0 foreign key(class_no)
--        references tb_class(class_no),
--    constraint fk_grade1 foreign key(student_no)
--        references tb_student(student_no)
--);
--
----���� ���̺� �⺻Ű�� �ѹ��� 3�� �Է�
--alter table tb_grade
--    add primary key(term_no, class_no, student_no);
--
----���� ���̺�(�а� ���� ���̺�)�� �⺻Ű�� �ε��� �̸��� �༭ �����Դ� ����
----���� ���� ������ ���� �⺻Ű�� �̹� ���� �Ǹ� �ٽ� ���� �� ���� �ȴ�.
----������ �������� �⺻Ű�� �ε����� �ִ� ����� �ִ�.
----�⺻Ű�� �ε����� �ָ鼭 �ִ� ����� ��� �迭�� ���� �� ����.
--alter table tb_class_professor
--    add constraint pk_class_professor0 primary key(class_no);
--alter table tb_class_professor
--    add constraint pk_class_professor1 primary key(professor_no);
----�� �ڵ��� ������ ���Ƿ� �⺻Ű�� �ѹ��� ������ �ִ� �ڵ��� �Ѵ�.  
----�ε����� ���� �ʰ� �������� �⺻Ű�� ����� ���
--alter table tb_class_professor
--    add primary key(class_no, professor_no);
----�ε����� �ְ� �������� �⺻Ű�� ����� ���
--alter table tb_class_professor
--    add constraint pk_class_professor primary key(class_no, professor_no);
--    
----�⺻Ű�� ������ �ֱ⿡ �����ؼ� �̹� �� �⺻Ű�� �����ϱ� ���� �ڵ�    
--alter table tb_class_professor
--    drop primary key;
--
----���� �ڵ�
----������ ��� ���̺� ����
--select * from tab;
----���̺� ���� ����
--desc tb_department;
----���̺� ���� ����
----tb_department �� tb_professor �� tb_student �� tb_class 
----�� tb_class_professor �� tb_grade
----���̺� ���� �ϱ� ���� ������ �ݴ�� �ϸ� �ȴ�.
----������ �ܷ�Ű�����̴�.  
----���� �� ������ ���⸦ �ϸ� �Ϻ��ϰ� ��������.
----������ ���⵵ ���� ������ ����� �Ѵ�.
--drop table tb_grade;
--drop table tb_class_professor;
--drop table tb_class;
--drop table tb_student;
--drop table tb_professor;
--drop table tb_department;
--
----���̺��� �⺻Ű �����ϱ�
--alter table tb_department drop primary key;
----�ܺο��� �⺻Ű �����ϱ� 1
--alter table tb_department add primary key();
----�ܺο��� �ε��� ���Ӱ� �⺻Ű �ֱ�
--alter table tb_department
--    add constraint pk_department primary key();
--
----���ο��� �ܷ�Ű �����ϱ�
--contraint fk_professor foreign key(department_no)
--    references tb_department(department_no);
----�ܺο��� �ܷ�Ű �����ϱ�1
--alter table tb_professor
--    add constraint fk_professor foreign key(department_no)
--    references tb_department(department_no);
--
--
----���ʿ� ��� �ִ� �߸��� ������ ���� �����غ���
--���� Ȯ�� ����
--SELECT * FROM TB_DEPARTMENT;
----���� ���� �����
--TRUNCATE TABLE TB_DEPARTMENT;
----���� �߻� ���� �⺻Ű�� �ܷ�Ű�� ����� ���̺� ���� ���� ������ �Ѵ�.
--SELECT * FROM TB_PROFESSOR;
--SELECT * FROM TB_STUDENT;
----�л� ���̺� ���� ���� ������.
--TRUNCATE TABLE TB_STUDENT;
----�� ���� �߻�  CASCADE�� �߰��� ����. ����
--TRUNCATE TABLE TB_STUDENT CASCADE;
--
----�ȵǰڴ�. DELETE�� ���� �ϱ�
--DELETE FROM TB_STUDENT;
--SELECT * FROM TB_STUDENT;
--
--DELETE FROM TB_PROFESSOR;
--SELECT * FROM TB_PROFESSOR;
--
--DELETE FROM TB_DEPARTMENT;
--SELECT * FROM TB_DEPARTMENT;
--
----�߸� �� ������ ���� ��� ����
----���� INSERT INTO���� �ų��� �Ẹ��
----���� ����
----���� ����
----INSERT INTO EMP VALUES(
----    7369, 'SMITH',  'CLERK',     7902,
----    TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20
----);
----INSERT INTO ���� ���� ������ ���� ������ �ۼ� �ؾ� ���� �߻��� ����.
----���̺� ���� ����
----tb_department �� tb_professor �� tb_student �� tb_class 
----�� tb_class_professor �� tb_grade
--
----TB_DEPARTMENT �� ������ ����
INSERT INTO TB_DEPARTMENT
    VALUES('001','������а�','�ι���ȸ','Y',20
);

INSERT INTO TB_DEPARTMENT
    VALUES('002','������а�','�ι���ȸ','Y',36
);
INSERT INTO TB_DEPARTMENT
    VALUES('003','���а�	','�ι���ȸ','Y',28
);
INSERT INTO TB_DEPARTMENT
    VALUES('004','ö�а�	','�ι���ȸ','Y',28
);
INSERT INTO TB_DEPARTMENT
    VALUES('005','���а�','�ι���ȸ','Y',36
);
INSERT INTO TB_DEPARTMENT
    VALUES('006','�����а�','�ι���ȸ','Y',36
);
INSERT INTO TB_DEPARTMENT
    VALUES('007','�繰���ͳ�','����',	'Y',25
);
INSERT INTO TB_DEPARTMENT
    VALUES('008','���½ý��۰��а�','����','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('009','������а�','����','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('010','�����а�','����','Y',50
);
INSERT INTO TB_DEPARTMENT
    VALUES('011','�߾��߹��а�','�ι���ȸ','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('012','���ݾƾ��а�','�ι���ȸ','Y',40
);
INSERT INTO TB_DEPARTMENT
    VALUES('013','�����а�','�ι���ȸ','Y',60
);
INSERT INTO TB_DEPARTMENT
    VALUES('014','���а�	','����','Y',50
);
INSERT INTO TB_DEPARTMENT
    VALUES('015','��ȣ�а�','�ڿ�����','Y',60
);
INSERT INTO TB_DEPARTMENT
    VALUES('016','�̼��а�','��ü��','Y',25
);
INSERT INTO TB_DEPARTMENT
    VALUES('017','����������а�','��ü��','Y',25
);
INSERT INTO TB_DEPARTMENT
    VALUES('018','ü���а�','��ü��','Y',	25
);
INSERT INTO TB_DEPARTMENT
    VALUES('019','�����а�','��ü��',	'Y',20
);
INSERT INTO TB_DEPARTMENT
    VALUES('020','ȯ�������а�','�ڿ�����','Y',50
);
INSERT INTO TB_DEPARTMENT
    VALUES('021','�����а�','�ڿ�����','Y',20
);

--TB_PROFESSOR ���� �ֱ�
--���� ����
--���� ����
--INSERT INTO TB_PROFESSOR
--    VALUES('A805', '������', '640412-2794012', '�뱸 ������ �ϱ�', 1
--);

--TB_PROFESSOR �� ������ ����
INSERT INTO TB_PROFESSOR
    VALUES('001','����','601004-1100528','�뱸��	�߱�','018'
);

INSERT INTO TB_PROFESSOR
    VALUES('002','���','880307-1794012','�λ���ؿ�뱸','008'
);
INSERT INTO TB_PROFESSOR
    VALUES('003','�輱��','750703-2100528','����� ������','001'
);
INSERT INTO TB_PROFESSOR
    VALUES('004','�輱��','551030-2159000','������ �߱�','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('005','�����','701130-1139006','��õ�� ���� ������','012'
);
INSERT INTO TB_PROFESSOR
    VALUES('006','�ڰ��Ƹ�','681201-2134896','������ ���ʽ�','006'
);
INSERT INTO TB_PROFESSOR
    VALUES('007','����ȯ','711225-1235479','���ֵ� ��������','013'
);
INSERT INTO TB_PROFESSOR
    VALUES('008','������','860123-1334577','���ϵ� ��ɱ�','019'
);
INSERT INTO TB_PROFESSOR
    VALUES('009','�����','850205-2354885','���ֽ� �ѿ�����','012'
);
INSERT INTO TB_PROFESSOR
    VALUES('010','������','780503-2794012','��û�� û�ֽ� ��籸','018'
);
INSERT INTO TB_PROFESSOR
    VALUES('011','�ſ�ȣ','880605-1785402','��⵵ �ǿս�','014'
);
INSERT INTO TB_PROFESSOR
    VALUES('012','������','660303-2323232','�뱸��  �ϱ�','007'
);
INSERT INTO TB_PROFESSOR
    VALUES('013','�̹̰�','741016-2103506','���� ��õ�� ����','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('014','������','640125-1143548','��õ�� ���� ������','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('015','����ö','900325-1231245','��⵵ ���ν�','015'
);
INSERT INTO TB_PROFESSOR
    VALUES('016','�ֿ���','900401-1894512','��⵵ �����ֽ�','021'
);
INSERT INTO TB_PROFESSOR
    VALUES('017','�㹮ǥ','591102-1546846','������ ���ʽ�','012'
);
INSERT INTO TB_PROFESSOR
    VALUES('018','ȫ����','540304-1112251','���ֵ� ��������','005'
);
INSERT INTO TB_PROFESSOR
    VALUES('019','ȫ����','540303-1112251','���ֵ� ��������','015'
);
INSERT INTO TB_PROFESSOR
    VALUES('020','������','780603-2794012','���� û�ֽ� ��籸','020'
);
INSERT INTO TB_PROFESSOR
    VALUES('021','������','750409-2794012','�뱸',NULL
);

--�л� ���̺� ������ �ֱ�
--���� ���� ���� ����
--INSERT INTO TB_STUDENT
--    VALUES('03', '1', '�̿���', 02002112794012, '���� ������ �߱�',
--            TO_DATE('03-02-2018', 'DD-MM-YYYY'), 'N', 'A805'
--);

--TB_STUDENT �� ������ ����
INSERT INTO TB_STUDENT
    VALUES('A000001','001','�Ѽ���','901223-2123012','����� ������',	
    TO_DATE('2010/03/01', 'YYYY/MM/DD'),	'Y','003'
);

INSERT INTO TB_STUDENT
    VALUES('A517178','001','�ѾƸ�','901203-2223312','����� ������',	
    TO_DATE('2010/03/01', 'YYYY/MM/DD'),	'N','003'
);

INSERT INTO TB_STUDENT
    VALUES('A112113','001','����','900222-2456478','������ ���ʽ�',	
    TO_DATE('2010/03/01','YYYY/MM/DD'),	'N','003'
);
INSERT INTO TB_STUDENT
    VALUES('A217006','002','�����','811119-1122202','���ֽ� �ϵ�1��',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A413042','002','�ڰǿ�','800109-1234202','���ֽ� �ϵ�1��',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A870001','003','�����','871222-1124648','���� ���� ����',
    TO_DATE('2001/03/01','YYYY/MM/DD'),	'Y', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A860001','004','Ȳȿ��','871125-1129980','���� ��õ�� ����',	
    TO_DATE('2001/03/01','YYYY/MM/DD'),	'Y', NULL
);
INSERT INTO TB_STUDENT
    VALUES('9911206','006','������','780520-1232358','�泲 ����',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','006'
);
INSERT INTO TB_STUDENT
    VALUES('A352017','007','��ȿ��','880101-2002358','�뱸 �߱� ����',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A115270','007','������','880202-2002358','�뱸 �߱� ',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A417074','007','���¸�','880404-2002358','���� �߱� ����',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A131046','007','�����','880505-2002358','���� �߱� ����',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A331076','007','������','880707-2002358','��û �߱� ����',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','012'
);
INSERT INTO TB_STUDENT
    VALUES('A217005','008','�����','821119-2122202','���ֽ� �ϻ걸',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('A241004','008','������','920111-1788225','��õ�� ���� ����',
    TO_DATE('2010/03/01','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('9973003','008','����','800327-1345683','������ ��õ��',	
    TO_DATE('1999/03/01','YYYY/MM/DD'), 'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('A473015','008','����','830608-1345881','�뱸�� ���� ���',	
    TO_DATE('2004/03/01','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('A517105','008','�̽ſ�','800201-1358482','�뱸�� �ϱ� ĥ��',	
    TO_DATE('2005/03/01','YYYY/MM/DD'),	'N','002'
);
INSERT INTO TB_STUDENT
    VALUES('9811251','009','�����','780405-1335801','��� ���׽�',	
    TO_DATE('1998/03/01','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A213046','011','������','900509-2358915','�ο�',
    TO_DATE('2010/03/01','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A211375','012','������','841102-1154425','���ֽ� ������',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','005'
);
INSERT INTO TB_STUDENT
    VALUES('A211376','012','�����','851202-2354425','���ֽ� ������',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N', NULL
);
INSERT INTO TB_STUDENT
    VALUES('A211377','012','������','831101-2124425','�︪�� �︪��',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','005'
);
INSERT INTO TB_STUDENT
    VALUES('A313047','013','�հǿ�','880606-1002358','���� �߱� ����',	
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','007'
);
INSERT INTO TB_STUDENT
    VALUES('A215247','015','�̿���','880303-2002358','���� �߱� ����',
    TO_DATE('2002/03/02','YYYY/MM/DD'),	'N','015'
);
INSERT INTO TB_STUDENT
    VALUES('9919024','015','��迵','760822-2013589','��⵵ ���ν� ����',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','015'
);
INSERT INTO TB_STUDENT
    VALUES('9931310','019','������','780708-1528401','����� ������',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','008'
);
INSERT INTO TB_STUDENT
    VALUES('9931311','019','���翵','780702-1323841','����� ������',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','008'
);
INSERT INTO TB_STUDENT
    VALUES('9931312','019','������','780708-2528401','����� ������',	
    TO_DATE('1999/03/01','YYYY/MM/DD'),	'N','008'
);
INSERT INTO TB_STUDENT
    VALUES('9600011','020','��迵','750822-2012358','��⵵ ������ ���',	
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'Y', NULL
);
INSERT INTO TB_STUDENT
    VALUES('9600012','020','�踻��','750722-1012358','��⵵ �Ȼ�� �絿',	
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'N','020'
);
INSERT INTO TB_STUDENT
    VALUES('9600013','020','�̴���','750621-1012358','���ֵ� ��������',	
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'N','020'
);
INSERT INTO TB_STUDENT
    VALUES('9600014','020','�ɴ���','750512-2012358','���  �ȵ���',		
    TO_DATE('1996/03/01','YYYY/MM/DD'),	'N','020'
);
INSERT INTO TB_STUDENT
    VALUES('A931310','021','������','941020-1534582','����� ������',	
    TO_DATE('2014/03/01','YYYY/MM/DD'),	'N','016'
);

--PREATTENDING_CLASS_NO �ܷ�Ű ������ ��ӽ�Ű��
ALTER TABLE TB_CLASS
    DROP CONSTRAINT FK_CLASS1;
SELECT * FROM USER_CONSTRAINTS;

--TB_CLASS
INSERT INTO TB_CLASS
    VALUES('C0010001','001',NULL,'�����ð��а���','����'
);  
INSERT INTO TB_CLASS
    VALUES('C0010002','001','C0010001',	'�����ð���Ư��',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C0010003','001','C0010001',	'������ַ�Ư��',	'����'	
);
INSERT INTO TB_CLASS
    VALUES('C0010004','001','C0010001',	'���������п���',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C0070001','007',NULL,'IOT����',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C3118101','007','C0070001',	'����Ŭ','����'
);
INSERT INTO TB_CLASS
    VALUES('C3118100','007','C0070001',	'���̽�','����'
);
INSERT INTO TB_CLASS
    VALUES('C1753800','012',NULL,'��������','����'
);
INSERT INTO TB_CLASS
    VALUES('C1753400','012',NULL,'���ü��','����'
);
INSERT INTO TB_CLASS
    VALUES('C0140005','014',NULL,'�Ǻλ�����','����'
);
INSERT INTO TB_CLASS
    VALUES('C0150005','015',NULL,'�ΰ������','����'
);
INSERT INTO TB_CLASS
    VALUES('C0160001','016',NULL,'�̼��а���','����'
);
INSERT INTO TB_CLASS
    VALUES('C0160005','016','C0160001','�����',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C0160006','016','C0160001',	'�̼�����,�濵��','����'
);
INSERT INTO TB_CLASS
    VALUES('C0180005','018',NULL,'�ó�濬��',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C0180006','018',NULL,'�غ��н���','����'
);
INSERT INTO TB_CLASS
    VALUES('C0180007','018',NULL,'������1','����'
);
INSERT INTO TB_CLASS
    VALUES('C0180008','018',NULL,'������2','����'
);
INSERT INTO TB_CLASS
    VALUES('C0190000','019',NULL,'�ǿ����� ����','����'
);
INSERT INTO TB_CLASS
    VALUES('C0190001','019',NULL,'Ŭ������ ����',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C0190002','019',NULL,'�ǿ����� 1','����'
);
INSERT INTO TB_CLASS
    VALUES('C0190003','019',NULL,'�ǿ����� 2','����'
);
INSERT INTO TB_CLASS
    VALUES('C3016200','020',NULL,'�����¹����','����'
);
INSERT INTO TB_CLASS
    VALUES('C3081300','020',NULL,'�����ȹ�����','����'
);
INSERT INTO TB_CLASS
    VALUES('C3087400','020','C3016200',	'���漼�̳�',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C4139300','020','C3016200',	'ȯ�溸���װ���Ư��',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C4477600','020',NULL,'�������','����'
);
INSERT INTO TB_CLASS
    VALUES('C5009300','020',NULL,'������ȹ�׼��轺Ʃ���','����'
);
INSERT INTO TB_CLASS
    VALUES('C2454000','020',NULL,'�����۹�������Ư��',	'����'
);
INSERT INTO TB_CLASS
    VALUES('C0210000','021',NULL,'�߷�','����'
);

--TB_CLASS_PROFESSOR
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010001',	'003'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010002',	'003'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010003',	'003'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0010004',	'003'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0070001',	'012'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3118100',	'012'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C1753800',	'009'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C1753400',	'009'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0140005',	'011'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0150005',	'015'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0160001',	'019'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0160005',	'019'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0160006',	'019'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180005',	'010'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180006',	'010'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180007',	'001'	
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C0180008',	'001'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3016200',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3081300',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C3087400',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C4139300',	'020'
);
INSERT INTO TB_CLASS_PROFESSOR
    VALUES('C4477600',	'020'	
);

SELECT * FROM TB_GRADE;
--TB_GRADE
INSERT INTO TB_GRADE
    VALUES('201001',	'C0010001',	'A000001',	1.8
);
INSERT INTO TB_GRADE
    VALUES('201002',	'C0010001',	'A000001',	1.9
);
INSERT INTO TB_GRADE
    VALUES('201101',	'C0010002',	'A000001',	2.0
);
INSERT INTO TB_GRADE
    VALUES('201102',	'C0010002',	'A000001',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201201',	'C0010003',	'A000001',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201202',	'C0010003',	'A000001',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201301',	'C0010004',	'A000001',	3.1
);
INSERT INTO TB_GRADE
    VALUES('201001',	'C0010001',	'A517178',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201002',	'C0010001',	'A517178',	2.9
);
INSERT INTO TB_GRADE
    VALUES('201101',	'C0010002',	'A517178',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201102',	'C0010002',	'A517178',	3.8
);
INSERT INTO TB_GRADE
    VALUES('201201',	'C0010003',	'A517178',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201202',	'C0010003',	'A517178',	3.8
);
INSERT INTO TB_GRADE
    VALUES('201301',	'C0010004',	'A517178',	4.1
);
INSERT INTO TB_GRADE
    VALUES('201001',	'C0010001',	'A112113',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201002',	'C0010001',	'A112113',	1.9
);
INSERT INTO TB_GRADE
    VALUES('201101',	'C0010002',	'A112113',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201102',	'C0010002',	'A112113',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201201',	'C0010003',	'A112113',	3.0
);
INSERT INTO TB_GRADE
    VALUES('201202',	'C0010003',	'A112113',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201203',	'C0010003',	'A112113',	2.9
);
INSERT INTO TB_GRADE
    VALUES('201301',	'C0010004',	'A112113',	4.2
);
INSERT INTO TB_GRADE
    VALUES('201302',	'C0010004',	'A112113',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A352017',	4
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A352017',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A352017',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A352017',	4.5
);
INSERT INTO TB_GRADE
    VALUES('200401',	'C3118100',	'A352017',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A352017',	4.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A352017',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A352017',	4
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A115270',	3
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A115270',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A115270',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A115270',	3.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A115270',	3
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A115270',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A115270',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A115270',	3
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A417074',	2
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A417074',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A417074',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A417074',	2.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A417074',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A417074',	2.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A417074',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A417074',	4
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A131046',	3
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A131046',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A131046',	2.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A131046',	3.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A131046',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A131046',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A131046',	4.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A131046',	3
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0070001',	'A331076',	4
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0070001',	'A331076',	4.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C3118101',	'A331076',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C3118101',	'A331076',	3.5
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A331076',	4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C3118100',	'A331076',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200501',	'C3118101',	'A331076',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200502',	'C3118101',	'A331076',	4
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0190000',	'9931310', 	4.5
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0190001',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0190001',	'9931310', 	4.2
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0190002',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0190002',	'9931310', 	4
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0190003',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0190003',	'9931310', 	4
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0190003',	'9931310', 	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0190000',	'9931311', 	2.5
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0190001',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0190001',	'9931311', 	2.2
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0190002',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0190002',	'9931311', 	2
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0190003',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0190003',	'9931311', 	2
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0190003',	'9931311', 	2.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0190000',	'9931312',	3.5
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0190001',	'9931312',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0190001',	'9931312',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0190002',	'9931312',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0190002',	'9931312', 	3
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0190003',	'9931312', 	3.1
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0190003',	'9931312',	3
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0190003',	'9931312', 	3.1
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600011',	2
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600011',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600011',	4
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600011',	2.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600011',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600011',	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600011',	4.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600011',	3.2
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600012',	3
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600012',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600012',	3
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600012',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600012',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600012',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600012',	3.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600012',	3.2
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600013',	2
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600013',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600013',	4
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600013',	2.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600013',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600013',	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600013',	2.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600013',	2.2
);
INSERT INTO TB_GRADE
    VALUES('199601',	'C3016200',	'9600014',	3
);
INSERT INTO TB_GRADE
    VALUES('199602',	'C3081300',	'9600014',	3
);
INSERT INTO TB_GRADE
    VALUES('199701',	'C3087400',	'9600014',	4
);
INSERT INTO TB_GRADE
    VALUES('199702',	'C4139300',	'9600014',	2.1
);
INSERT INTO TB_GRADE
    VALUES('199801',	'C4477600',	'9600014',	3.1
);
INSERT INTO TB_GRADE
    VALUES('199802',	'C5009300',	'9600014',	4.1
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C2454000',	'9600014',	3.3
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C2454000',	'9600014',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200201',	'C0150005',	'A215247',	3.9
);
INSERT INTO TB_GRADE
    VALUES('200202',	'C0150005',	'A215247',	3.1
);
INSERT INTO TB_GRADE
    VALUES('200301',	'C0150005',	'A215247',	3.2
);
INSERT INTO TB_GRADE
    VALUES('200302',	'C0150005',	'A215247',	3.3
);
INSERT INTO TB_GRADE
    VALUES('200401',	'C0150005',	'A215247',	3.4
);
INSERT INTO TB_GRADE
    VALUES('200402',	'C0150005',	'A215247',	3.5
);
INSERT INTO TB_GRADE
    VALUES('199901',	'C0150005',	'9919024', 	2.8
);
INSERT INTO TB_GRADE
    VALUES('199902',	'C0150005',	'9919024', 	3.8
);
INSERT INTO TB_GRADE
    VALUES('200001',	'C0150005',	'9919024',	3.8
);
INSERT INTO TB_GRADE
    VALUES('200002',	'C0150005',	'9919024', 	2.8
);
INSERT INTO TB_GRADE
    VALUES('200101',	'C0150005',	'9919024',	3.8
);
INSERT INTO TB_GRADE
    VALUES('200102',	'C0150005',	'9919024',	2.8
);
INSERT INTO TB_GRADE
    VALUES('201401',	'C0210000',	'A931310' ,	3.9
);
INSERT INTO TB_GRADE
    VALUES('201402',	'C0210000',	'A931310' ,	2.9
);
INSERT INTO TB_GRADE
    VALUES('201501',	'C0210000',	'A931310' ,	3.9
);
INSERT INTO TB_GRADE
    VALUES('201502',	'C0210000',	'A931310', 	3.9
);




