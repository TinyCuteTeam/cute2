SELECT * FROM board;

SELECT * FROM comments;

SELECT * FROM users;

SELECT * FROM account;

SELECT * FROM mypage;

SELECT * FROM item;

SELECT * FROM bom;

SELECT * FROM client;

SELECT * FROM error;

SELECT * FROM order_info;

SELECT * FROM production_plan;

SELECT * FROM work;

UPDATE work
SET work_endate = (
    CASE 
        WHEN work_id IN ('W001', 'W002', 'W003', 'W004') THEN TO_DATE('2024/01/31', 'YYYY/MM/DD')
        WHEN work_id IN ('W005', 'W006', 'W007', 'W008') THEN TO_DATE('2024/02/28', 'YYYY/MM/DD')
        WHEN work_id IN ('W009', 'W010', 'W011') THEN TO_DATE('2024/03/31', 'YYYY/MM/DD')
        WHEN work_id IN ('W012', 'W013', 'W014') THEN TO_DATE('2024/04/30', 'YYYY/MM/DD')
        WHEN work_id IN ('W015', 'W016', 'W017') THEN TO_DATE('2024/05/31', 'YYYY/MM/DD')
        WHEN work_id IN ('W018') THEN TO_DATE('2024/06/30', 'YYYY/MM/DD')
        WHEN work_id IN ('W019') THEN TO_DATE('2024/07/30', 'YYYY/MM/DD')
        WHEN work_id IN ('W020') THEN TO_DATE('2024/08/30', 'YYYY/MM/DD')
        WHEN work_id IN ('W021', 'W022') THEN TO_DATE('2024/07/31', 'YYYY/MM/DD')
        ELSE TO_DATE('2024/09/30', 'YYYY/MM/DD')
    END
)
WHERE WORK_DO = '��� �Ϸ�' AND WORK_NAME LIKE '�۾�%';




commit;
UPDATE work
SET work_do = '�۾� ���'
WHERE work_name = '�۾� 20';


SELECT * FROM stock;

SELECT * FROM faulty;

Update stock set Item_code='P003' where Item_code= 'I025';
Update stock set Item_code='P004' where Item_code= 'I026';
Update stock set Item_code='P005' where Item_code= 'I027';
Update stock set Item_code='P006' where Item_code= 'I028';
Update stock set Item_code='P007' where Item_code= 'I029';
Update stock set Item_code='P008' where Item_code= 'I030';
Update stock set Item_code='P009' where Item_code= 'I031';

commit;

SELECT * FROM work WHERE TO_CHAR(work_ENDATE, 'MM') = TO_CHAR(SYSDATE, 'MM');
ALTER TABLE work ADD (production_qty NUMBER);

UPDATE work SET production_qty = 100 WHERE work_id = 'W001';
UPDATE work SET production_qty = 200 WHERE work_id = 'W002';
UPDATE work SET production_qty = 150 WHERE work_id = 'W003';
UPDATE work SET production_qty = 175 WHERE work_id = 'W004';
UPDATE work SET production_qty = 160 WHERE work_id = 'W005';
UPDATE work SET production_qty = 190 WHERE work_id = 'W006';
UPDATE work SET production_qty = 140 WHERE work_id = 'W007';
UPDATE work SET production_qty = 180 WHERE work_id = 'W008';
UPDATE work SET production_qty = 170 WHERE work_id = 'W009';
UPDATE work SET production_qty = 200 WHERE work_id = 'W010';
UPDATE work SET production_qty = 210 WHERE work_id = 'W011';
UPDATE work SET production_qty = 220 WHERE work_id = 'W012';
UPDATE work SET production_qty = 230 WHERE work_id = 'W013';
UPDATE work SET production_qty = 240 WHERE work_id = 'W014';
UPDATE work SET production_qty = 250 WHERE work_id = 'W015';
UPDATE work SET production_qty = 260 WHERE work_id = 'W016';
UPDATE work SET production_qty = 270 WHERE work_id = 'W017';
UPDATE work SET production_qty = 280 WHERE work_id = 'W018';
UPDATE work SET production_qty = 290 WHERE work_id = 'W019';
UPDATE work SET production_qty = 300 WHERE work_id = 'W020';

commit;

INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I021', '���� ��⸸��');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I022', '���� ��ġ����');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I023', '���� �κθ���');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I024', '���� �ſ��');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I025', '���� �Ұ�⸸��');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I026', '���� ���츸��');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I027', '���� ��������');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I028', '���� ��ä����');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I029', '���� �ձ���');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I030', '���� �𸸵�');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I031', '���� �ع�����');

commit;

INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S019', 'I021', '���� ��⸸�� ���', 1500, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S020', 'I022', '���� ��ġ���� ���', 1200, '�λ� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S021', 'I023', '���� �κθ��� ���', 900, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S022', 'I024', '���� �ſ�� ���', 1800, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S023', 'I025', '���� �Ұ�⸸�� ���', 1400, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S024', 'I026', '���� ���츸�� ���', 1300, '�λ� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S025', 'I027', '���� �������� ���', 1600, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S026', 'I028', '���� ��ä���� ���', 1100, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S027', 'I029', '���� �ձ��� ���', 2000, '���� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S028', 'I030', '���� �𸸵� ���', 1700, '�λ� â��', '����ǰ');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S029', 'I031', '���� �ع����� ���', 1500, '���� â��', '����ǰ');


CREATE SEQUENCE BOM_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

DESC BOM;

SELECT sequence_name FROM user_sequences WHERE sequence_name = 'BOM_SEQ';
DESC BOM;

select * from bom;



CREATE SEQUENCE BOM_SEQ
START WITH 1
INCREMENT BY 1;

desc work;

ALTER TABLE work DROP COLUMN plan_id;

ALTER TABLE work ADD (
    line_no VARCHAR2(50),                 -- ���� ��ȣ �߰�
    production_completed_qty NUMBER DEFAULT 0  -- �Ϸ�� ���귮 �ʵ� �߰�
);

update work set work_do='�۾� ���' where work_name='�۾� 18' ;
commit;
select * from work;



commit;

select * from todo;

desc todo;

select * from bom;
update work set PRODUCTION_COMPLETED_QTY = 10
where WORK_ID = 'W023';
 commit;
select * from work;
update U001



select * from todo;

SELECT 
    WORK_ID,
    CASE 
        WHEN USER_ID = 'U001' THEN '�ڰ��'
        WHEN USER_ID = 'U002' THEN 'ȫ����'
        WHEN USER_ID = 'U003' THEN '��ö��'
        WHEN USER_ID = 'U004' THEN '�ڰ��'
        WHEN USER_ID = 'U005' THEN 'ȫ����'
        WHEN USER_ID = 'U006' THEN '��ö��'
        WHEN USER_ID = 'U007' THEN '�ڰ��'
        WHEN USER_ID = 'U008' THEN 'ȫ����'
        WHEN USER_ID = 'U009' THEN '��ö��'
        WHEN USER_ID = 'U010' THEN '�ڰ��'
        WHEN USER_ID = 'U011' THEN 'ȫ����'
        WHEN USER_ID = 'U012' THEN '��ö��'
        WHEN USER_ID = 'U013' THEN 'ȫ����'
        WHEN USER_ID = 'U014' THEN '��ö��'
        WHEN USER_ID = 'U015' THEN 'ȫ����'
        WHEN USER_ID = 'U016' THEN '��ö��'
        WHEN USER_ID = 'U017' THEN 'ȫ����'
        WHEN USER_ID = 'U018' THEN '��ö��'
        WHEN USER_ID = 'U019' THEN 'ȫ����'
        WHEN USER_ID = 'U020' THEN '��ö��'

        ELSE 'Unknown User'
    END AS USER_NAME,
    ITEM_CODE,
    WORK_WRITE,
    WORK_ENDATE,
    WORK_NAME,
    WORK_DO,
    PRODUCTION_QTY,
    LINE_NO,
    PRODUCTION_COMPLETED_QTY
FROM 
    WORK;
    
    UPDATE WORK
SET USER_ID = 
    CASE 
        WHEN USER_ID = 'U001' THEN '�ڰ��'
        WHEN USER_ID = 'U002' THEN 'ȫ����'
        WHEN USER_ID = 'U003' THEN '��ö��'
        WHEN USER_ID = 'U004' THEN '�ڰ��'
        WHEN USER_ID = 'U005' THEN 'ȫ����'
        WHEN USER_ID = 'U006' THEN '��ö��'
        WHEN USER_ID = 'U007' THEN '�ڰ��'
        WHEN USER_ID = 'U008' THEN 'ȫ����'
        WHEN USER_ID = 'U009' THEN '��ö��'
        WHEN USER_ID = 'U010' THEN '�ڰ��'
        WHEN USER_ID = 'U011' THEN 'ȫ����'
        WHEN USER_ID = 'U012' THEN '��ö��'
        WHEN USER_ID = 'U013' THEN 'ȫ����'
        WHEN USER_ID = 'U014' THEN '��ö��'
        WHEN USER_ID = 'U015' THEN 'ȫ����'
        WHEN USER_ID = 'U016' THEN '��ö��'
        WHEN USER_ID = 'U017' THEN 'ȫ����'
        WHEN USER_ID = 'U018' THEN '��ö��'
        WHEN USER_ID = 'U019' THEN 'ȫ����'
        WHEN USER_ID = 'U020' THEN '��ö��'
    END;
    
    UPDATE work
SET USER_ID = 
    CASE 
        WHEN USER_ID = 'U001' THEN '�ڰ��'
        WHEN USER_ID = 'U002' THEN 'ȫ����'
        WHEN USER_ID = 'U003' THEN '��ö��'
        WHEN USER_ID = 'U004' THEN '�ڰ��'
        WHEN USER_ID = 'U005' THEN 'ȫ����'
        WHEN USER_ID = 'U006' THEN '��ö��'
        WHEN USER_ID = 'U007' THEN '�ڰ��'
        WHEN USER_ID = 'U008' THEN 'ȫ����'
        WHEN USER_ID = 'U009' THEN '��ö��'
        WHEN USER_ID = 'U010' THEN '�ڰ��'
        WHEN USER_ID = 'U011' THEN 'ȫ����'
        WHEN USER_ID = 'U012' THEN '��ö��'
        WHEN USER_ID = 'U013' THEN 'ȫ����'
        WHEN USER_ID = 'U014' THEN '��ö��'
        WHEN USER_ID = 'U015' THEN 'ȫ����'
        WHEN USER_ID = 'U016' THEN '��ö��'
        WHEN USER_ID = 'U017' THEN 'ȫ����'
        WHEN USER_ID = 'U018' THEN '��ö��'
        WHEN USER_ID = 'U019' THEN 'ȫ����'
        WHEN USER_ID = 'U020' THEN '��ö��'
    END;

UPDATE work
SET USER_ID = 
    CASE 
        WHEN USER_ID = 'U001' THEN '�ڰ��'
        WHEN USER_ID = 'U002' THEN 'ȫ����'
        WHEN USER_ID = 'U003' THEN '��ö��'
        WHEN USER_ID = 'U004' THEN '�ڰ��'
        WHEN USER_ID = 'U005' THEN 'ȫ����'
        WHEN USER_ID = 'U006' THEN '��ö��'
        WHEN USER_ID = 'U007' THEN '�ڰ��'
        WHEN USER_ID = 'U008' THEN 'ȫ����'
        WHEN USER_ID = 'U009' THEN '��ö��'
        WHEN USER_ID = 'U010' THEN '�ڰ��'
        WHEN USER_ID = 'U011' THEN 'ȫ����'
        WHEN USER_ID = 'U012' THEN '��ö��'
        WHEN USER_ID = 'U013' THEN 'ȫ����'
        WHEN USER_ID = 'U014' THEN '��ö��'
        WHEN USER_ID = 'U015' THEN 'ȫ����'
        WHEN USER_ID = 'U016' THEN '��ö��'
        WHEN USER_ID = 'U017' THEN 'ȫ����'
        WHEN USER_ID = 'U018' THEN '��ö��'
        WHEN USER_ID = 'U019' THEN 'ȫ����'
        WHEN USER_ID = 'U020' THEN '��ö��'
        ELSE USER_ID  -- ���ε��� �ʴ� ��� ���� USER_ID�� �״�� ����
    END;
commit;

select * from work;


UPDATE work
SET work_name = 
    CASE 
        WHEN WORK_ID = 'W001' THEN ' ��⸸�� ����'
        WHEN WORK_ID = 'W002' THEN ' ��ġ���� ����'
        WHEN WORK_ID = 'W003' THEN ' ���񸸵� ����'
        WHEN WORK_ID = 'W004' THEN ' �������� ����'
        WHEN WORK_ID = 'W005' THEN ' �ձ��ڸ��� ����'
        WHEN WORK_ID = 'W006' THEN ' �ع����� ����'
        WHEN WORK_ID = 'W007' THEN ' �ſ�� ����'
        WHEN WORK_ID = 'W008' THEN ' ��⸸�� ����'
        WHEN WORK_ID = 'W009' THEN ' ��ġ���� ����'
        WHEN WORK_ID = 'W010' THEN ' ���񸸵� ����'
        WHEN WORK_ID = 'W011' THEN ' �������� ����'
        WHEN WORK_ID = 'W012' THEN ' �ձ��ڸ��� ����'
        WHEN WORK_ID = 'W013' THEN ' �ع����� ����'
        WHEN WORK_ID = 'W014' THEN ' �ſ�� ����'
        WHEN WORK_ID = 'W015' THEN ' ��⸸�� ����'
        WHEN WORK_ID = 'W016' THEN ' ��ġ���� ����'
        WHEN WORK_ID = 'W017' THEN ' ���񸸵� ����'
        WHEN WORK_ID = 'W018' THEN ' �������� ����'
        WHEN WORK_ID = 'W019' THEN ' �ձ��ڸ��� ����'
        WHEN WORK_ID = 'W020' THEN ' �ع�����'
        ELSE work_name  -- ���ε��� �ʴ� ��� ���� work_name�� �״�� ����
    END;
commit;

UPDATE work
SET work_name = 
    CASE 
        WHEN WORK_ID = 'W001' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W002' THEN ' ��ġ���� '
        WHEN WORK_ID = 'W003' THEN ' ���񸸵� '
        WHEN WORK_ID = 'W004' THEN ' �������� '
        WHEN WORK_ID = 'W005' THEN ' �ձ��ڸ��� '
        WHEN WORK_ID = 'W006' THEN ' �ع����� '
        WHEN WORK_ID = 'W007' THEN ' �ſ�� '
        WHEN WORK_ID = 'W008' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W009' THEN ' ��ġ���� '
        WHEN WORK_ID = 'W010' THEN ' ���񸸵� '
        WHEN WORK_ID = 'W011' THEN ' �������� '
        WHEN WORK_ID = 'W012' THEN ' �ձ��ڸ��� '
        WHEN WORK_ID = 'W013' THEN ' �ع����� '
        WHEN WORK_ID = 'W014' THEN ' �ſ�� '
        WHEN WORK_ID = 'W015' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W016' THEN ' ��ġ���� '
        WHEN WORK_ID = 'W017' THEN ' ���񸸵� '
        WHEN WORK_ID = 'W018' THEN ' �������� '
        WHEN WORK_ID = 'W019' THEN ' �ձ��ڸ��� '
        WHEN WORK_ID = 'W020' THEN ' �ع����� '
        ELSE work_name  -- ���ε��� �ʴ� ��� ���� work_name�� �״�� ����
    END;
    


UPDATE work
SET work_name = 
    CASE 
        WHEN WORK_ID = 'W001' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W002' THEN ' ��ġ���� '
        WHEN WORK_ID = 'W003' THEN ' ���񸸵� '
        WHEN WORK_ID = 'W004' THEN ' �������� '
        WHEN WORK_ID = 'W005' THEN ' �ձ��ڸ��� '
        WHEN WORK_ID = 'W006' THEN ' �ع����� '
        WHEN WORK_ID = 'W007' THEN ' �ſ�� '
        WHEN WORK_ID = 'W008' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W009' THEN ' ��ġ���� '
        WHEN WORK_ID = 'W010' THEN ' ���񸸵� '
        WHEN WORK_ID = 'W011' THEN ' �������� '
        WHEN WORK_ID = 'W012' THEN ' �ձ��ڸ��� '
        WHEN WORK_ID = 'W013' THEN ' �ع����� '
        WHEN WORK_ID = 'W014' THEN ' �ſ�� '
        WHEN WORK_ID = 'W015' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W016' THEN ' ��ġ���� '
        WHEN WORK_ID = 'W017' THEN ' ���񸸵� '
        WHEN WORK_ID = 'W018' THEN ' �������� '
        WHEN WORK_ID = 'W019' THEN ' �ձ��ڸ��� '
        WHEN WORK_ID = 'W020' THEN ' �ع����� '
        WHEN WORK_ID = 'W021' THEN ' �ſ�� '
        WHEN WORK_ID = 'W022' THEN ' ��⸸�� '
        WHEN WORK_ID = 'W023' THEN ' ��ġ���� '
        ELSE work_name  -- ���ε��� �ʴ� ��� ���� work_name�� �״�� ����
    END
WHERE work_name = '����' OR work_name IS NULL;

select * from todo;
