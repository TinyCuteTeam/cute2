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
WHERE WORK_DO = '출고 완료' AND WORK_NAME LIKE '작업%';




commit;
UPDATE work
SET work_do = '작업 대기'
WHERE work_name = '작업 20';


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
        WHEN USER_ID = 'U001' THEN '박경민'
        WHEN USER_ID = 'U002' THEN '홍지윤'
        WHEN USER_ID = 'U003' THEN '김철수'
        WHEN USER_ID = 'U004' THEN '박경민'
        WHEN USER_ID = 'U005' THEN '홍지윤'
        WHEN USER_ID = 'U006' THEN '김철수'
        WHEN USER_ID = 'U007' THEN '박경민'
        WHEN USER_ID = 'U008' THEN '홍지윤'
        WHEN USER_ID = 'U009' THEN '김철수'
        WHEN USER_ID = 'U010' THEN '박경민'
        WHEN USER_ID = 'U011' THEN '홍지윤'
        WHEN USER_ID = 'U012' THEN '김철수'
        WHEN USER_ID = 'U013' THEN '홍지윤'
        WHEN USER_ID = 'U014' THEN '김철수'
        WHEN USER_ID = 'U015' THEN '홍지윤'
        WHEN USER_ID = 'U016' THEN '김철수'
        WHEN USER_ID = 'U017' THEN '홍지윤'
        WHEN USER_ID = 'U018' THEN '김철수'
        WHEN USER_ID = 'U019' THEN '홍지윤'
        WHEN USER_ID = 'U020' THEN '김철수'

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
        WHEN USER_ID = 'U001' THEN '박경민'
        WHEN USER_ID = 'U002' THEN '홍지윤'
        WHEN USER_ID = 'U003' THEN '김철수'
        WHEN USER_ID = 'U004' THEN '박경민'
        WHEN USER_ID = 'U005' THEN '홍지윤'
        WHEN USER_ID = 'U006' THEN '김철수'
        WHEN USER_ID = 'U007' THEN '박경민'
        WHEN USER_ID = 'U008' THEN '홍지윤'
        WHEN USER_ID = 'U009' THEN '김철수'
        WHEN USER_ID = 'U010' THEN '박경민'
        WHEN USER_ID = 'U011' THEN '홍지윤'
        WHEN USER_ID = 'U012' THEN '김철수'
        WHEN USER_ID = 'U013' THEN '홍지윤'
        WHEN USER_ID = 'U014' THEN '김철수'
        WHEN USER_ID = 'U015' THEN '홍지윤'
        WHEN USER_ID = 'U016' THEN '김철수'
        WHEN USER_ID = 'U017' THEN '홍지윤'
        WHEN USER_ID = 'U018' THEN '김철수'
        WHEN USER_ID = 'U019' THEN '홍지윤'
        WHEN USER_ID = 'U020' THEN '김철수'
    END;
    
    UPDATE work
SET USER_ID = 
    CASE 
        WHEN USER_ID = 'U001' THEN '박경민'
        WHEN USER_ID = 'U002' THEN '홍지윤'
        WHEN USER_ID = 'U003' THEN '김철수'
        WHEN USER_ID = 'U004' THEN '박경민'
        WHEN USER_ID = 'U005' THEN '홍지윤'
        WHEN USER_ID = 'U006' THEN '김철수'
        WHEN USER_ID = 'U007' THEN '박경민'
        WHEN USER_ID = 'U008' THEN '홍지윤'
        WHEN USER_ID = 'U009' THEN '김철수'
        WHEN USER_ID = 'U010' THEN '박경민'
        WHEN USER_ID = 'U011' THEN '홍지윤'
        WHEN USER_ID = 'U012' THEN '김철수'
        WHEN USER_ID = 'U013' THEN '홍지윤'
        WHEN USER_ID = 'U014' THEN '김철수'
        WHEN USER_ID = 'U015' THEN '홍지윤'
        WHEN USER_ID = 'U016' THEN '김철수'
        WHEN USER_ID = 'U017' THEN '홍지윤'
        WHEN USER_ID = 'U018' THEN '김철수'
        WHEN USER_ID = 'U019' THEN '홍지윤'
        WHEN USER_ID = 'U020' THEN '김철수'
    END;

UPDATE work
SET USER_ID = 
    CASE 
        WHEN USER_ID = 'U001' THEN '박경민'
        WHEN USER_ID = 'U002' THEN '홍지윤'
        WHEN USER_ID = 'U003' THEN '김철수'
        WHEN USER_ID = 'U004' THEN '박경민'
        WHEN USER_ID = 'U005' THEN '홍지윤'
        WHEN USER_ID = 'U006' THEN '김철수'
        WHEN USER_ID = 'U007' THEN '박경민'
        WHEN USER_ID = 'U008' THEN '홍지윤'
        WHEN USER_ID = 'U009' THEN '김철수'
        WHEN USER_ID = 'U010' THEN '박경민'
        WHEN USER_ID = 'U011' THEN '홍지윤'
        WHEN USER_ID = 'U012' THEN '김철수'
        WHEN USER_ID = 'U013' THEN '홍지윤'
        WHEN USER_ID = 'U014' THEN '김철수'
        WHEN USER_ID = 'U015' THEN '홍지윤'
        WHEN USER_ID = 'U016' THEN '김철수'
        WHEN USER_ID = 'U017' THEN '홍지윤'
        WHEN USER_ID = 'U018' THEN '김철수'
        WHEN USER_ID = 'U019' THEN '홍지윤'
        WHEN USER_ID = 'U020' THEN '김철수'
        ELSE USER_ID  -- 매핑되지 않는 경우 기존 USER_ID를 그대로 유지
    END;
commit;

select * from work;


UPDATE work
SET work_name = 
    CASE 
        WHEN WORK_ID = 'W001' THEN ' 고기만두 제작'
        WHEN WORK_ID = 'W002' THEN ' 김치만두 제작'
        WHEN WORK_ID = 'W003' THEN ' 갈비만두 제작'
        WHEN WORK_ID = 'W004' THEN ' 수제만두 제작'
        WHEN WORK_ID = 'W005' THEN ' 왕교자만두 제작'
        WHEN WORK_ID = 'W006' THEN ' 해물만두 제작'
        WHEN WORK_ID = 'W007' THEN ' 매운만두 제작'
        WHEN WORK_ID = 'W008' THEN ' 고기만두 제작'
        WHEN WORK_ID = 'W009' THEN ' 김치만두 제작'
        WHEN WORK_ID = 'W010' THEN ' 갈비만두 제작'
        WHEN WORK_ID = 'W011' THEN ' 수제만두 제작'
        WHEN WORK_ID = 'W012' THEN ' 왕교자만두 제작'
        WHEN WORK_ID = 'W013' THEN ' 해물만두 제작'
        WHEN WORK_ID = 'W014' THEN ' 매운만두 제작'
        WHEN WORK_ID = 'W015' THEN ' 고기만두 제작'
        WHEN WORK_ID = 'W016' THEN ' 김치만두 제작'
        WHEN WORK_ID = 'W017' THEN ' 갈비만두 제작'
        WHEN WORK_ID = 'W018' THEN ' 수제만두 제작'
        WHEN WORK_ID = 'W019' THEN ' 왕교자만두 제작'
        WHEN WORK_ID = 'W020' THEN ' 해물만두'
        ELSE work_name  -- 매핑되지 않는 경우 기존 work_name을 그대로 유지
    END;
commit;

UPDATE work
SET work_name = 
    CASE 
        WHEN WORK_ID = 'W001' THEN ' 고기만두 '
        WHEN WORK_ID = 'W002' THEN ' 김치만두 '
        WHEN WORK_ID = 'W003' THEN ' 갈비만두 '
        WHEN WORK_ID = 'W004' THEN ' 수제만두 '
        WHEN WORK_ID = 'W005' THEN ' 왕교자만두 '
        WHEN WORK_ID = 'W006' THEN ' 해물만두 '
        WHEN WORK_ID = 'W007' THEN ' 매운만두 '
        WHEN WORK_ID = 'W008' THEN ' 고기만두 '
        WHEN WORK_ID = 'W009' THEN ' 김치만두 '
        WHEN WORK_ID = 'W010' THEN ' 갈비만두 '
        WHEN WORK_ID = 'W011' THEN ' 수제만두 '
        WHEN WORK_ID = 'W012' THEN ' 왕교자만두 '
        WHEN WORK_ID = 'W013' THEN ' 해물만두 '
        WHEN WORK_ID = 'W014' THEN ' 매운만두 '
        WHEN WORK_ID = 'W015' THEN ' 고기만두 '
        WHEN WORK_ID = 'W016' THEN ' 김치만두 '
        WHEN WORK_ID = 'W017' THEN ' 갈비만두 '
        WHEN WORK_ID = 'W018' THEN ' 수제만두 '
        WHEN WORK_ID = 'W019' THEN ' 왕교자만두 '
        WHEN WORK_ID = 'W020' THEN ' 해물만두 '
        ELSE work_name  -- 매핑되지 않는 경우 기존 work_name을 그대로 유지
    END;
    


UPDATE work
SET work_name = 
    CASE 
        WHEN WORK_ID = 'W001' THEN ' 고기만두 '
        WHEN WORK_ID = 'W002' THEN ' 김치만두 '
        WHEN WORK_ID = 'W003' THEN ' 갈비만두 '
        WHEN WORK_ID = 'W004' THEN ' 수제만두 '
        WHEN WORK_ID = 'W005' THEN ' 왕교자만두 '
        WHEN WORK_ID = 'W006' THEN ' 해물만두 '
        WHEN WORK_ID = 'W007' THEN ' 매운만두 '
        WHEN WORK_ID = 'W008' THEN ' 고기만두 '
        WHEN WORK_ID = 'W009' THEN ' 김치만두 '
        WHEN WORK_ID = 'W010' THEN ' 갈비만두 '
        WHEN WORK_ID = 'W011' THEN ' 수제만두 '
        WHEN WORK_ID = 'W012' THEN ' 왕교자만두 '
        WHEN WORK_ID = 'W013' THEN ' 해물만두 '
        WHEN WORK_ID = 'W014' THEN ' 매운만두 '
        WHEN WORK_ID = 'W015' THEN ' 고기만두 '
        WHEN WORK_ID = 'W016' THEN ' 김치만두 '
        WHEN WORK_ID = 'W017' THEN ' 갈비만두 '
        WHEN WORK_ID = 'W018' THEN ' 수제만두 '
        WHEN WORK_ID = 'W019' THEN ' 왕교자만두 '
        WHEN WORK_ID = 'W020' THEN ' 해물만두 '
        WHEN WORK_ID = 'W021' THEN ' 매운만두 '
        WHEN WORK_ID = 'W022' THEN ' 고기만두 '
        WHEN WORK_ID = 'W023' THEN ' 김치만두 '
        ELSE work_name  -- 매핑되지 않는 경우 기존 work_name을 그대로 유지
    END
WHERE work_name = '없음' OR work_name IS NULL;

select * from todo;
select * from board;

UPDATE board
SET bord_TITLE = '첫번째 프로젝트 회의',
    bord_CONTENTS = '첫번째 프로젝트 회의에서 논의된 내용을 정리합니다.'
WHERE bord_ID = 'B001';

UPDATE board
SET bord_TITLE = '두번째 팀 빌딩 활동',
    bord_CONTENTS = '두번째 팀 빌딩에서 진행된 활동과 소감을 공유합니다.'
WHERE bord_ID = 'B002';

UPDATE board
SET bord_TITLE = '세번째 교육 프로그램',
    bord_CONTENTS = '세번째 교육 프로그램에서 배운 점들을 정리합니다.'
WHERE bord_ID = 'B003';

UPDATE board
SET bord_TITLE = '네번째 업무 성과 보고',
    bord_CONTENTS = '네번째 분기의 업무 성과를 공유합니다.'
WHERE bord_ID = 'B004';

UPDATE board
SET bord_TITLE = '다섯번째 고객 미팅',
    bord_CONTENTS = '다섯번째 고객 미팅에서 논의된 사항을 정리합니다.'
WHERE bord_ID = 'B005';

UPDATE board
SET bord_TITLE = '여섯번째 제품 출시 계획',
    bord_CONTENTS = '여섯번째 제품 출시 계획에 대한 세부 내용을 공유합니다.'
WHERE bord_ID = 'B006';

UPDATE board
SET bord_TITLE = '일곱번째 개발팀 회의',
    bord_CONTENTS = '일곱번째 개발팀 회의에서 논의된 기술적 사항을 공유합니다.'
WHERE bord_ID = 'B007';

UPDATE board
SET bord_TITLE = '여덟번째 마케팅 전략',
    bord_CONTENTS = '여덟번째 마케팅 전략에 대한 논의 결과를 공유합니다.'
WHERE bord_ID = 'B008';

UPDATE board
SET bord_TITLE = '아홉번째 사내 행사 계획',
    bord_CONTENTS = '아홉번째 사내 행사 계획을 공지합니다.'
WHERE bord_ID = 'B009';

UPDATE board
SET bord_TITLE = '열번째 신입사원 교육',
    bord_CONTENTS = '열번째 신입사원 교육 프로그램에 대한 내용을 공유합니다.'
WHERE bord_ID = 'B010';

-- 추가적으로 필요할 경우 위와 같은 방식으로 나머지 게시물도 업데이트할 수 있습니다.

UPDATE board
SET bord_TITLE = '열한번째 연간 목표 발표',
    bord_CONTENTS = '열한번째 게시물에서는 연간 목표 발표 내용을 다룹니다.'
WHERE bord_ID = 'B011';

UPDATE board
SET bord_TITLE = '열두번째 내부 감사 보고서',
    bord_CONTENTS = '열두번째 게시물에서는 내부 감사에 대한 보고서를 공유합니다.'
WHERE bord_ID = 'B012';

UPDATE board
SET bord_TITLE = '열세번째 팀장 회의 결과',
    bord_CONTENTS = '열세번째 게시물에서는 팀장 회의에서 나온 결론을 공유합니다.'
WHERE bord_ID = 'B013';

UPDATE board
SET bord_TITLE = '열네번째 고객 만족도 조사 결과',
    bord_CONTENTS = '열네번째 게시물에서는 고객 만족도 조사 결과를 공유합니다.'
WHERE bord_ID = 'B014';

UPDATE board
SET bord_TITLE = '열다섯번째 제품 개발 진척 상황',
    bord_CONTENTS = '열다섯번째 게시물에서는 제품 개발 진척 상황을 업데이트합니다.'
WHERE bord_ID = 'B015';

UPDATE board
SET bord_TITLE = '열여섯번째 인사 이동 공지',
    bord_CONTENTS = '열여섯번째 게시물에서는 인사 이동에 대한 내용을 공지합니다.'
WHERE bord_ID = 'B016';

UPDATE board
SET bord_TITLE = '열일곱번째 신상품 출시 일정',
    bord_CONTENTS = '열일곱번째 게시물에서는 신상품 출시 일정을 안내합니다.'
WHERE bord_ID = 'B017';

UPDATE board
SET bord_TITLE = '열여덟번째 보안 점검 공지',
    bord_CONTENTS = '열여덟번째 게시물에서는 보안 점검 일정을 안내합니다.'
WHERE bord_ID = 'B018';

UPDATE board
SET bord_TITLE = '열아홉번째 서비스 개선 사항',
    bord_CONTENTS = '열아홉번째 게시물에서는 서비스 개선 사항을 공유합니다.'
WHERE bord_ID = 'B019';

UPDATE board
SET bord_TITLE = '스무번째 사내 복지 프로그램',
    bord_CONTENTS = '스무번째 게시물에서는 새로운 사내 복지 프로그램에 대해 안내합니다.'
WHERE bord_ID = 'B020';

UPDATE board
SET bord_TITLE = '게시물 테스트',
    bord_CONTENTS = '테스트 게시물입니다. 기능 점검용입니다.'
WHERE bord_ID = 'B021';

UPDATE board
SET bord_TITLE = '사내 게시판 규칙 변경 안내',
    bord_CONTENTS = '사내 게시판 규칙이 변경되었습니다. 세부 내용을 확인하세요.'
WHERE bord_ID = 'B022';

UPDATE board
SET bord_TITLE = '회의록 작성 가이드',
    bord_CONTENTS = '회의록 작성 시 필요한 가이드와 양식을 공유합니다.'
WHERE bord_ID = 'B023';

UPDATE board
SET bord_TITLE = '홍길동님의 게시물',
    bord_CONTENTS = '홍길동님의 개인적인 소식을 공유합니다.'
WHERE bord_ID = 'B024';



UPDATE board
SET board_TITLE = '첫번째 프로젝트 회의',
    board_CONTENTS = '첫번째 프로젝트 회의에서 논의된 내용을 정리합니다.'
WHERE bord_ID = 'B001';

UPDATE board
SET board_TITLE = '두번째 팀 빌딩 활동',
    board_CONTENTS = '두번째 팀 빌딩에서 진행된 활동과 소감을 공유합니다.'
WHERE bord_ID = 'B002';

UPDATE board
SET board_TITLE = '세번째 교육 프로그램',
    board_CONTENTS = '세번째 교육 프로그램에서 배운 점들을 정리합니다.'
WHERE bord_ID = 'B003';

UPDATE board
SET board_TITLE = '네번째 업무 성과 보고',
    board_CONTENTS = '네번째 분기의 업무 성과를 공유합니다.'
WHERE bord_ID = 'B004';

UPDATE board
SET board_TITLE = '다섯번째 고객 미팅',
    board_CONTENTS = '다섯번째 고객 미팅에서 논의된 사항을 정리합니다.'
WHERE bord_ID = 'B005';

UPDATE board
SET board_TITLE = '여섯번째 제품 출시 계획',
    board_CONTENTS = '여섯번째 제품 출시 계획에 대한 세부 내용을 공유합니다.'
WHERE bord_ID = 'B006';

UPDATE board
SET board_TITLE = '일곱번째 개발팀 회의',
    board_CONTENTS = '일곱번째 개발팀 회의에서 논의된 기술적 사항을 공유합니다.'
WHERE bord_ID = 'B007';

UPDATE board
SET board_TITLE = '여덟번째 마케팅 전략',
    board_CONTENTS = '여덟번째 마케팅 전략에 대한 논의 결과를 공유합니다.'
WHERE bord_ID = 'B008';

UPDATE board
SET board_TITLE = '아홉번째 사내 행사 계획',
    board_CONTENTS = '아홉번째 사내 행사 계획을 공지합니다.'
WHERE bord_ID = 'B009';

UPDATE board
SET board_TITLE = '열번째 신입사원 교육',
    board_CONTENTS = '열번째 신입사원 교육 프로그램에 대한 내용을 공유합니다.'
WHERE bord_ID = 'B010';

-- 추가적으로 필요할 경우 위와 같은 방식으로 나머지 게시물도 업데이트할 수 있습니다.

UPDATE board
SET board_TITLE = '열한번째 연간 목표 발표',
    board_CONTENTS = '열한번째 게시물에서는 연간 목표 발표 내용을 다룹니다.'
WHERE bord_ID = 'B011';

UPDATE board
SET board_TITLE = '열두번째 내부 감사 보고서',
    board_CONTENTS = '열두번째 게시물에서는 내부 감사에 대한 보고서를 공유합니다.'
WHERE bord_ID = 'B012';

UPDATE board
SET board_TITLE = '열세번째 팀장 회의 결과',
    board_CONTENTS = '열세번째 게시물에서는 팀장 회의에서 나온 결론을 공유합니다.'
WHERE bord_ID = 'B013';

UPDATE board
SET board_TITLE = '열네번째 고객 만족도 조사 결과',
    board_CONTENTS = '열네번째 게시물에서는 고객 만족도 조사 결과를 공유합니다.'
WHERE bord_ID = 'B014';

UPDATE board
SET board_TITLE = '열다섯번째 제품 개발 진척 상황',
    board_CONTENTS = '열다섯번째 게시물에서는 제품 개발 진척 상황을 업데이트합니다.'
WHERE bord_ID = 'B015';

UPDATE board
SET board_TITLE = '열여섯번째 인사 이동 공지',
    board_CONTENTS = '열여섯번째 게시물에서는 인사 이동에 대한 내용을 공지합니다.'
WHERE bord_ID = 'B016';

UPDATE board
SET board_TITLE = '열일곱번째 신상품 출시 일정',
    board_CONTENTS = '열일곱번째 게시물에서는 신상품 출시 일정을 안내합니다.'
WHERE bord_ID = 'B017';

UPDATE board
SET board_TITLE = '열여덟번째 보안 점검 공지',
    board_CONTENTS = '열여덟번째 게시물에서는 보안 점검 일정을 안내합니다.'
WHERE bord_ID = 'B018';

UPDATE board
SET board_TITLE = '열아홉번째 서비스 개선 사항',
    board_CONTENTS = '열아홉번째 게시물에서는 서비스 개선 사항을 공유합니다.'
WHERE bord_ID = 'B019';

UPDATE board
SET board_TITLE = '스무번째 사내 복지 프로그램',
    board_CONTENTS = '스무번째 게시물에서는 새로운 사내 복지 프로그램에 대해 안내합니다.'
WHERE bord_ID = 'B020';

UPDATE board
SET board_TITLE = '게시물 테스트',
    board_CONTENTS = '테스트 게시물입니다. 기능 점검용입니다.'
WHERE bord_ID = 'B021';

UPDATE board
SET board_TITLE = '사내 게시판 규칙 변경 안내',
    board_CONTENTS = '사내 게시판 규칙이 변경되었습니다. 세부 내용을 확인하세요.'
WHERE bord_ID = 'B022';

UPDATE board
SET board_TITLE = '회의록 작성 가이드',
    board_CONTENTS = '회의록 작성 시 필요한 가이드와 양식을 공유합니다.'
WHERE bord_ID = 'B023';

UPDATE board
SET board_TITLE = '홍길동님의 게시물',
    board_CONTENTS = '홍길동님의 개인적인 소식을 공유합니다.'
WHERE bord_ID = 'B024';

commit;

UPDATE board
SET BOARD_TITLE = '프로젝트 회의',
    BOARD_CONTENTS = '프로젝트 회의에서 논의된 내용을 정리합니다.'
WHERE BOARD_ID = 'B001';

UPDATE board
SET BOARD_TITLE = '팀 빌딩 활동',
    BOARD_CONTENTS = '팀 빌딩에서 진행된 활동과 소감을 공유합니다.'
WHERE BOARD_ID = 'B002';

UPDATE board
SET BOARD_TITLE = '교육 프로그램',
    BOARD_CONTENTS = '교육 프로그램에서 배운 점들을 정리합니다.'
WHERE BOARD_ID = 'B003';

UPDATE board
SET BOARD_TITLE = '업무 성과 보고',
    BOARD_CONTENTS = '분기의 업무 성과를 공유합니다.'
WHERE BOARD_ID = 'B004';

UPDATE board
SET BOARD_TITLE = '고객 미팅',
    BOARD_CONTENTS = '고객 미팅에서 논의된 사항을 정리합니다.'
WHERE BOARD_ID = 'B005';

UPDATE board
SET BOARD_TITLE = '제품 출시 계획',
    BOARD_CONTENTS = '제품 출시 계획에 대한 세부 내용을 공유합니다.'
WHERE BOARD_ID = 'B006';

UPDATE board
SET BOARD_TITLE = '개발팀 회의',
    BOARD_CONTENTS = '개발팀 회의에서 논의된 기술적 사항을 공유합니다.'
WHERE BOARD_ID = 'B007';

UPDATE board
SET BOARD_TITLE = '마케팅 전략',
    BOARD_CONTENTS = '마케팅 전략에 대한 논의 결과를 공유합니다.'
WHERE BOARD_ID = 'B008';

UPDATE board
SET BOARD_TITLE = '사내 행사 계획',
    BOARD_CONTENTS = '사내 행사 계획을 공지합니다.'
WHERE BOARD_ID = 'B009';

UPDATE board
SET BOARD_TITLE = '신입사원 교육',
    BOARD_CONTENTS = '신입사원 교육 프로그램에 대한 내용을 공유합니다.'
WHERE BOARD_ID = 'B010';

UPDATE board
SET BOARD_TITLE = '연간 목표 발표',
    BOARD_CONTENTS = '연간 목표 발표 내용을 다룹니다.'
WHERE BOARD_ID = 'B011';

UPDATE board
SET BOARD_TITLE = '내부 감사 보고서',
    BOARD_CONTENTS = '내부 감사에 대한 보고서를 공유합니다.'
WHERE BOARD_ID = 'B012';

UPDATE board
SET BOARD_TITLE = '팀장 회의 결과',
    BOARD_CONTENTS = '팀장 회의에서 나온 결론을 공유합니다.'
WHERE BOARD_ID = 'B013';

UPDATE board
SET BOARD_TITLE = '고객 만족도 조사 결과',
    BOARD_CONTENTS = '고객 만족도 조사 결과를 공유합니다.'
WHERE BOARD_ID = 'B014';

UPDATE board
SET BOARD_TITLE = '제품 개발 진척 상황',
    BOARD_CONTENTS = '제품 개발 진척 상황을 업데이트합니다.'
WHERE BOARD_ID = 'B015';

UPDATE board
SET BOARD_TITLE = '인사 이동 공지',
    BOARD_CONTENTS = '인사 이동에 대한 내용을 공지합니다.'
WHERE BOARD_ID = 'B016';

UPDATE board
SET BOARD_TITLE = '신상품 출시 일정',
    BOARD_CONTENTS = '신상품 출시 일정을 안내합니다.'
WHERE BOARD_ID = 'B017';

UPDATE board
SET BOARD_TITLE = '보안 점검 공지',
    BOARD_CONTENTS = '보안 점검 일정을 안내합니다.'
WHERE BOARD_ID = 'B018';

UPDATE board
SET BOARD_TITLE = '서비스 개선 사항',
    BOARD_CONTENTS = '서비스 개선 사항을 공유합니다.'
WHERE BOARD_ID = 'B019';

UPDATE board
SET BOARD_TITLE = '사내 복지 프로그램',
    BOARD_CONTENTS = '새로운 사내 복지 프로그램에 대해 안내합니다.'
WHERE BOARD_ID = 'B020';

UPDATE board
SET BOARD_TITLE = '게시물 테스트',
    BOARD_CONTENTS = '테스트 게시물입니다. 기능 점검용입니다.'
WHERE BOARD_ID = 'B021';

UPDATE board
SET BOARD_TITLE = '사내 게시판 규칙 변경 안내',
    BOARD_CONTENTS = '사내 게시판 규칙이 변경되었습니다. 세부 내용을 확인하세요.'
WHERE BOARD_ID = 'B022';

UPDATE board
SET BOARD_TITLE = '회의록 작성 가이드',
    BOARD_CONTENTS = '회의록 작성 시 필요한 가이드와 양식을 공유합니다.'
WHERE BOARD_ID = 'B023';

UPDATE board
SET BOARD_TITLE = '홍길동님의 게시물',
    BOARD_CONTENTS = '홍길동님의 개인적인 소식을 공유합니다.'
WHERE BOARD_ID = 'B024'



UPDATE board
SET BOARD_TITLE = '프로젝트 회의',
    BOARD_CONTENTS = '프로젝트 회의에서 논의된 내용을 정리합니다.'
WHERE bord_ID = 'B001';

UPDATE board
SET BOARD_TITLE = '팀 빌딩 활동',
    BOARD_CONTENTS = '팀 빌딩에서 진행된 활동과 소감을 공유합니다.'
WHERE bord_ID = 'B002';

UPDATE board
SET BOARD_TITLE = '교육 프로그램',
    BOARD_CONTENTS = '교육 프로그램에서 배운 점들을 정리합니다.'
WHERE bord_ID = 'B003';

UPDATE board
SET BOARD_TITLE = '업무 성과 보고',
    BOARD_CONTENTS = '분기의 업무 성과를 공유합니다.'
WHERE bord_ID = 'B004';

UPDATE board
SET BOARD_TITLE = '고객 미팅',
    BOARD_CONTENTS = '고객 미팅에서 논의된 사항을 정리합니다.'
WHERE bord_ID = 'B005';

UPDATE board
SET BOARD_TITLE = '제품 출시 계획',
    BOARD_CONTENTS = '제품 출시 계획에 대한 세부 내용을 공유합니다.'
WHERE bord_ID = 'B006';

UPDATE board
SET BOARD_TITLE = '개발팀 회의',
    BOARD_CONTENTS = '개발팀 회의에서 논의된 기술적 사항을 공유합니다.'
WHERE bord_ID = 'B007';

UPDATE board
SET BOARD_TITLE = '마케팅 전략',
    BOARD_CONTENTS = '마케팅 전략에 대한 논의 결과를 공유합니다.'
WHERE bord_ID = 'B008';

UPDATE board
SET BOARD_TITLE = '사내 행사 계획',
    BOARD_CONTENTS = '사내 행사 계획을 공지합니다.'
WHERE bord_ID = 'B009';

UPDATE board
SET BOARD_TITLE = '신입사원 교육',
    BOARD_CONTENTS = '신입사원 교육 프로그램에 대한 내용을 공유합니다.'
WHERE bord_ID = 'B010';

UPDATE board
SET BOARD_TITLE = '연간 목표 발표',
    BOARD_CONTENTS = '연간 목표 발표 내용을 다룹니다.'
WHERE bord_ID = 'B011';

UPDATE board
SET BOARD_TITLE = '내부 감사 보고서',
    BOARD_CONTENTS = '내부 감사에 대한 보고서를 공유합니다.'
WHERE bord_ID = 'B012';

UPDATE board
SET BOARD_TITLE = '팀장 회의 결과',
    BOARD_CONTENTS = '팀장 회의에서 나온 결론을 공유합니다.'
WHERE bord_ID = 'B013';

UPDATE board
SET BOARD_TITLE = '고객 만족도 조사 결과',
    BOARD_CONTENTS = '고객 만족도 조사 결과를 공유합니다.'
WHERE bord_ID = 'B014';

UPDATE board
SET BOARD_TITLE = '제품 개발 진척 상황',
    BOARD_CONTENTS = '제품 개발 진척 상황을 업데이트합니다.'
WHERE bord_ID = 'B015';

UPDATE board
SET BOARD_TITLE = '인사 이동 공지',
    BOARD_CONTENTS = '인사 이동에 대한 내용을 공지합니다.'
WHERE bord_ID = 'B016';

UPDATE board
SET BOARD_TITLE = '신상품 출시 일정',
    BOARD_CONTENTS = '신상품 출시 일정을 안내합니다.'
WHERE bord_ID = 'B017';

UPDATE board
SET BOARD_TITLE = '보안 점검 공지',
    BOARD_CONTENTS = '보안 점검 일정을 안내합니다.'
WHERE bord_ID = 'B018';

UPDATE board
SET BOARD_TITLE = '서비스 개선 사항',
    BOARD_CONTENTS = '서비스 개선 사항을 공유합니다.'
WHERE bord_ID = 'B019';

UPDATE board
SET BOARD_TITLE = '사내 복지 프로그램',
    BOARD_CONTENTS = '새로운 사내 복지 프로그램에 대해 안내합니다.'
WHERE bord_ID = 'B020';

UPDATE board
SET BOARD_TITLE = '게시물 테스트',
    BOARD_CONTENTS = '테스트 게시물입니다. 기능 점검용입니다.'
WHERE bord_ID = 'B021';

UPDATE board
SET BOARD_TITLE = '사내 게시판 규칙 변경 안내',
    BOARD_CONTENTS = '사내 게시판 규칙이 변경되었습니다. 세부 내용을 확인하세요.'
WHERE bord_ID = 'B022';

UPDATE board
SET BOARD_TITLE = '회의록 작성 가이드',
    BOARD_CONTENTS = '회의록 작성 시 필요한 가이드와 양식을 공유합니다.'
WHERE bord_ID = 'B023';

UPDATE board
SET BOARD_TITLE = '홍길동님의 게시물',
    BOARD_CONTENTS = '홍길동님의 개인적인 소식을 공유합니다.'
WHERE bord_ID = 'B024';

commit;