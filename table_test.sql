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
commit;
UPDATE work
SET work_do = '�۾� ���'
WHERE work_name = '�۾� 20';


SELECT * FROM stock;

SELECT * FROM faulty;


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

update work set PRODUCTION_COMPLETED_QTY = 150
where WORK_NAME = '�۾� 19';

commit;

select * from todo;

desc todo;