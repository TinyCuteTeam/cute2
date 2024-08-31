select * from client;

select * from stock;

INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00001', 'M001', '밀가루', 500, 450, 'A1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00002', 'M002', '물', 1000, 980, 'B1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00003', 'M003', '소금', 300, 280, 'C1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00004', 'M004', '다진 돼지고기', 700, 690, 'D1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00005', 'M005', '다진 양파', 600, 590, 'L1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00006', 'M006', '대파', 400, 390, 'P1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00007', 'M007', '간장', 800, 780, 'G1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00008', 'M008', '참기름', 200, 190, 'P1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00009', 'M009', '후추', 500, 490, 'K1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00010', 'M010', '마늘', 300, 290, 'E1창고', '부자재');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00011', 'M015', '김치', 100, 90, 'Q1창고', '부자재');

commit;

select * from production_plan;

insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0001', '고기 만두 반죽 및 성형', TO_DATE('2024.09.01', 'YYYY.MM.DD'), 500, '고기 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0002', '김치 만두 반죽 및 성형', TO_DATE('2024.09.02', 'YYYY.MM.DD'), 300, '김치 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0003', '새우 만두 반죽 및 성형', TO_DATE('2024.09.03', 'YYYY.MM.DD'), 400, '새우 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0004', '야채 만두 반죽 및 성형', TO_DATE('2024.09.04', 'YYYY.MM.DD'), 350, '야채 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0005', '고기 만두 포장', TO_DATE('2024.09.05', 'YYYY.MM.DD'), 600, '고기 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0006', '김치 만두 포장', TO_DATE('2024.09.06', 'YYYY.MM.DD'), 450, '김치 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0007', '새우 만두 포장', TO_DATE('2024.09.07', 'YYYY.MM.DD'), 500, '새우 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0008', '야채 만두 포장', TO_DATE('2024.09.08', 'YYYY.MM.DD'), 400, '야채 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0009', '매운 고기 만두 반죽 및 성형', TO_DATE('2024.09.09', 'YYYY.MM.DD'), 550, '매운 고기 만두');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0010', '매운 고기 만두 포장', TO_DATE('2024.09.10', 'YYYY.MM.DD'), 600, '매운 고기 만두');

DELETE FROM production_plan WHERE plan_id = '2024-0009';
DELETE FROM production_plan WHERE plan_id = '2024-0010';

commit;

SELECT * FROM production_plan;

DROP TABLE board;
DROP TABLE users;

select * from board;

INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B001', 'U001', '첫 번째 게시물', '첫 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B002', 'U002', '두 번째 게시물', '두 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B003', 'U003', '세 번째 게시물', '세 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B004', 'U001', '네 번째 게시물', '네 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B005', 'U002', '다섯 번째 게시물', '다섯 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B006', 'U003', '여섯 번째 게시물', '여섯 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B007', 'U004', '일곱 번째 게시물', '일곱 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B008', 'U005', '여덟 번째 게시물', '여덟 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B009', 'U001', '아홉 번째 게시물', '아홉 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B010', 'U002', '열 번째 게시물', '열 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B011', 'U003', '열한 번째 게시물', '열한 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B012', 'U004', '열두 번째 게시물', '열두 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B013', 'U005', '열세 번째 게시물', '열세 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B014', 'U001', '열네 번째 게시물', '열네 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B015', 'U002', '열다섯 번째 게시물', '열다섯 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B016', 'U003', '열여섯 번째 게시물', '열여섯 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B017', 'U004', '열일곱 번째 게시물', '열일곱 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B018', 'U005', '열여덟 번째 게시물', '열여덟 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B019', 'U001', '열아홉 번째 게시물', '열아홉 번째 게시물의 내용입니다.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B020', 'U002', '스무 번째 게시물', '스무 번째 게시물의 내용입니다.', SYSDATE);

commit;

select * from comments;

INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C001', 'B001', 'U002', '첫 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C002', 'B001', 'U003', '두 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C003', 'B002', 'U001', '세 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C004', 'B003', 'U002', '네 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C005', 'B004', 'U003', '다섯 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C006', 'B002', 'U004', '여섯 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C007', 'B002', 'U005', '일곱 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C008', 'B003', 'U001', '여덟 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C009', 'B003', 'U002', '아홉 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C010', 'B004', 'U003', '열 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C011', 'B004', 'U004', '열한 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C012', 'B005', 'U005', '열두 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C013', 'B005', 'U001', '열세 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C014', 'B001', 'U002', '열네 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C015', 'B002', 'U003', '열다섯 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C016', 'B003', 'U004', '열여섯 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C017', 'B004', 'U005', '열일곱 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C018', 'B005', 'U001', '열여덟 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C019', 'B001', 'U002', '열아홉 번째 댓글입니다.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C020', 'B002', 'U003', '스무 번째 댓글입니다.', SYSDATE);

commit;

select * from users;

INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U001', 'password1', 1, '홍길동', 'hong1@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U002', 'password2', 2, '이몽룡', 'lee2@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U003', 'password3', 1, '성춘향', 'sung3@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U004', 'password4', 2, '임꺽정', 'lim4@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U005', 'password5', 1, '장보고', 'jang5@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U006', 'password6', 1, '홍길순', 'hong6@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U007', 'password7', 2, '이몽순', 'lee7@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U008', 'password8', 1, '성춘순', 'sung8@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U009', 'password9', 2, '임꺽순', 'lim9@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U010', 'password10', 1, '장순', 'jang10@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U011', 'password11', 1, '박길동', 'park11@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U012', 'password12', 2, '최몽룡', 'choi12@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U013', 'password13', 1, '김춘향', 'kim13@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U014', 'password14', 2, '유꺽정', 'yoo14@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U015', 'password15', 1, '한보고', 'han15@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U016', 'password16', 1, '김철수', 'kim16@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U017', 'password17', 2, '박영희', 'park17@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U018', 'password18', 1, '이영수', 'lee18@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U019', 'password19', 2, '최지훈', 'choi19@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U020', 'password20', 1, '정민수', 'jung20@example.com');

commit;

select * from account;

INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A001', 'accpass1', 'acc1@example.com', '김철수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A002', 'accpass2', 'acc2@example.com', '박영희');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A003', 'accpass3', 'acc3@example.com', '이영수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A004', 'accpass4', 'acc4@example.com', '최지훈');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A005', 'accpass5', 'acc5@example.com', '정민수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A006', 'accpass6', 'acc6@example.com', '김영수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A007', 'accpass7', 'acc7@example.com', '이철수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A008', 'accpass8', 'acc8@example.com', '박지훈');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A009', 'accpass9', 'acc9@example.com', '최민수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A010', 'accpass10', 'acc10@example.com', '정철수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A011', 'accpass11', 'acc11@example.com', '박수영');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A012', 'accpass12', 'acc12@example.com', '이수민');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A013', 'accpass13', 'acc13@example.com', '김수현');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A014', 'accpass14', 'acc14@example.com', '박준호');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A015', 'accpass15', 'acc15@example.com', '이준호');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A016', 'accpass16', 'acc16@example.com', '최영수');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A017', 'accpass17', 'acc17@example.com', '정수민');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A018', 'accpass18', 'acc18@example.com', '박수현');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A019', 'accpass19', 'acc19@example.com', '이영훈');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A020', 'accpass20', 'acc20@example.com', '최민준');

commit;

select * from mypage;

INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M001', 'U001', '홍길동', '개발팀', '대졸', '010-1234-5678', '팀장', '001', '서울시 강남구', '1990-01-01', '로그1');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M002', 'U002', '이몽룡', '영업팀', '대졸', '010-2345-6789', '사원', '002', '서울시 서초구', '1992-02-02', '로그2');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M003', 'U003', '성춘향', '마케팅팀', '대졸', '010-3456-7890', '과장', '003', '서울시 송파구', '1993-03-03', '로그3');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M004', 'U004', '임꺽정', '기술지원팀', '고졸', '010-4567-8901', '차장', '004', '서울시 강동구', '1994-04-04', '로그4');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M005', 'U005', '장보고', '물류팀', '고졸', '010-5678-9012', '부장', '005', '서울시 양천구', '1995-05-05', '로그5');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M006', 'U006', '홍길순', '개발팀', '대졸', '010-1234-5679', '대리', '006', '서울시 종로구', '1990-06-01', '로그6');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M007', 'U007', '이몽순', '영업팀', '대졸', '010-2345-6780', '사원', '007', '서울시 중구', '1992-07-02', '로그7');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M008', 'U008', '성춘순', '마케팅팀', '대졸', '010-3456-7891', '과장', '008', '서울시 동대문구', '1993-08-03', '로그8');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M009', 'U009', '임꺽순', '기술지원팀', '고졸', '010-4567-8902', '차장', '009', '서울시 성북구', '1994-09-04', '로그9');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M010', 'U010', '장순', '물류팀', '고졸', '010-5678-9013', '부장', '010', '서울시 강북구', '1995-10-05', '로그10');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M011', 'U011', '박길동', '개발팀', '대졸', '010-1234-5678', '팀장', '011', '서울시 노원구', '1990-11-01', '로그11');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M012', 'U012', '최몽룡', '영업팀', '대졸', '010-2345-6789', '사원', '012', '서울시 서대문구', '1992-12-02', '로그12');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M013', 'U013', '김춘향', '마케팅팀', '대졸', '010-3456-7890', '과장', '013', '서울시 마포구', '1993-01-03', '로그13');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M014', 'U014', '유꺽정', '기술지원팀', '고졸', '010-4567-8901', '차장', '014', '서울시 용산구', '1994-02-04', '로그14');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M015', 'U015', '한보고', '물류팀', '고졸', '010-5678-9012', '부장', '015', '서울시 은평구', '1995-03-05', '로그15');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M016', 'U016', '김철수', '개발팀', '대졸', '010-1234-5676', '대리', '016', '서울시 관악구', '1990-04-01', '로그16');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M017', 'U017', '박영희', '영업팀', '대졸', '010-2345-6787', '사원', '017', '서울시 동작구', '1992-05-02', '로그17');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M018', 'U018', '이영수', '마케팅팀', '대졸', '010-3456-7898', '과장', '018', '서울시 금천구', '1993-06-03', '로그18');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M019', 'U019', '최지훈', '기술지원팀', '고졸', '010-4567-8909', '차장', '019', '서울시 양천구', '1994-07-04', '로그19');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M020', 'U020', '정민수', '물류팀', '고졸', '010-5678-9010', '부장', '020', '서울시 강서구', '1995-08-05', '로그20');

commit;

select * from item;

INSERT INTO item (item_code, item_name) VALUES ('I001', '만두피');
INSERT INTO item (item_code, item_name) VALUES ('I002', '고기소');
INSERT INTO item (item_code, item_name) VALUES ('I003', '김치소');
INSERT INTO item (item_code, item_name) VALUES ('I004', '새우');
INSERT INTO item (item_code, item_name) VALUES ('I005', '쑥갓');
INSERT INTO item (item_code, item_name) VALUES ('I006', '밀가루');
INSERT INTO item (item_code, item_name) VALUES ('I007', '양파');
INSERT INTO item (item_code, item_name) VALUES ('I008', '고추');
INSERT INTO item (item_code, item_name) VALUES ('I009', '감자');
INSERT INTO item (item_code, item_name) VALUES ('I010', '당근');
INSERT INTO item (item_code, item_name) VALUES ('I011', '생강');
INSERT INTO item (item_code, item_name) VALUES ('I012', '파');
INSERT INTO item (item_code, item_name) VALUES ('I013', '고구마');
INSERT INTO item (item_code, item_name) VALUES ('I014', '애호박');
INSERT INTO item (item_code, item_name) VALUES ('I015', '가지');
INSERT INTO item (item_code, item_name) VALUES ('I016', '돼지고기');
INSERT INTO item (item_code, item_name) VALUES ('I017', '소고기');
INSERT INTO item (item_code, item_name) VALUES ('I018', '닭고기');
INSERT INTO item (item_code, item_name) VALUES ('I019', '어묵');
INSERT INTO item (item_code, item_name) VALUES ('I020', '두부');

commit;

select * from bom;

INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM001', 'I001', 10, '기본', '개');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM002', 'I002', 5, '기본', '개');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM003', 'I003', 7, '기본', '개');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM004', 'I004', 3, '기본', '개');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM005', 'I005', 8, '기본', '개');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM006', 'I006', 20, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM007', 'I007', 15, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM008', 'I008', 10, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM009', 'I009', 25, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM010', 'I010', 30, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM011', 'I011', 5, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM012', 'I012', 8, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM013', 'I013', 12, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM014', 'I014', 7, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM015', 'I015', 9, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM016', 'I016', 10, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM017', 'I017', 15, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM018', 'I018', 18, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM019', 'I019', 20, '기본', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM020', 'I020', 22, '기본', 'kg');

commit;

select * from client;

INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C001', '주식회사 하나', '김사장', '02-123-4567', '서울시 종로구', 'hana@example.com', '123-45-67890');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C002', '주식회사 두리', '이사장', '02-234-5678', '서울시 강남구', 'duri@example.com', '234-56-78901');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C003', '주식회사 세울', '박사장', '02-345-6789', '서울시 서초구', 'seul@example.com', '345-67-89012');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C004', '주식회사 넷마을', '최사장', '02-456-7890', '서울시 송파구', 'net@example.com', '456-78-90123');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C005', '주식회사 다섯', '정사장', '02-567-8901', '서울시 강동구', 'five@example.com', '567-89-01234');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C006', '주식회사 여섯', '김사장', '02-678-9012', '서울시 중구', 'six@example.com', '678-90-12345');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C007', '주식회사 일곱', '박사장', '02-789-0123', '서울시 용산구', 'seven@example.com', '789-01-23456');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C008', '주식회사 여덟', '이사장', '02-890-1234', '서울시 서대문구', 'eight@example.com', '890-12-34567');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C009', '주식회사 아홉', '최사장', '02-901-2345', '서울시 마포구', 'nine@example.com', '901-23-45678');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C010', '주식회사 열', '정사장', '02-012-3456', '서울시 은평구', 'ten@example.com', '012-34-56789');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C011', '주식회사 열하나', '김사장', '02-123-4567', '서울시 종로구', 'eleven@example.com', '123-45-67890');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C012', '주식회사 열둘', '박사장', '02-234-5678', '서울시 강남구', 'twelve@example.com', '234-56-78901');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C013', '주식회사 열셋', '이사장', '02-345-6789', '서울시 서초구', 'thirteen@example.com', '345-67-89012');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C014', '주식회사 열넷', '최사장', '02-456-7890', '서울시 송파구', 'fourteen@example.com', '456-78-90123');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C015', '주식회사 열다섯', '정사장', '02-567-8901', '서울시 강동구', 'fifteen@example.com', '567-89-01234');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C016', '주식회사 열여섯', '김사장', '02-678-9012', '서울시 강서구', 'sixteen@example.com', '678-90-12345');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C017', '주식회사 열일곱', '박사장', '02-789-0123', '서울시 영등포구', 'seventeen@example.com', '789-01-23456');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C018', '주식회사 열여덟', '이사장', '02-890-1234', '서울시 관악구', 'eighteen@example.com', '890-12-34567');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C019', '주식회사 열아홉', '최사장', '02-901-2345', '서울시 동작구', 'nineteen@example.com', '901-23-45678');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C020', '주식회사 스물', '정사장', '02-012-3456', '서울시 금천구', 'twenty@example.com', '012-34-56789');

commit;

select * from error;

INSERT INTO error (error_id, error_name, error_contents) VALUES ('E001', '재료 부족', '재료가 부족하여 생산이 불가능합니다.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E002', '기계 고장', '기계 고장으로 생산이 중단되었습니다.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E003', '포장 오류', '포장 과정에서 오류가 발생했습니다.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E004', '온도 불량', '설정된 온도 범위를 초과했습니다.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E005', '작업 지연', '작업이 지연되고 있습니다.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E006', '냉동고 고장', '냉동고 고장으로 인해 만두 보관이 불가능함.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E007', '위생 불량', '위생 문제가 발견되어 생산이 중단됨.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E008', '모양 불량', '만두의 모양이 기준에 맞지 않음.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E009', '기계 오작동', '기계 오작동으로 인해 만두 속이 제대로 채워지지 않음.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E010', '재고 관리 오류', '재고 관리 오류로 인해 재료가 부족함.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E011', '물 공급 중단', '물 공급 중단으로 인해 반죽을 만들 수 없음.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E012', '배송 트럭 고장', '배송 트럭이 고장나서 제품을 출하하지 못함.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E013', '포장재 부족', '포장재가 부족하여 포장 작업이 중단됨.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E014', '냉각 시스템 고장', '냉각 시스템 고장으로 인해 만두가 적절하게 냉동되지 않음.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E015', '인력 부족', '작업 인력 부족으로 생산 라인이 지연됨.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E016', '공정 오류', '생산 공정 오류로 인해 만두의 크기와 모양이 일관되지 않음.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E017', '반죽 불량', '반죽의 농도가 맞지 않아 만두 제조가 어려움.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E018', '충전재 부족', '만두 속 재료가 부족하여 생산이 중단됨.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E019', '포장 오류', '포장 기계 오류로 인해 만두가 제대로 포장되지 않음.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E020', '기계 과열', '기계 과열로 인해 생산 라인이 중지됨.');

commit;

select * from order_info;

INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O001', 'C001', '2024-08-20', '2024-08-25', 'A', 100, '100000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O002', 'C002', '2024-08-21', '2024-08-26', 'B', 200, '200000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O003', 'C003', '2024-08-22', '2024-08-27', 'A', 150, '150000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O004', 'C004', '2024-08-23', '2024-08-28', 'C', 300, '300000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O005', 'C005', '2024-08-24', '2024-08-29', 'B', 250, '250000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O006', 'C006', '2024-08-25', '2024-08-30', 'A', 150, '150000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O007', 'C007', '2024-08-26', '2024-09-01', 'B', 200, '200000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O008', 'C008', '2024-08-27', '2024-09-02', 'C', 250, '250000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O009', 'C009', '2024-08-28', '2024-09-03', 'A', 300, '300000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O010', 'C010', '2024-08-29', '2024-09-04', 'B', 350, '350000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O011', 'C011', '2024-08-30', '2024-09-05', 'C', 400, '400000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O012', 'C012', '2024-08-31', '2024-09-06', 'A', 450, '450000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O013', 'C013', '2024-09-01', '2024-09-07', 'B', 500, '500000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O014', 'C014', '2024-09-02', '2024-09-08', 'C', 550, '550000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O015', 'C015', '2024-09-03', '2024-09-09', 'A', 600, '600000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O016', 'C016', '2024-09-04', '2024-09-10', 'B', 650, '650000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O017', 'C017', '2024-09-05', '2024-09-11', 'C', 700, '700000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O018', 'C018', '2024-09-06', '2024-09-12', 'A', 750, '750000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O019', 'C019', '2024-09-07', '2024-09-13', 'B', 800, '800000');
INSERT INTO order_info (order_id, client_id, order_date, order_enddate, order_box, order_count, order_price) 
VALUES ('O020', 'C020', '2024-09-08', '2024-09-14', 'C', 850, '850000');

commit;

select * from production_plan;

INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P001', '제품 생산 계획 1', SYSDATE, 1000, '만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P002', '제품 생산 계획 2', SYSDATE, 1500, '김치만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P003', '제품 생산 계획 3', SYSDATE, 1200, '새우만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P004', '제품 생산 계획 4', SYSDATE, 1800, '고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P005', '제품 생산 계획 5', SYSDATE, 2000, '채소만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P006', '제품 생산 계획 6', SYSDATE, 2500, '김치만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P007', '제품 생산 계획 7', SYSDATE, 3000, '고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P008', '제품 생산 계획 8', SYSDATE, 3500, '새우만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P009', '제품 생산 계획 9', SYSDATE, 4000, '만두피 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P010', '제품 생산 계획 10', SYSDATE, 4500, '쑥갓만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P011', '제품 생산 계획 11', SYSDATE, 5000, '양파만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P012', '제품 생산 계획 12', SYSDATE, 5500, '고추만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P013', '제품 생산 계획 13', SYSDATE, 6000, '당근만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P014', '제품 생산 계획 14', SYSDATE, 6500, '감자만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P015', '제품 생산 계획 15', SYSDATE, 7000, '소고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P016', '제품 생산 계획 16', SYSDATE, 7500, '돼지고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P017', '제품 생산 계획 17', SYSDATE, 8000, '닭고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P018', '제품 생산 계획 18', SYSDATE, 8500, '어묵만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P019', '제품 생산 계획 19', SYSDATE, 9000, '두부만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P020', '제품 생산 계획 20', SYSDATE, 9500, '생강만두 생산');

commit;

select * from work;

INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W001', 'U001', 'P001', SYSDATE, SYSDATE+1, '작업 1', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W002', 'U002', 'P002', SYSDATE, SYSDATE+2, '작업 2', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W003', 'U003', 'P003', SYSDATE, SYSDATE+3, '작업 3', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W004', 'U004', 'P004', SYSDATE, SYSDATE+4, '작업 4', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W005', 'U005', 'P005', SYSDATE, SYSDATE+5, '작업 5', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W006', 'U006', 'P006', SYSDATE, SYSDATE+1, '작업 6', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W007', 'U007', 'P007', SYSDATE, SYSDATE+2, '작업 7', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W008', 'U008', 'P008', SYSDATE, SYSDATE+3, '작업 8', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W009', 'U009', 'P009', SYSDATE, SYSDATE+4, '작업 9', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W010', 'U010', 'P010', SYSDATE, SYSDATE+5, '작업 10', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W011', 'U011', 'P011', SYSDATE, SYSDATE+6, '작업 11', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W012', 'U012', 'P012', SYSDATE, SYSDATE+7, '작업 12', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W013', 'U013', 'P013', SYSDATE, SYSDATE+8, '작업 13', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W014', 'U014', 'P014', SYSDATE, SYSDATE+9, '작업 14', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W015', 'U015', 'P015', SYSDATE, SYSDATE+10, '작업 15', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W016', 'U016', 'P016', SYSDATE, SYSDATE+11, '작업 16', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W017', 'U017', 'P017', SYSDATE, SYSDATE+12, '작업 17', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W018', 'U018', 'P018', SYSDATE, SYSDATE+13, '작업 18', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W019', 'U019', 'P019', SYSDATE, SYSDATE+14, '작업 19', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W020', 'U020', 'P020', SYSDATE, SYSDATE+15, '작업 20', '작업 중');

commit;

select * from stock;

INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S001', 'I001', '만두피 재고', 1000, 500, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S002', 'I002', '고기소 재고', 800, 300, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S003', 'I003', '김치소 재고', 700, 400, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S004', 'I004', '새우 재고', 600, 200, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S005', 'I005', '쑥갓 재고', 500, 100, '광주 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S006', 'I006', '밀가루 재고', 2000, 1000, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S007', 'I007', '양파 재고', 1500, 700, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S008', 'I008', '고추 재고', 1200, 500, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S009', 'I009', '감자 재고', 2500, 1200, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S010', 'I010', '당근 재고', 3000, 1500, '광주 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S011', 'I011', '생강 재고', 500, 200, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S012', 'I012', '파 재고', 800, 300, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S013', 'I013', '고구마 재고', 1200, 600, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S014', 'I014', '애호박 재고', 700, 400, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S015', 'I015', '가지 재고', 900, 500, '광주 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S016', 'I016', '돼지고기 재고', 1000, 600, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S017', 'I017', '소고기 재고', 1500, 800, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S018', 'I018', '닭고기 재고', 1800, 900, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S019', 'I019', '어묵 재고', 2000, 1000, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S020', 'I020', '두부 재고', 2200, 1100, '광주 창고', '재료');

commit;

select * from faulty;

INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F001', 'I001', 'E001', 'W001', '5');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F002', 'I002', 'E002', 'W002', '3');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F003', 'I003', 'E003', 'W003', '7');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F004', 'I004', 'E004', 'W004', '2');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F005', 'I005', 'E005', 'W005', '6');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F006', 'I006', 'E006', 'W006', '3');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F007', 'I007', 'E007', 'W007', '5');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F008', 'I008', 'E008', 'W008', '7');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F009', 'I009', 'E009', 'W009', '2');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F010', 'I010', 'E010', 'W010', '6');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F011', 'I011', 'E011', 'W011', '4');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F012', 'I012', 'E012', 'W012', '8');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F013', 'I013', 'E013', 'W013', '10');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F014', 'I014', 'E014', 'W014', '12');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F015', 'I015', 'E015', 'W015', '14');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F016', 'I016', 'E016', 'W016', '16');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F017', 'I017', 'E017', 'W017', '18');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F018', 'I018', 'E018', 'W018', '20');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F019', 'I019', 'E019', 'W019', '22');
INSERT INTO faulty (faulty_id, item_code, error_id, work_id, faulty_count) 
VALUES ('F020', 'I020', 'E020', 'W020', '24');

commit;

select * from emp2;

select * from bom;

select * from item;

ALTER TABLE bom DROP PRIMARY KEY;

ALTER TABLE bom ADD PRIMARY KEY (bom_id, item_code);

select * from production_plan;

delete from production_plan;

ALTER TABLE production_plan ADD end_date DATE;

DROP TABLE production_plan;

CREATE TABLE production_plan (  
    plan_id varchar2(100) NOT NULL,
    plan_contents varchar2(999),
    plan_date date,
    plan_end_date date,
    plan_count number, 
    plan_name varchar2(999),
    CONSTRAINT PK_PLAN PRIMARY KEY (plan_id)
);

INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P001', '제품 생산 계획 1', SYSDATE, SYSDATE + 7, 1000, '만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P002', '제품 생산 계획 2', SYSDATE, SYSDATE + 7, 1500, '김치만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P003', '제품 생산 계획 3', SYSDATE, SYSDATE + 7, 1200, '새우만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P004', '제품 생산 계획 4', SYSDATE, SYSDATE + 7, 1800, '고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P005', '제품 생산 계획 5', SYSDATE, SYSDATE + 7, 2000, '채소만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P006', '제품 생산 계획 6', SYSDATE, SYSDATE + 7, 2500, '김치만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P007', '제품 생산 계획 7', SYSDATE, SYSDATE + 7, 3000, '고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P008', '제품 생산 계획 8', SYSDATE, SYSDATE + 7, 3500, '새우만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P009', '제품 생산 계획 9', SYSDATE, SYSDATE + 7, 4000, '만두피 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P010', '제품 생산 계획 10', SYSDATE, SYSDATE + 7, 4500, '쑥갓만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P011', '제품 생산 계획 11', SYSDATE, SYSDATE + 7, 5000, '양파만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P012', '제품 생산 계획 12', SYSDATE, SYSDATE + 7, 5500, '고추만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P013', '제품 생산 계획 13', SYSDATE, SYSDATE + 7, 6000, '당근만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P014', '제품 생산 계획 14', SYSDATE, SYSDATE + 7, 6500, '감자만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P015', '제품 생산 계획 15', SYSDATE, SYSDATE + 7, 7000, '소고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P016', '제품 생산 계획 16', SYSDATE, SYSDATE + 7, 7500, '돼지고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P017', '제품 생산 계획 17', SYSDATE, SYSDATE + 7, 8000, '닭고기만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P018', '제품 생산 계획 18', SYSDATE, SYSDATE + 7, 8500, '어묵만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P019', '제품 생산 계획 19', SYSDATE, SYSDATE + 7, 9000, '두부만두 생산');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P020', '제품 생산 계획 20', SYSDATE, SYSDATE + 7, 9500, '생강만두 생산');

commit;

select * from work;

DROP TABLE work;

CREATE TABLE work (
    work_id varchar2(100) NOT NULL,
    user_id varchar2(100) NOT NULL,
    plan_id varchar2(100) NOT NULL,
    item_code varchar2(100) NOT NULL,
    
    work_write date,
    work_endate date,
    work_name varchar2(999),
    work_do varchar2(999),
    CONSTRAINT PK_WORK PRIMARY KEY (work_id)
);

INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W001', 'U001', 'P001', 'I001', SYSDATE, SYSDATE+1, '작업 1', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W002', 'U002', 'P002', 'I002', SYSDATE, SYSDATE+2, '작업 2', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W003', 'U003', 'P003', 'I003', SYSDATE, SYSDATE+3, '작업 3', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W004', 'U004', 'P004', 'I004', SYSDATE, SYSDATE+4, '작업 4', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W005', 'U005', 'P005', 'I005', SYSDATE, SYSDATE+5, '작업 5', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W006', 'U006', 'P006', 'I006', SYSDATE, SYSDATE+1, '작업 6', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W007', 'U007', 'P007', 'I007', SYSDATE, SYSDATE+2, '작업 7', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W008', 'U008', 'P008', 'I008', SYSDATE, SYSDATE+3, '작업 8', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W009', 'U009', 'P009', 'I009', SYSDATE, SYSDATE+4, '작업 9', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W010', 'U010', 'P010', 'I010', SYSDATE, SYSDATE+5, '작업 10', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W011', 'U011', 'P011', 'I011', SYSDATE, SYSDATE+6, '작업 11', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W012', 'U012', 'P012', 'I012', SYSDATE, SYSDATE+7, '작업 12', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W013', 'U013', 'P013', 'I013', SYSDATE, SYSDATE+8, '작업 13', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W014', 'U014', 'P014', 'I014', SYSDATE, SYSDATE+9, '작업 14', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W015', 'U015', 'P015', 'I015', SYSDATE, SYSDATE+10, '작업 15', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W016', 'U016', 'P016', 'I016', SYSDATE, SYSDATE+11, '작업 16', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W017', 'U017', 'P017', 'I017', SYSDATE, SYSDATE+12, '작업 17', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W018', 'U018', 'P018', 'I018', SYSDATE, SYSDATE+13, '작업 18', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W019', 'U019', 'P019', 'I019', SYSDATE, SYSDATE+14, '작업 19', '작업 중');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W020', 'U020', 'P020', 'I020', SYSDATE, SYSDATE+15, '작업 20', '작업 중');

ALTER TABLE work ADD CONSTRAINT fk_item_code FOREIGN KEY (item_code) REFERENCES item(item_code);

commit;

select * from stock;

DROP TABLE stock;

CREATE TABLE stock (
    stock_id varchar2(100) NOT NULL,
    item_code varchar2(100) NOT NULL,
    stock_name varchar2(999),
    stock_count number,  
    stock_location varchar2(999),
    stock_sort varchar2(999),
    CONSTRAINT PK_STOCK PRIMARY KEY (stock_id)
);

INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S001', 'I001', '만두피 재고', 1000, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S002', 'I002', '고기소 재고', 800, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S003', 'I003', '김치소 재고', 700, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S004', 'I004', '새우 재고', 600, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S005', 'I005', '쑥갓 재고', 500, '광주 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S006', 'I006', '밀가루 재고', 2000, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S007', 'I007', '양파 재고', 1500, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S008', 'I008', '고추 재고', 1200, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S009', 'I009', '감자 재고', 2500, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S010', 'I010', '당근 재고', 3000, '광주 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S011', 'I011', '생강 재고', 500, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S012', 'I012', '파 재고', 800, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S013', 'I013', '고구마 재고', 1200, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S014', 'I014', '애호박 재고', 700, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S015', 'I015', '가지 재고', 900, '광주 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S016', 'I016', '돼지고기 재고', 1000, '서울 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S017', 'I017', '소고기 재고', 1500, '부산 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S018', 'I018', '닭고기 재고', 1800, '인천 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S019', 'I019', '어묵 재고', 2000, '대전 창고', '재료');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S020', 'I020', '두부 재고', 2200, '광주 창고', '재료');

commit;

CREATE TABLE todo (
    todo_id NUMBER NOT NULL,
    user_id varchar2(100) NOT NULL,
    todo_date DATE,
    todo_title VARCHAR2(999),  
    todo_contents VARCHAR2(999),
    CONSTRAINT PK_todo PRIMARY KEY (todo_id)
);

ALTER TABLE todo ADD CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);

select * from users;

select * from todo;

INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (1, 'U001', TO_DATE('2024-08-01', 'YYYY-MM-DD'), '회의 준비', '다음 주 회의 자료 준비하기');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (2, 'U002', TO_DATE('2024-08-02', 'YYYY-MM-DD'), '보고서 작성', '월간 실적 보고서 작성하기');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (3, 'U003', TO_DATE('2024-08-03', 'YYYY-MM-DD'), '시장 조사', '신제품 출시를 위한 시장 조사');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (4, 'U004', TO_DATE('2024-08-04', 'YYYY-MM-DD'), '팀 회의', '팀원들과 주간 업무 점검 회의');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (5, 'U005', TO_DATE('2024-08-05', 'YYYY-MM-DD'), '고객 미팅', 'VIP 고객과의 미팅');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (6, 'U006', TO_DATE('2024-08-06', 'YYYY-MM-DD'), '제품 리뷰', '신제품 리뷰와 피드백 수집');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (7, 'U007', TO_DATE('2024-08-07', 'YYYY-MM-DD'), '예산 계획', '다음 분기 예산 계획 세우기');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (8, 'U008', TO_DATE('2024-08-08', 'YYYY-MM-DD'), '교육 세션', '직원 대상 교육 세션 준비');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (9, 'U009', TO_DATE('2024-08-09', 'YYYY-MM-DD'), '프로젝트 기획', '신규 프로젝트 기획 및 일정 수립');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (10, 'U010', TO_DATE('2024-08-10', 'YYYY-MM-DD'), '데이터 분석', '판매 데이터 분석 및 보고');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (11, 'U011', TO_DATE('2024-08-11', 'YYYY-MM-DD'), '광고 캠페인', '새로운 광고 캠페인 기획');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (12, 'U012', TO_DATE('2024-08-12', 'YYYY-MM-DD'), '파트너 미팅', '협력사와의 정기 미팅');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (13, 'U013', TO_DATE('2024-08-13', 'YYYY-MM-DD'), '이벤트 준비', '고객 이벤트 준비 및 홍보');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (14, 'U014', TO_DATE('2024-08-14', 'YYYY-MM-DD'), '시장 분석', '경쟁사 시장 분석');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (15, 'U015', TO_DATE('2024-08-15', 'YYYY-MM-DD'), '팀 빌딩', '팀 빌딩 활동 계획');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (16, 'U016', TO_DATE('2024-08-16', 'YYYY-MM-DD'), '고객 설문조사', '고객 만족도 설문 조사');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (17, 'U017', TO_DATE('2024-08-17', 'YYYY-MM-DD'), '제품 개선', '제품 개선 아이디어 회의');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (18, 'U018', TO_DATE('2024-08-18', 'YYYY-MM-DD'), '직원 평가', '분기별 직원 평가 준비');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (19, 'U019', TO_DATE('2024-08-19', 'YYYY-MM-DD'), '고객 지원', '고객 지원 프로세스 개선');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (20, 'U020', TO_DATE('2024-08-20', 'YYYY-MM-DD'), '신입 교육', '신입 직원 교육 프로그램');

commit;