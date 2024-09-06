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
SET work_do = '작업 대기'
WHERE work_name = '작업 20';


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

INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I021', '비비고 고기만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I022', '비비고 김치만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I023', '비비고 두부만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I024', '비비고 매운만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I025', '비비고 불고기만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I026', '비비고 새우만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I027', '비비고 스프링롤');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I028', '비비고 야채만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I029', '비비고 왕교자');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I030', '비비고 찐만두');
INSERT INTO ITEM (ITEM_CODE, ITEM_NAME) VALUES ('I031', '비비고 해물만두');

commit;

INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S019', 'I021', '비비고 고기만두 재고', 1500, '서울 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S020', 'I022', '비비고 김치만두 재고', 1200, '부산 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S021', 'I023', '비비고 두부만두 재고', 900, '대전 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S022', 'I024', '비비고 매운만두 재고', 1800, '광주 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S023', 'I025', '비비고 불고기만두 재고', 1400, '서울 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S024', 'I026', '비비고 새우만두 재고', 1300, '부산 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S025', 'I027', '비비고 스프링롤 재고', 1600, '대전 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S026', 'I028', '비비고 야채만두 재고', 1100, '광주 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S027', 'I029', '비비고 왕교자 재고', 2000, '서울 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S028', 'I030', '비비고 찐만두 재고', 1700, '부산 창고', '완제품');
INSERT INTO STOCK (STOCK_ID, ITEM_CODE, STOCK_NAME, STOCK_COUNT, STOCK_LOCATION, STOCK_SORT) VALUES ('S029', 'I031', '비비고 해물만두 재고', 1500, '대전 창고', '완제품');


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
    line_no VARCHAR2(50),                 -- 라인 번호 추가
    production_completed_qty NUMBER DEFAULT 0  -- 완료된 생산량 필드 추가
);

update work set work_do='작업 대기' where work_name='작업 18' ;
commit;
select * from work;

update work set PRODUCTION_COMPLETED_QTY = 150
where WORK_NAME = '작업 19';

commit;

select * from todo;

desc todo;