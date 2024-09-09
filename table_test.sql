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
select * from board;

UPDATE board
SET bord_TITLE = 'ù��° ������Ʈ ȸ��',
    bord_CONTENTS = 'ù��° ������Ʈ ȸ�ǿ��� ���ǵ� ������ �����մϴ�.'
WHERE bord_ID = 'B001';

UPDATE board
SET bord_TITLE = '�ι�° �� ���� Ȱ��',
    bord_CONTENTS = '�ι�° �� �������� ����� Ȱ���� �Ұ��� �����մϴ�.'
WHERE bord_ID = 'B002';

UPDATE board
SET bord_TITLE = '����° ���� ���α׷�',
    bord_CONTENTS = '����° ���� ���α׷����� ��� ������ �����մϴ�.'
WHERE bord_ID = 'B003';

UPDATE board
SET bord_TITLE = '�׹�° ���� ���� ����',
    bord_CONTENTS = '�׹�° �б��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B004';

UPDATE board
SET bord_TITLE = '�ټ���° �� ����',
    bord_CONTENTS = '�ټ���° �� ���ÿ��� ���ǵ� ������ �����մϴ�.'
WHERE bord_ID = 'B005';

UPDATE board
SET bord_TITLE = '������° ��ǰ ��� ��ȹ',
    bord_CONTENTS = '������° ��ǰ ��� ��ȹ�� ���� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B006';

UPDATE board
SET bord_TITLE = '�ϰ���° ������ ȸ��',
    bord_CONTENTS = '�ϰ���° ������ ȸ�ǿ��� ���ǵ� ����� ������ �����մϴ�.'
WHERE bord_ID = 'B007';

UPDATE board
SET bord_TITLE = '������° ������ ����',
    bord_CONTENTS = '������° ������ ������ ���� ���� ����� �����մϴ�.'
WHERE bord_ID = 'B008';

UPDATE board
SET bord_TITLE = '��ȩ��° �系 ��� ��ȹ',
    bord_CONTENTS = '��ȩ��° �系 ��� ��ȹ�� �����մϴ�.'
WHERE bord_ID = 'B009';

UPDATE board
SET bord_TITLE = '����° ���Ի�� ����',
    bord_CONTENTS = '����° ���Ի�� ���� ���α׷��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B010';

-- �߰������� �ʿ��� ��� ���� ���� ������� ������ �Խù��� ������Ʈ�� �� �ֽ��ϴ�.

UPDATE board
SET bord_TITLE = '���ѹ�° ���� ��ǥ ��ǥ',
    bord_CONTENTS = '���ѹ�° �Խù������� ���� ��ǥ ��ǥ ������ �ٷ�ϴ�.'
WHERE bord_ID = 'B011';

UPDATE board
SET bord_TITLE = '���ι�° ���� ���� ����',
    bord_CONTENTS = '���ι�° �Խù������� ���� ���翡 ���� ������ �����մϴ�.'
WHERE bord_ID = 'B012';

UPDATE board
SET bord_TITLE = '������° ���� ȸ�� ���',
    bord_CONTENTS = '������° �Խù������� ���� ȸ�ǿ��� ���� ����� �����մϴ�.'
WHERE bord_ID = 'B013';

UPDATE board
SET bord_TITLE = '���׹�° �� ������ ���� ���',
    bord_CONTENTS = '���׹�° �Խù������� �� ������ ���� ����� �����մϴ�.'
WHERE bord_ID = 'B014';

UPDATE board
SET bord_TITLE = '���ټ���° ��ǰ ���� ��ô ��Ȳ',
    bord_CONTENTS = '���ټ���° �Խù������� ��ǰ ���� ��ô ��Ȳ�� ������Ʈ�մϴ�.'
WHERE bord_ID = 'B015';

UPDATE board
SET bord_TITLE = '��������° �λ� �̵� ����',
    bord_CONTENTS = '��������° �Խù������� �λ� �̵��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B016';

UPDATE board
SET bord_TITLE = '���ϰ���° �Ż�ǰ ��� ����',
    bord_CONTENTS = '���ϰ���° �Խù������� �Ż�ǰ ��� ������ �ȳ��մϴ�.'
WHERE bord_ID = 'B017';

UPDATE board
SET bord_TITLE = '��������° ���� ���� ����',
    bord_CONTENTS = '��������° �Խù������� ���� ���� ������ �ȳ��մϴ�.'
WHERE bord_ID = 'B018';

UPDATE board
SET bord_TITLE = '����ȩ��° ���� ���� ����',
    bord_CONTENTS = '����ȩ��° �Խù������� ���� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B019';

UPDATE board
SET bord_TITLE = '������° �系 ���� ���α׷�',
    bord_CONTENTS = '������° �Խù������� ���ο� �系 ���� ���α׷��� ���� �ȳ��մϴ�.'
WHERE bord_ID = 'B020';

UPDATE board
SET bord_TITLE = '�Խù� �׽�Ʈ',
    bord_CONTENTS = '�׽�Ʈ �Խù��Դϴ�. ��� ���˿��Դϴ�.'
WHERE bord_ID = 'B021';

UPDATE board
SET bord_TITLE = '�系 �Խ��� ��Ģ ���� �ȳ�',
    bord_CONTENTS = '�系 �Խ��� ��Ģ�� ����Ǿ����ϴ�. ���� ������ Ȯ���ϼ���.'
WHERE bord_ID = 'B022';

UPDATE board
SET bord_TITLE = 'ȸ�Ƿ� �ۼ� ���̵�',
    bord_CONTENTS = 'ȸ�Ƿ� �ۼ� �� �ʿ��� ���̵�� ����� �����մϴ�.'
WHERE bord_ID = 'B023';

UPDATE board
SET bord_TITLE = 'ȫ�浿���� �Խù�',
    bord_CONTENTS = 'ȫ�浿���� �������� �ҽ��� �����մϴ�.'
WHERE bord_ID = 'B024';



UPDATE board
SET board_TITLE = 'ù��° ������Ʈ ȸ��',
    board_CONTENTS = 'ù��° ������Ʈ ȸ�ǿ��� ���ǵ� ������ �����մϴ�.'
WHERE bord_ID = 'B001';

UPDATE board
SET board_TITLE = '�ι�° �� ���� Ȱ��',
    board_CONTENTS = '�ι�° �� �������� ����� Ȱ���� �Ұ��� �����մϴ�.'
WHERE bord_ID = 'B002';

UPDATE board
SET board_TITLE = '����° ���� ���α׷�',
    board_CONTENTS = '����° ���� ���α׷����� ��� ������ �����մϴ�.'
WHERE bord_ID = 'B003';

UPDATE board
SET board_TITLE = '�׹�° ���� ���� ����',
    board_CONTENTS = '�׹�° �б��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B004';

UPDATE board
SET board_TITLE = '�ټ���° �� ����',
    board_CONTENTS = '�ټ���° �� ���ÿ��� ���ǵ� ������ �����մϴ�.'
WHERE bord_ID = 'B005';

UPDATE board
SET board_TITLE = '������° ��ǰ ��� ��ȹ',
    board_CONTENTS = '������° ��ǰ ��� ��ȹ�� ���� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B006';

UPDATE board
SET board_TITLE = '�ϰ���° ������ ȸ��',
    board_CONTENTS = '�ϰ���° ������ ȸ�ǿ��� ���ǵ� ����� ������ �����մϴ�.'
WHERE bord_ID = 'B007';

UPDATE board
SET board_TITLE = '������° ������ ����',
    board_CONTENTS = '������° ������ ������ ���� ���� ����� �����մϴ�.'
WHERE bord_ID = 'B008';

UPDATE board
SET board_TITLE = '��ȩ��° �系 ��� ��ȹ',
    board_CONTENTS = '��ȩ��° �系 ��� ��ȹ�� �����մϴ�.'
WHERE bord_ID = 'B009';

UPDATE board
SET board_TITLE = '����° ���Ի�� ����',
    board_CONTENTS = '����° ���Ի�� ���� ���α׷��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B010';

-- �߰������� �ʿ��� ��� ���� ���� ������� ������ �Խù��� ������Ʈ�� �� �ֽ��ϴ�.

UPDATE board
SET board_TITLE = '���ѹ�° ���� ��ǥ ��ǥ',
    board_CONTENTS = '���ѹ�° �Խù������� ���� ��ǥ ��ǥ ������ �ٷ�ϴ�.'
WHERE bord_ID = 'B011';

UPDATE board
SET board_TITLE = '���ι�° ���� ���� ����',
    board_CONTENTS = '���ι�° �Խù������� ���� ���翡 ���� ������ �����մϴ�.'
WHERE bord_ID = 'B012';

UPDATE board
SET board_TITLE = '������° ���� ȸ�� ���',
    board_CONTENTS = '������° �Խù������� ���� ȸ�ǿ��� ���� ����� �����մϴ�.'
WHERE bord_ID = 'B013';

UPDATE board
SET board_TITLE = '���׹�° �� ������ ���� ���',
    board_CONTENTS = '���׹�° �Խù������� �� ������ ���� ����� �����մϴ�.'
WHERE bord_ID = 'B014';

UPDATE board
SET board_TITLE = '���ټ���° ��ǰ ���� ��ô ��Ȳ',
    board_CONTENTS = '���ټ���° �Խù������� ��ǰ ���� ��ô ��Ȳ�� ������Ʈ�մϴ�.'
WHERE bord_ID = 'B015';

UPDATE board
SET board_TITLE = '��������° �λ� �̵� ����',
    board_CONTENTS = '��������° �Խù������� �λ� �̵��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B016';

UPDATE board
SET board_TITLE = '���ϰ���° �Ż�ǰ ��� ����',
    board_CONTENTS = '���ϰ���° �Խù������� �Ż�ǰ ��� ������ �ȳ��մϴ�.'
WHERE bord_ID = 'B017';

UPDATE board
SET board_TITLE = '��������° ���� ���� ����',
    board_CONTENTS = '��������° �Խù������� ���� ���� ������ �ȳ��մϴ�.'
WHERE bord_ID = 'B018';

UPDATE board
SET board_TITLE = '����ȩ��° ���� ���� ����',
    board_CONTENTS = '����ȩ��° �Խù������� ���� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B019';

UPDATE board
SET board_TITLE = '������° �系 ���� ���α׷�',
    board_CONTENTS = '������° �Խù������� ���ο� �系 ���� ���α׷��� ���� �ȳ��մϴ�.'
WHERE bord_ID = 'B020';

UPDATE board
SET board_TITLE = '�Խù� �׽�Ʈ',
    board_CONTENTS = '�׽�Ʈ �Խù��Դϴ�. ��� ���˿��Դϴ�.'
WHERE bord_ID = 'B021';

UPDATE board
SET board_TITLE = '�系 �Խ��� ��Ģ ���� �ȳ�',
    board_CONTENTS = '�系 �Խ��� ��Ģ�� ����Ǿ����ϴ�. ���� ������ Ȯ���ϼ���.'
WHERE bord_ID = 'B022';

UPDATE board
SET board_TITLE = 'ȸ�Ƿ� �ۼ� ���̵�',
    board_CONTENTS = 'ȸ�Ƿ� �ۼ� �� �ʿ��� ���̵�� ����� �����մϴ�.'
WHERE bord_ID = 'B023';

UPDATE board
SET board_TITLE = 'ȫ�浿���� �Խù�',
    board_CONTENTS = 'ȫ�浿���� �������� �ҽ��� �����մϴ�.'
WHERE bord_ID = 'B024';

commit;

UPDATE board
SET BOARD_TITLE = '������Ʈ ȸ��',
    BOARD_CONTENTS = '������Ʈ ȸ�ǿ��� ���ǵ� ������ �����մϴ�.'
WHERE BOARD_ID = 'B001';

UPDATE board
SET BOARD_TITLE = '�� ���� Ȱ��',
    BOARD_CONTENTS = '�� �������� ����� Ȱ���� �Ұ��� �����մϴ�.'
WHERE BOARD_ID = 'B002';

UPDATE board
SET BOARD_TITLE = '���� ���α׷�',
    BOARD_CONTENTS = '���� ���α׷����� ��� ������ �����մϴ�.'
WHERE BOARD_ID = 'B003';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '�б��� ���� ������ �����մϴ�.'
WHERE BOARD_ID = 'B004';

UPDATE board
SET BOARD_TITLE = '�� ����',
    BOARD_CONTENTS = '�� ���ÿ��� ���ǵ� ������ �����մϴ�.'
WHERE BOARD_ID = 'B005';

UPDATE board
SET BOARD_TITLE = '��ǰ ��� ��ȹ',
    BOARD_CONTENTS = '��ǰ ��� ��ȹ�� ���� ���� ������ �����մϴ�.'
WHERE BOARD_ID = 'B006';

UPDATE board
SET BOARD_TITLE = '������ ȸ��',
    BOARD_CONTENTS = '������ ȸ�ǿ��� ���ǵ� ����� ������ �����մϴ�.'
WHERE BOARD_ID = 'B007';

UPDATE board
SET BOARD_TITLE = '������ ����',
    BOARD_CONTENTS = '������ ������ ���� ���� ����� �����մϴ�.'
WHERE BOARD_ID = 'B008';

UPDATE board
SET BOARD_TITLE = '�系 ��� ��ȹ',
    BOARD_CONTENTS = '�系 ��� ��ȹ�� �����մϴ�.'
WHERE BOARD_ID = 'B009';

UPDATE board
SET BOARD_TITLE = '���Ի�� ����',
    BOARD_CONTENTS = '���Ի�� ���� ���α׷��� ���� ������ �����մϴ�.'
WHERE BOARD_ID = 'B010';

UPDATE board
SET BOARD_TITLE = '���� ��ǥ ��ǥ',
    BOARD_CONTENTS = '���� ��ǥ ��ǥ ������ �ٷ�ϴ�.'
WHERE BOARD_ID = 'B011';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '���� ���翡 ���� ������ �����մϴ�.'
WHERE BOARD_ID = 'B012';

UPDATE board
SET BOARD_TITLE = '���� ȸ�� ���',
    BOARD_CONTENTS = '���� ȸ�ǿ��� ���� ����� �����մϴ�.'
WHERE BOARD_ID = 'B013';

UPDATE board
SET BOARD_TITLE = '�� ������ ���� ���',
    BOARD_CONTENTS = '�� ������ ���� ����� �����մϴ�.'
WHERE BOARD_ID = 'B014';

UPDATE board
SET BOARD_TITLE = '��ǰ ���� ��ô ��Ȳ',
    BOARD_CONTENTS = '��ǰ ���� ��ô ��Ȳ�� ������Ʈ�մϴ�.'
WHERE BOARD_ID = 'B015';

UPDATE board
SET BOARD_TITLE = '�λ� �̵� ����',
    BOARD_CONTENTS = '�λ� �̵��� ���� ������ �����մϴ�.'
WHERE BOARD_ID = 'B016';

UPDATE board
SET BOARD_TITLE = '�Ż�ǰ ��� ����',
    BOARD_CONTENTS = '�Ż�ǰ ��� ������ �ȳ��մϴ�.'
WHERE BOARD_ID = 'B017';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '���� ���� ������ �ȳ��մϴ�.'
WHERE BOARD_ID = 'B018';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '���� ���� ������ �����մϴ�.'
WHERE BOARD_ID = 'B019';

UPDATE board
SET BOARD_TITLE = '�系 ���� ���α׷�',
    BOARD_CONTENTS = '���ο� �系 ���� ���α׷��� ���� �ȳ��մϴ�.'
WHERE BOARD_ID = 'B020';

UPDATE board
SET BOARD_TITLE = '�Խù� �׽�Ʈ',
    BOARD_CONTENTS = '�׽�Ʈ �Խù��Դϴ�. ��� ���˿��Դϴ�.'
WHERE BOARD_ID = 'B021';

UPDATE board
SET BOARD_TITLE = '�系 �Խ��� ��Ģ ���� �ȳ�',
    BOARD_CONTENTS = '�系 �Խ��� ��Ģ�� ����Ǿ����ϴ�. ���� ������ Ȯ���ϼ���.'
WHERE BOARD_ID = 'B022';

UPDATE board
SET BOARD_TITLE = 'ȸ�Ƿ� �ۼ� ���̵�',
    BOARD_CONTENTS = 'ȸ�Ƿ� �ۼ� �� �ʿ��� ���̵�� ����� �����մϴ�.'
WHERE BOARD_ID = 'B023';

UPDATE board
SET BOARD_TITLE = 'ȫ�浿���� �Խù�',
    BOARD_CONTENTS = 'ȫ�浿���� �������� �ҽ��� �����մϴ�.'
WHERE BOARD_ID = 'B024'



UPDATE board
SET BOARD_TITLE = '������Ʈ ȸ��',
    BOARD_CONTENTS = '������Ʈ ȸ�ǿ��� ���ǵ� ������ �����մϴ�.'
WHERE bord_ID = 'B001';

UPDATE board
SET BOARD_TITLE = '�� ���� Ȱ��',
    BOARD_CONTENTS = '�� �������� ����� Ȱ���� �Ұ��� �����մϴ�.'
WHERE bord_ID = 'B002';

UPDATE board
SET BOARD_TITLE = '���� ���α׷�',
    BOARD_CONTENTS = '���� ���α׷����� ��� ������ �����մϴ�.'
WHERE bord_ID = 'B003';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '�б��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B004';

UPDATE board
SET BOARD_TITLE = '�� ����',
    BOARD_CONTENTS = '�� ���ÿ��� ���ǵ� ������ �����մϴ�.'
WHERE bord_ID = 'B005';

UPDATE board
SET BOARD_TITLE = '��ǰ ��� ��ȹ',
    BOARD_CONTENTS = '��ǰ ��� ��ȹ�� ���� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B006';

UPDATE board
SET BOARD_TITLE = '������ ȸ��',
    BOARD_CONTENTS = '������ ȸ�ǿ��� ���ǵ� ����� ������ �����մϴ�.'
WHERE bord_ID = 'B007';

UPDATE board
SET BOARD_TITLE = '������ ����',
    BOARD_CONTENTS = '������ ������ ���� ���� ����� �����մϴ�.'
WHERE bord_ID = 'B008';

UPDATE board
SET BOARD_TITLE = '�系 ��� ��ȹ',
    BOARD_CONTENTS = '�系 ��� ��ȹ�� �����մϴ�.'
WHERE bord_ID = 'B009';

UPDATE board
SET BOARD_TITLE = '���Ի�� ����',
    BOARD_CONTENTS = '���Ի�� ���� ���α׷��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B010';

UPDATE board
SET BOARD_TITLE = '���� ��ǥ ��ǥ',
    BOARD_CONTENTS = '���� ��ǥ ��ǥ ������ �ٷ�ϴ�.'
WHERE bord_ID = 'B011';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '���� ���翡 ���� ������ �����մϴ�.'
WHERE bord_ID = 'B012';

UPDATE board
SET BOARD_TITLE = '���� ȸ�� ���',
    BOARD_CONTENTS = '���� ȸ�ǿ��� ���� ����� �����մϴ�.'
WHERE bord_ID = 'B013';

UPDATE board
SET BOARD_TITLE = '�� ������ ���� ���',
    BOARD_CONTENTS = '�� ������ ���� ����� �����մϴ�.'
WHERE bord_ID = 'B014';

UPDATE board
SET BOARD_TITLE = '��ǰ ���� ��ô ��Ȳ',
    BOARD_CONTENTS = '��ǰ ���� ��ô ��Ȳ�� ������Ʈ�մϴ�.'
WHERE bord_ID = 'B015';

UPDATE board
SET BOARD_TITLE = '�λ� �̵� ����',
    BOARD_CONTENTS = '�λ� �̵��� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B016';

UPDATE board
SET BOARD_TITLE = '�Ż�ǰ ��� ����',
    BOARD_CONTENTS = '�Ż�ǰ ��� ������ �ȳ��մϴ�.'
WHERE bord_ID = 'B017';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '���� ���� ������ �ȳ��մϴ�.'
WHERE bord_ID = 'B018';

UPDATE board
SET BOARD_TITLE = '���� ���� ����',
    BOARD_CONTENTS = '���� ���� ������ �����մϴ�.'
WHERE bord_ID = 'B019';

UPDATE board
SET BOARD_TITLE = '�系 ���� ���α׷�',
    BOARD_CONTENTS = '���ο� �系 ���� ���α׷��� ���� �ȳ��մϴ�.'
WHERE bord_ID = 'B020';

UPDATE board
SET BOARD_TITLE = '�Խù� �׽�Ʈ',
    BOARD_CONTENTS = '�׽�Ʈ �Խù��Դϴ�. ��� ���˿��Դϴ�.'
WHERE bord_ID = 'B021';

UPDATE board
SET BOARD_TITLE = '�系 �Խ��� ��Ģ ���� �ȳ�',
    BOARD_CONTENTS = '�系 �Խ��� ��Ģ�� ����Ǿ����ϴ�. ���� ������ Ȯ���ϼ���.'
WHERE bord_ID = 'B022';

UPDATE board
SET BOARD_TITLE = 'ȸ�Ƿ� �ۼ� ���̵�',
    BOARD_CONTENTS = 'ȸ�Ƿ� �ۼ� �� �ʿ��� ���̵�� ����� �����մϴ�.'
WHERE bord_ID = 'B023';

UPDATE board
SET BOARD_TITLE = 'ȫ�浿���� �Խù�',
    BOARD_CONTENTS = 'ȫ�浿���� �������� �ҽ��� �����մϴ�.'
WHERE bord_ID = 'B024';

commit;