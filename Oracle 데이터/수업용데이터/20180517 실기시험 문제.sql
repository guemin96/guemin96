--���� ����
--1. ȸ��� �븮��縦 �����ϰ� �����Ѵ�.
--2. ��Ư�� �ټ��� �븮���� �̿��ڴ� ��ȭ�� �ϰ� �븮������縦 �����Ѵ�.
--3. ��ȭ�� ���� �븮��� ȸ���� ������ �ɷ��� ��ȭ�� ������ �Է��ϰ� �븮����� ������ ��ٸ���.
--4. ���õ� �븮���� ��ȭ�� �� �̿��ڿ��� �븮������ �ϰ� ������ �ݾ��� �޴´�.
--5. �븮�� �Ϸ�Ǹ� ��Ư�� �ټ��� �̿��ڿ��� �븮 �ݾ��� 3%�� ����Ʈ�� �����Ѵ�. - ����� �������������� �Ҽ����� �ݿø� �Ѵ�.
--6. ������ 20000�� �̻��̸� �븮��� 80% ȸ�� 20%�� �� �̸��̸� �븮��� 90% ȸ�� 10%�� ��������.

--�븮��� ���̺�
CREATE TABLE DRIVERS_TBL
(
    DR_ID    CHAR(5)     PRIMARY KEY,  --�븮��� ���̵�
    DR_NAME     VARCHAR2(30)        NOT NULL, --�븮��� �̸�
    DR_TEL      VARCHAR2(20)            NOT NULL, --�븮��� ����ó
    DR_GENDER       CHAR(1)                 NOT NULL --�븮��� ���� M:����,  F:����
);

--DATA 
INSERT INTO DRIVERS_TBL VALUES('DR001', '�赿��', '010-6759-0954', 'M');
INSERT INTO DRIVERS_TBL VALUES('DR002', '�ڵ���', '010-7415-1254', 'M');
INSERT INTO DRIVERS_TBL VALUES('DR005', '������', '010-9748-8174', 'M');
INSERT INTO DRIVERS_TBL VALUES('DR006', '��μ�', '010-2017-9364', 'F');
INSERT INTO DRIVERS_TBL VALUES('DR007', '�ڹ���', '010-7004-0014', 'F');


--��Ư�� �ټ� ȸ�� ���̺�
CREATE TABLE DR_MEMBER_TBL
(
    R_TEL   VARCHAR2(20)        PRIMARY KEY,
    MEM_POINT   NUMBER(7)           NOT NULL
);

--DATA
INSERT INTO DR_MEMBER_TBL VALUES('010-1111-1111', 0);
INSERT INTO DR_MEMBER_TBL VALUES('010-2222-1111', 0);
INSERT INTO DR_MEMBER_TBL VALUES('010-3333-1111', 0);
INSERT INTO DR_MEMBER_TBL VALUES('010-4444-1111', 0);
INSERT INTO DR_MEMBER_TBL VALUES('010-5555-1111', 0);
INSERT INTO DR_MEMBER_TBL VALUES('010-6666-1111', 0);

--�̿��ڰ� �븮����  ��û ��ȭ�� �ϸ� ������ �� ������ �Ʒ��� ���̺� �Է��Ѵ�.
--�븮 ���� ���̺�
CREATE TABLE RESERVATION_TBL
(
    R_ID     CHAR(5)        PRIMARY KEY, --�븮���� ���̵�
    R_TEL      VARCHAR2(20)     NOT NULL, --������ ��ȭ��ȣ
    R_STR       VARCHAR2(100)       NOT NULL, --�븮���� �����
    R_DEST      VARCHAR2(100)       NOT NULL, --�븮���� ������
    R_PAY       NUMBER(7)              NOT NULL --�븮���� �ݾ�
);

INSERT INTO RESERVATION_TBL VALUES('R0001', '010-1111-1111', '�ΰ���','�λ���', 15000);
INSERT INTO RESERVATION_TBL VALUES('R0002', '010-2222-1111', '�漺���','�λ���', 13000);
INSERT INTO RESERVATION_TBL VALUES('R0003', '010-1111-1111', '���ƴ��','�ΰ���', 25000);
INSERT INTO RESERVATION_TBL VALUES('R0004', '010-4444-1111', '�ΰ���','�λ���', 15000);
INSERT INTO RESERVATION_TBL VALUES('R0005', '010-3333-1111', '���Ǵ��','�λ���', 17000);
INSERT INTO RESERVATION_TBL VALUES('R0006', '010-5555-1111', '�ΰ���','�λ���', 15000);
INSERT INTO RESERVATION_TBL VALUES('R0007', '010-1111-1111', '���ƴ��','�λ���', 30000);
INSERT INTO RESERVATION_TBL VALUES('R0008', '010-2222-1111', '�ؾ���','�ΰ���', 20000);
INSERT INTO RESERVATION_TBL VALUES('R0009', '010-4444-1111', '�λ���','�ؾ���', 25000);
INSERT INTO RESERVATION_TBL VALUES('R0010', '010-3333-1111', '�λ���','���ƴ��', 30000);
INSERT INTO RESERVATION_TBL VALUES('R0011', '010-1111-1111', '�漺���','���Ǵ��', 20000);
INSERT INTO RESERVATION_TBL VALUES('R0012', '010-5555-1111', '�λ�ܴ��','���ƴ��', 32000);
INSERT INTO RESERVATION_TBL VALUES('R0013', '010-2222-1111', '�����','�λ���', 50000);
INSERT INTO RESERVATION_TBL VALUES('R0014', '010-2222-1111', '���ƴ��','���Ǵ��', 18000);
INSERT INTO RESERVATION_TBL VALUES('R0015', '010-6666-1111', '�ؾ���','���Ǵ��', 23000);



--�븮���� ��ϵ� �븮���� ����Ʈ���� ���ϴ� �׸��� �����ϸ� �Ʒ��� ���̺� ���� ������ ����ȴ�.
--�븮��� ���� ���̺�
CREATE TABLE DRIVER_RST_TBL
(
    R_ID    CHAR(5)     NOT NULL,  --�븮���� ���̵�
    DR_ID   CHAR(5)     NOT NULL,  --�븮��� ���̵�
    RST_DATE        DATE        NOT NULL --�븮����ð�
);

--ROLLBACK;
COMMIT;

INSERT INTO DRIVER_RST_TBL VALUES('R0001', 'DR003', TO_DATE('2018-05-02 21:00:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0002', 'DR002', TO_DATE('2018-05-02 23:11:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0003', 'DR001', TO_DATE('2018-05-02 20:00:14', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0004', 'DR004', TO_DATE('2018-05-03 01:48:27', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0005', 'DR005', TO_DATE('2018-05-03 19:51:38', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0006', 'DR005', TO_DATE('2018-05-03 23:14:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0008', 'DR005', TO_DATE('2018-05-03 20:11:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0010', 'DR001', TO_DATE('2018-05-04 02:15:58', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0011', 'DR002', TO_DATE('2018-05-04 18:55:19', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0012', 'DR003', TO_DATE('2018-05-05 21:47:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0013', 'DR004', TO_DATE('2018-05-05 23:00:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0014', 'DR005', TO_DATE('2018-05-05 22:40:37', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DRIVER_RST_TBL VALUES('R0015', 'DR003', TO_DATE('2018-05-05 22:14:34', 'YYYY-MM-DD HH24:MI:SS'));


--�븮 ��簡 �븮������ �Ϸ��ϸ� �Ʒ��� ���̺� ����� �����ϰ� �Ǵ� �մ��� �� ��ҿ� ���� ��� ��Ҹ� �Ѵ�.
--�븮 �Ϸ� ���̺�
CREATE TABLE FINISH_DRIVE_TBL
(
    IDX     NUMBER(5)   NOT NULL, --����
    R_ID    CHAR(5)     NOT NULL, --�븮���� ���̵�
    DR_ID   CHAR(5)     NOT NULL, --�븮��� ���̵�
    F_DATE  DATE        NOT NULL, --�븮 �Ϸ� �ð�   
    F_GUBUN     CHAR(1)     NOT NULL --�븮 ���� �Ϸ� ���� ������ �Ϸ� : 1, �븮��� : 2
);

INSERT INTO FINISH_DRIVE_TBL VALUES(1, 'R0001', 'DR003', TO_DATE('2018-05-02 21:30:44', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(2, 'R0002', 'DR002', TO_DATE('2018-05-02 23:14:45', 'YYYY-MM-DD HH24:MI:SS'), '2');
INSERT INTO FINISH_DRIVE_TBL VALUES(3, 'R0003', 'DR001', TO_DATE('2018-05-02 20:24:14', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(4, 'R0004', 'DR004', TO_DATE('2018-05-03 02:28:27', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(5, 'R0005', 'DR005', TO_DATE('2018-05-03 20:11:38', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(6, 'R0006', 'DR005', TO_DATE('2018-05-03 23:54:01', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(7, 'R0008', 'DR005', TO_DATE('2018-05-03 20:31:00', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(8, 'R0010', 'DR001', TO_DATE('2018-05-04 02:55:08', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(9, 'R0011', 'DR002', TO_DATE('2018-05-04 19:35:10', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(10,'R0012', 'DR003', TO_DATE('2018-05-05 21:50:55', 'YYYY-MM-DD HH24:MI:SS'), '2');
INSERT INTO FINISH_DRIVE_TBL VALUES(11, 'R0013', 'DR004', TO_DATE('2018-05-05 23:07:14', 'YYYY-MM-DD HH24:MI:SS'), '2');
INSERT INTO FINISH_DRIVE_TBL VALUES(12, 'R0014', 'DR005', TO_DATE('2018-05-05 22:59:07', 'YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO FINISH_DRIVE_TBL VALUES(13, 'R0015', 'DR003', TO_DATE('2018-05-05 22:39:00', 'YYYY-MM-DD HH24:MI:SS'), '1');

--A. ����

--1. �븮���� �̿����� ���� ��Ȳ�� �����ּ��� (5��)
       --(�̿��� ����ó, �����, ������, �븮������)

--2. �븮��簡 ������ �븮���� ���� ����Ʈ�� �����ּ���(5��)
        --(�븮������� ���̵�, �븮������� �̸�, �̿��ڿ���ó, �����, ������ �븮������)
        
--3. �̿����� ���帹�� �븮������ ������ ������� ����ó�� ã���ּ��� (5��)

--4. �븮���� ������ ������ ���帹�� ��� ���� ���ʴ�� ������ �ٿ��� ���� �ּ���(5��)

--5. �̿��ڵ��߿� �븮���� ������ �� �� ��Ҹ� ���� ���� �� �̿����� �ڵ�����ȣ�� �����ּ���(5��)

--6. �븮���� ������ ������ �븮�������� �Ǽ��� �����ּ���(5��)

--7. 2018�� 5�� 2�Ϻ��� 5�� 5�ϱ��� �븮��簡 ������ �Ǽ�, ���������� �Ϸ�� �Ǽ�, ���� �Ǽ��� �����ּ���(5��)

--8. �̿��ڴ� �븮���� ��û�� �Ͽ����� �븮��簡 �������� �ʾƼ� ��ҵ� �븮���� ���� �����ּ���(5��)
    --(�̿����ڵ�����ȣ, �����, ������, �ݾ�)
    
--9. ���������� �Ϸ�� �븮�����߿� ���� �ð��� ���� �ɸ� �븮���� ���� �����ּ���(5��)

--10. �븮������ ���� ��� �븮������ �����ּ���(5��)
       --(�븮����̸�, �����, ������, �̿����ڵ���, �ݾ�, �ϷῩ��)



--B. ��Ű�� ���ν��� - �� 5��
--1. �븮������ ������ ���� ��Ű���� �ϳ� ������ּ��� ��Ű�� �̸� : PKG_DRIVER  

--2. ���� ��Ű���� ù��° ���ν����� �ϳ� ������ּ��� - 
        --���ο� �븮���� ��縦 ����ϴ� ���ν����� ������ּ���
        --�븮��� ���̵�� ���� �Լ��� ������ ���� ���ν��� ���ο� ������ ���Խ����ּ���
        
--3. ���� ��Ű���� �ι�° ���ν����� ������ּ���
       --���� ��Ư�� ȸ���� POINT�� ��� 0���Դϴ�.
       --���ν����� ����Ͽ� POINT�� ��� ��� �ǵ��� ���ּ���
       
--4. ���� ��Ű���� ����° ���ν����� ������ּ���
      -- �̿��ڰ� �븮������ ��û�ϴ� ��ȭ�� �ϸ�
      -- �Է��ϴ� ������ �ش� ���ν����� �̿��� ����ó�� �Է��ϰ� �����ϸ�
      -- ���ο� �̿����̸� DR_MEMBER_TBL�� ���Ӱ� �߰��ϰ�
      -- �̹� ��ϵ� �̿����̸� ����� ����ó���� Ȱ���Ͽ� ����ó���� �� �ּ���
      
--5   ���� ��Ű���� �׹�° ���ν����� ������ּ���
      -- �� ���Ϻ��� �븮���� �� ������� ����ؼ� �����ִ� ���ν����� ����� �ּ���
      
--6. ���� ��Ű���� �ټ���° ���ν����� ������ּ���
     --2018�� 5�� 2�� ���� 5��5�ϱ��� ȸ��� �븮������簡 ������� �ݾ��� ���� ǥ���ϴ� ���ν����� ������ּ���
     
     -------------------------------------
     --    DRDATE       COMAPNY   DRIVER -----------
     --  2018-05-02      8000      2000
     --  2018-05-03      20000     5000
     --  2018-05-04      32000     8000
     --  2018-05-05      16000     2000
     -- ���� ���� �������� ����� ���������� �� �ּ���

--C Ʈ����
-- �븮������ ��Ұ� �Ǹ� �ش� �̿����� ����Ʈ�� 10% �����ϴ� Ʈ���Ÿ� ������ּ��� (10��)
-- ����� ������������ �ϸ� �Ҽ����� �ݿø��Ѵ�.




