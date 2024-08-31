select * from client;

select * from stock;

INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00001', 'M001', '�а���', 500, 450, 'A1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00002', 'M002', '��', 1000, 980, 'B1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00003', 'M003', '�ұ�', 300, 280, 'C1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00004', 'M004', '���� �������', 700, 690, 'D1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00005', 'M005', '���� ����', 600, 590, 'L1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00006', 'M006', '����', 400, 390, 'P1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00007', 'M007', '����', 800, 780, 'G1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00008', 'M008', '���⸧', 200, 190, 'P1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00009', 'M009', '����', 500, 490, 'K1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00010', 'M010', '����', 300, 290, 'E1â��', '������');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) VALUES 
('S00011', 'M015', '��ġ', 100, 90, 'Q1â��', '������');

commit;

select * from production_plan;

insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0001', '��� ���� ���� �� ����', TO_DATE('2024.09.01', 'YYYY.MM.DD'), 500, '��� ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0002', '��ġ ���� ���� �� ����', TO_DATE('2024.09.02', 'YYYY.MM.DD'), 300, '��ġ ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0003', '���� ���� ���� �� ����', TO_DATE('2024.09.03', 'YYYY.MM.DD'), 400, '���� ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0004', '��ä ���� ���� �� ����', TO_DATE('2024.09.04', 'YYYY.MM.DD'), 350, '��ä ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0005', '��� ���� ����', TO_DATE('2024.09.05', 'YYYY.MM.DD'), 600, '��� ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0006', '��ġ ���� ����', TO_DATE('2024.09.06', 'YYYY.MM.DD'), 450, '��ġ ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0007', '���� ���� ����', TO_DATE('2024.09.07', 'YYYY.MM.DD'), 500, '���� ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0008', '��ä ���� ����', TO_DATE('2024.09.08', 'YYYY.MM.DD'), 400, '��ä ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0009', '�ſ� ��� ���� ���� �� ����', TO_DATE('2024.09.09', 'YYYY.MM.DD'), 550, '�ſ� ��� ����');
insert into production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) values
('2024-0010', '�ſ� ��� ���� ����', TO_DATE('2024.09.10', 'YYYY.MM.DD'), 600, '�ſ� ��� ����');

DELETE FROM production_plan WHERE plan_id = '2024-0009';
DELETE FROM production_plan WHERE plan_id = '2024-0010';

commit;

SELECT * FROM production_plan;

DROP TABLE board;
DROP TABLE users;

select * from board;

INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B001', 'U001', 'ù ��° �Խù�', 'ù ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B002', 'U002', '�� ��° �Խù�', '�� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B003', 'U003', '�� ��° �Խù�', '�� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B004', 'U001', '�� ��° �Խù�', '�� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B005', 'U002', '�ټ� ��° �Խù�', '�ټ� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B006', 'U003', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B007', 'U004', '�ϰ� ��° �Խù�', '�ϰ� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B008', 'U005', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B009', 'U001', '��ȩ ��° �Խù�', '��ȩ ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B010', 'U002', '�� ��° �Խù�', '�� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B011', 'U003', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B012', 'U004', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B013', 'U005', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B014', 'U001', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B015', 'U002', '���ټ� ��° �Խù�', '���ټ� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B016', 'U003', '������ ��° �Խù�', '������ ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B017', 'U004', '���ϰ� ��° �Խù�', '���ϰ� ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B018', 'U005', '������ ��° �Խù�', '������ ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B019', 'U001', '����ȩ ��° �Խù�', '����ȩ ��° �Խù��� �����Դϴ�.', SYSDATE);
INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) VALUES ('B020', 'U002', '���� ��° �Խù�', '���� ��° �Խù��� �����Դϴ�.', SYSDATE);

commit;

select * from comments;

INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C001', 'B001', 'U002', 'ù ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C002', 'B001', 'U003', '�� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C003', 'B002', 'U001', '�� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C004', 'B003', 'U002', '�� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C005', 'B004', 'U003', '�ټ� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C006', 'B002', 'U004', '���� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C007', 'B002', 'U005', '�ϰ� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C008', 'B003', 'U001', '���� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C009', 'B003', 'U002', '��ȩ ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C010', 'B004', 'U003', '�� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C011', 'B004', 'U004', '���� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C012', 'B005', 'U005', '���� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C013', 'B005', 'U001', '���� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C014', 'B001', 'U002', '���� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C015', 'B002', 'U003', '���ټ� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C016', 'B003', 'U004', '������ ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C017', 'B004', 'U005', '���ϰ� ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C018', 'B005', 'U001', '������ ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C019', 'B001', 'U002', '����ȩ ��° ����Դϴ�.', SYSDATE);
INSERT INTO comments (comment_id, bord_id, user_id, comment_contents, comment_date) VALUES ('C020', 'B002', 'U003', '���� ��° ����Դϴ�.', SYSDATE);

commit;

select * from users;

INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U001', 'password1', 1, 'ȫ�浿', 'hong1@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U002', 'password2', 2, '�̸���', 'lee2@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U003', 'password3', 1, '������', 'sung3@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U004', 'password4', 2, '�Ӳ���', 'lim4@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U005', 'password5', 1, '�庸��', 'jang5@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U006', 'password6', 1, 'ȫ���', 'hong6@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U007', 'password7', 2, '�̸���', 'lee7@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U008', 'password8', 1, '�����', 'sung8@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U009', 'password9', 2, '�Ӳ���', 'lim9@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U010', 'password10', 1, '���', 'jang10@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U011', 'password11', 1, '�ڱ浿', 'park11@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U012', 'password12', 2, '�ָ���', 'choi12@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U013', 'password13', 1, '������', 'kim13@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U014', 'password14', 2, '������', 'yoo14@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U015', 'password15', 1, '�Ѻ���', 'han15@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U016', 'password16', 1, '��ö��', 'kim16@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U017', 'password17', 2, '�ڿ���', 'park17@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U018', 'password18', 1, '�̿���', 'lee18@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U019', 'password19', 2, '������', 'choi19@example.com');
INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES ('U020', 'password20', 1, '���μ�', 'jung20@example.com');

commit;

select * from account;

INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A001', 'accpass1', 'acc1@example.com', '��ö��');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A002', 'accpass2', 'acc2@example.com', '�ڿ���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A003', 'accpass3', 'acc3@example.com', '�̿���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A004', 'accpass4', 'acc4@example.com', '������');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A005', 'accpass5', 'acc5@example.com', '���μ�');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A006', 'accpass6', 'acc6@example.com', '�迵��');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A007', 'accpass7', 'acc7@example.com', '��ö��');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A008', 'accpass8', 'acc8@example.com', '������');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A009', 'accpass9', 'acc9@example.com', '�ֹμ�');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A010', 'accpass10', 'acc10@example.com', '��ö��');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A011', 'accpass11', 'acc11@example.com', '�ڼ���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A012', 'accpass12', 'acc12@example.com', '�̼���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A013', 'accpass13', 'acc13@example.com', '�����');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A014', 'accpass14', 'acc14@example.com', '����ȣ');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A015', 'accpass15', 'acc15@example.com', '����ȣ');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A016', 'accpass16', 'acc16@example.com', '�ֿ���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A017', 'accpass17', 'acc17@example.com', '������');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A018', 'accpass18', 'acc18@example.com', '�ڼ���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A019', 'accpass19', 'acc19@example.com', '�̿���');
INSERT INTO account (account_id, account_pw, account_email, account_name) VALUES ('A020', 'accpass20', 'acc20@example.com', '�ֹ���');

commit;

select * from mypage;

INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M001', 'U001', 'ȫ�浿', '������', '����', '010-1234-5678', '����', '001', '����� ������', '1990-01-01', '�α�1');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M002', 'U002', '�̸���', '������', '����', '010-2345-6789', '���', '002', '����� ���ʱ�', '1992-02-02', '�α�2');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M003', 'U003', '������', '��������', '����', '010-3456-7890', '����', '003', '����� ���ı�', '1993-03-03', '�α�3');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M004', 'U004', '�Ӳ���', '���������', '����', '010-4567-8901', '����', '004', '����� ������', '1994-04-04', '�α�4');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M005', 'U005', '�庸��', '������', '����', '010-5678-9012', '����', '005', '����� ��õ��', '1995-05-05', '�α�5');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M006', 'U006', 'ȫ���', '������', '����', '010-1234-5679', '�븮', '006', '����� ���α�', '1990-06-01', '�α�6');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M007', 'U007', '�̸���', '������', '����', '010-2345-6780', '���', '007', '����� �߱�', '1992-07-02', '�α�7');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M008', 'U008', '�����', '��������', '����', '010-3456-7891', '����', '008', '����� ���빮��', '1993-08-03', '�α�8');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M009', 'U009', '�Ӳ���', '���������', '����', '010-4567-8902', '����', '009', '����� ���ϱ�', '1994-09-04', '�α�9');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M010', 'U010', '���', '������', '����', '010-5678-9013', '����', '010', '����� ���ϱ�', '1995-10-05', '�α�10');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M011', 'U011', '�ڱ浿', '������', '����', '010-1234-5678', '����', '011', '����� �����', '1990-11-01', '�α�11');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M012', 'U012', '�ָ���', '������', '����', '010-2345-6789', '���', '012', '����� ���빮��', '1992-12-02', '�α�12');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M013', 'U013', '������', '��������', '����', '010-3456-7890', '����', '013', '����� ������', '1993-01-03', '�α�13');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M014', 'U014', '������', '���������', '����', '010-4567-8901', '����', '014', '����� ��걸', '1994-02-04', '�α�14');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M015', 'U015', '�Ѻ���', '������', '����', '010-5678-9012', '����', '015', '����� ����', '1995-03-05', '�α�15');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M016', 'U016', '��ö��', '������', '����', '010-1234-5676', '�븮', '016', '����� ���Ǳ�', '1990-04-01', '�α�16');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M017', 'U017', '�ڿ���', '������', '����', '010-2345-6787', '���', '017', '����� ���۱�', '1992-05-02', '�α�17');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M018', 'U018', '�̿���', '��������', '����', '010-3456-7898', '����', '018', '����� ��õ��', '1993-06-03', '�α�18');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M019', 'U019', '������', '���������', '����', '010-4567-8909', '����', '019', '����� ��õ��', '1994-07-04', '�α�19');
INSERT INTO mypage (mypage_id, user_id, mypage_name, mypage_affiliation, mypage_intel, mypage_phone, mypage_position, mypage_mainnum, mypage_address, mypage_birth, mypage_log) 
VALUES ('M020', 'U020', '���μ�', '������', '����', '010-5678-9010', '����', '020', '����� ������', '1995-08-05', '�α�20');

commit;

select * from item;

INSERT INTO item (item_code, item_name) VALUES ('I001', '������');
INSERT INTO item (item_code, item_name) VALUES ('I002', '����');
INSERT INTO item (item_code, item_name) VALUES ('I003', '��ġ��');
INSERT INTO item (item_code, item_name) VALUES ('I004', '����');
INSERT INTO item (item_code, item_name) VALUES ('I005', '����');
INSERT INTO item (item_code, item_name) VALUES ('I006', '�а���');
INSERT INTO item (item_code, item_name) VALUES ('I007', '����');
INSERT INTO item (item_code, item_name) VALUES ('I008', '����');
INSERT INTO item (item_code, item_name) VALUES ('I009', '����');
INSERT INTO item (item_code, item_name) VALUES ('I010', '���');
INSERT INTO item (item_code, item_name) VALUES ('I011', '����');
INSERT INTO item (item_code, item_name) VALUES ('I012', '��');
INSERT INTO item (item_code, item_name) VALUES ('I013', '����');
INSERT INTO item (item_code, item_name) VALUES ('I014', '��ȣ��');
INSERT INTO item (item_code, item_name) VALUES ('I015', '����');
INSERT INTO item (item_code, item_name) VALUES ('I016', '�������');
INSERT INTO item (item_code, item_name) VALUES ('I017', '�Ұ��');
INSERT INTO item (item_code, item_name) VALUES ('I018', '�߰��');
INSERT INTO item (item_code, item_name) VALUES ('I019', '�');
INSERT INTO item (item_code, item_name) VALUES ('I020', '�κ�');

commit;

select * from bom;

INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM001', 'I001', 10, '�⺻', '��');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM002', 'I002', 5, '�⺻', '��');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM003', 'I003', 7, '�⺻', '��');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM004', 'I004', 3, '�⺻', '��');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM005', 'I005', 8, '�⺻', '��');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM006', 'I006', 20, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM007', 'I007', 15, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM008', 'I008', 10, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM009', 'I009', 25, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM010', 'I010', 30, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM011', 'I011', 5, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM012', 'I012', 8, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM013', 'I013', 12, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM014', 'I014', 7, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM015', 'I015', 9, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM016', 'I016', 10, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM017', 'I017', 15, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM018', 'I018', 18, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM019', 'I019', 20, '�⺻', 'kg');
INSERT INTO bom (bom_id, item_code, bom_count, bom_etc, bom_unit) VALUES ('BOM020', 'I020', 22, '�⺻', 'kg');

commit;

select * from client;

INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C001', '�ֽ�ȸ�� �ϳ�', '�����', '02-123-4567', '����� ���α�', 'hana@example.com', '123-45-67890');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C002', '�ֽ�ȸ�� �θ�', '�̻���', '02-234-5678', '����� ������', 'duri@example.com', '234-56-78901');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C003', '�ֽ�ȸ�� ����', '�ڻ���', '02-345-6789', '����� ���ʱ�', 'seul@example.com', '345-67-89012');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C004', '�ֽ�ȸ�� �ݸ���', '�ֻ���', '02-456-7890', '����� ���ı�', 'net@example.com', '456-78-90123');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C005', '�ֽ�ȸ�� �ټ�', '������', '02-567-8901', '����� ������', 'five@example.com', '567-89-01234');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C006', '�ֽ�ȸ�� ����', '�����', '02-678-9012', '����� �߱�', 'six@example.com', '678-90-12345');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C007', '�ֽ�ȸ�� �ϰ�', '�ڻ���', '02-789-0123', '����� ��걸', 'seven@example.com', '789-01-23456');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C008', '�ֽ�ȸ�� ����', '�̻���', '02-890-1234', '����� ���빮��', 'eight@example.com', '890-12-34567');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C009', '�ֽ�ȸ�� ��ȩ', '�ֻ���', '02-901-2345', '����� ������', 'nine@example.com', '901-23-45678');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C010', '�ֽ�ȸ�� ��', '������', '02-012-3456', '����� ����', 'ten@example.com', '012-34-56789');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C011', '�ֽ�ȸ�� ���ϳ�', '�����', '02-123-4567', '����� ���α�', 'eleven@example.com', '123-45-67890');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C012', '�ֽ�ȸ�� ����', '�ڻ���', '02-234-5678', '����� ������', 'twelve@example.com', '234-56-78901');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C013', '�ֽ�ȸ�� ����', '�̻���', '02-345-6789', '����� ���ʱ�', 'thirteen@example.com', '345-67-89012');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C014', '�ֽ�ȸ�� ����', '�ֻ���', '02-456-7890', '����� ���ı�', 'fourteen@example.com', '456-78-90123');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C015', '�ֽ�ȸ�� ���ټ�', '������', '02-567-8901', '����� ������', 'fifteen@example.com', '567-89-01234');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C016', '�ֽ�ȸ�� ������', '�����', '02-678-9012', '����� ������', 'sixteen@example.com', '678-90-12345');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C017', '�ֽ�ȸ�� ���ϰ�', '�ڻ���', '02-789-0123', '����� ��������', 'seventeen@example.com', '789-01-23456');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C018', '�ֽ�ȸ�� ������', '�̻���', '02-890-1234', '����� ���Ǳ�', 'eighteen@example.com', '890-12-34567');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C019', '�ֽ�ȸ�� ����ȩ', '�ֻ���', '02-901-2345', '����� ���۱�', 'nineteen@example.com', '901-23-45678');
INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) 
VALUES ('C020', '�ֽ�ȸ�� ����', '������', '02-012-3456', '����� ��õ��', 'twenty@example.com', '012-34-56789');

commit;

select * from error;

INSERT INTO error (error_id, error_name, error_contents) VALUES ('E001', '��� ����', '��ᰡ �����Ͽ� ������ �Ұ����մϴ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E002', '��� ����', '��� �������� ������ �ߴܵǾ����ϴ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E003', '���� ����', '���� �������� ������ �߻��߽��ϴ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E004', '�µ� �ҷ�', '������ �µ� ������ �ʰ��߽��ϴ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E005', '�۾� ����', '�۾��� �����ǰ� �ֽ��ϴ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E006', '�õ��� ����', '�õ��� �������� ���� ���� ������ �Ұ�����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E007', '���� �ҷ�', '���� ������ �߰ߵǾ� ������ �ߴܵ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E008', '��� �ҷ�', '������ ����� ���ؿ� ���� ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E009', '��� ���۵�', '��� ���۵����� ���� ���� ���� ����� ä������ ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E010', '��� ���� ����', '��� ���� ������ ���� ��ᰡ ������.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E011', '�� ���� �ߴ�', '�� ���� �ߴ����� ���� ������ ���� �� ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E012', '��� Ʈ�� ����', '��� Ʈ���� ���峪�� ��ǰ�� �������� ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E013', '������ ����', '�����簡 �����Ͽ� ���� �۾��� �ߴܵ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E014', '�ð� �ý��� ����', '�ð� �ý��� �������� ���� ���ΰ� �����ϰ� �õ����� ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E015', '�η� ����', '�۾� �η� �������� ���� ������ ������.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E016', '���� ����', '���� ���� ������ ���� ������ ũ��� ����� �ϰ����� ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E017', '���� �ҷ�', '������ �󵵰� ���� �ʾ� ���� ������ �����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E018', '������ ����', '���� �� ��ᰡ �����Ͽ� ������ �ߴܵ�.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E019', '���� ����', '���� ��� ������ ���� ���ΰ� ����� ������� ����.');
INSERT INTO error (error_id, error_name, error_contents) VALUES ('E020', '��� ����', '��� ������ ���� ���� ������ ������.');

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
VALUES ('P001', '��ǰ ���� ��ȹ 1', SYSDATE, 1000, '���� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P002', '��ǰ ���� ��ȹ 2', SYSDATE, 1500, '��ġ���� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P003', '��ǰ ���� ��ȹ 3', SYSDATE, 1200, '���츸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P004', '��ǰ ���� ��ȹ 4', SYSDATE, 1800, '��⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P005', '��ǰ ���� ��ȹ 5', SYSDATE, 2000, 'ä�Ҹ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P006', '��ǰ ���� ��ȹ 6', SYSDATE, 2500, '��ġ���� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P007', '��ǰ ���� ��ȹ 7', SYSDATE, 3000, '��⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P008', '��ǰ ���� ��ȹ 8', SYSDATE, 3500, '���츸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P009', '��ǰ ���� ��ȹ 9', SYSDATE, 4000, '������ ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P010', '��ǰ ���� ��ȹ 10', SYSDATE, 4500, '�������� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P011', '��ǰ ���� ��ȹ 11', SYSDATE, 5000, '���ĸ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P012', '��ǰ ���� ��ȹ 12', SYSDATE, 5500, '���߸��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P013', '��ǰ ���� ��ȹ 13', SYSDATE, 6000, '��ٸ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P014', '��ǰ ���� ��ȹ 14', SYSDATE, 6500, '���ڸ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P015', '��ǰ ���� ��ȹ 15', SYSDATE, 7000, '�Ұ�⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P016', '��ǰ ���� ��ȹ 16', SYSDATE, 7500, '������⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P017', '��ǰ ���� ��ȹ 17', SYSDATE, 8000, '�߰�⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P018', '��ǰ ���� ��ȹ 18', SYSDATE, 8500, '����� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P019', '��ǰ ���� ��ȹ 19', SYSDATE, 9000, '�κθ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name) 
VALUES ('P020', '��ǰ ���� ��ȹ 20', SYSDATE, 9500, '�������� ����');

commit;

select * from work;

INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W001', 'U001', 'P001', SYSDATE, SYSDATE+1, '�۾� 1', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W002', 'U002', 'P002', SYSDATE, SYSDATE+2, '�۾� 2', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W003', 'U003', 'P003', SYSDATE, SYSDATE+3, '�۾� 3', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W004', 'U004', 'P004', SYSDATE, SYSDATE+4, '�۾� 4', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W005', 'U005', 'P005', SYSDATE, SYSDATE+5, '�۾� 5', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W006', 'U006', 'P006', SYSDATE, SYSDATE+1, '�۾� 6', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W007', 'U007', 'P007', SYSDATE, SYSDATE+2, '�۾� 7', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W008', 'U008', 'P008', SYSDATE, SYSDATE+3, '�۾� 8', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W009', 'U009', 'P009', SYSDATE, SYSDATE+4, '�۾� 9', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W010', 'U010', 'P010', SYSDATE, SYSDATE+5, '�۾� 10', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W011', 'U011', 'P011', SYSDATE, SYSDATE+6, '�۾� 11', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W012', 'U012', 'P012', SYSDATE, SYSDATE+7, '�۾� 12', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W013', 'U013', 'P013', SYSDATE, SYSDATE+8, '�۾� 13', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W014', 'U014', 'P014', SYSDATE, SYSDATE+9, '�۾� 14', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W015', 'U015', 'P015', SYSDATE, SYSDATE+10, '�۾� 15', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W016', 'U016', 'P016', SYSDATE, SYSDATE+11, '�۾� 16', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W017', 'U017', 'P017', SYSDATE, SYSDATE+12, '�۾� 17', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W018', 'U018', 'P018', SYSDATE, SYSDATE+13, '�۾� 18', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W019', 'U019', 'P019', SYSDATE, SYSDATE+14, '�۾� 19', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, work_write, work_endate, work_name, work_do) 
VALUES ('W020', 'U020', 'P020', SYSDATE, SYSDATE+15, '�۾� 20', '�۾� ��');

commit;

select * from stock;

INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S001', 'I001', '������ ���', 1000, 500, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S002', 'I002', '���� ���', 800, 300, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S003', 'I003', '��ġ�� ���', 700, 400, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S004', 'I004', '���� ���', 600, 200, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S005', 'I005', '���� ���', 500, 100, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S006', 'I006', '�а��� ���', 2000, 1000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S007', 'I007', '���� ���', 1500, 700, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S008', 'I008', '���� ���', 1200, 500, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S009', 'I009', '���� ���', 2500, 1200, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S010', 'I010', '��� ���', 3000, 1500, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S011', 'I011', '���� ���', 500, 200, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S012', 'I012', '�� ���', 800, 300, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S013', 'I013', '���� ���', 1200, 600, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S014', 'I014', '��ȣ�� ���', 700, 400, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S015', 'I015', '���� ���', 900, 500, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S016', 'I016', '������� ���', 1000, 600, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S017', 'I017', '�Ұ�� ���', 1500, 800, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S018', 'I018', '�߰�� ���', 1800, 900, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S019', 'I019', '� ���', 2000, 1000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_docount, stock_location, stock_sort) 
VALUES ('S020', 'I020', '�κ� ���', 2200, 1100, '���� â��', '���');

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
VALUES ('P001', '��ǰ ���� ��ȹ 1', SYSDATE, SYSDATE + 7, 1000, '���� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P002', '��ǰ ���� ��ȹ 2', SYSDATE, SYSDATE + 7, 1500, '��ġ���� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P003', '��ǰ ���� ��ȹ 3', SYSDATE, SYSDATE + 7, 1200, '���츸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P004', '��ǰ ���� ��ȹ 4', SYSDATE, SYSDATE + 7, 1800, '��⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P005', '��ǰ ���� ��ȹ 5', SYSDATE, SYSDATE + 7, 2000, 'ä�Ҹ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P006', '��ǰ ���� ��ȹ 6', SYSDATE, SYSDATE + 7, 2500, '��ġ���� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P007', '��ǰ ���� ��ȹ 7', SYSDATE, SYSDATE + 7, 3000, '��⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P008', '��ǰ ���� ��ȹ 8', SYSDATE, SYSDATE + 7, 3500, '���츸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P009', '��ǰ ���� ��ȹ 9', SYSDATE, SYSDATE + 7, 4000, '������ ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P010', '��ǰ ���� ��ȹ 10', SYSDATE, SYSDATE + 7, 4500, '�������� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P011', '��ǰ ���� ��ȹ 11', SYSDATE, SYSDATE + 7, 5000, '���ĸ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P012', '��ǰ ���� ��ȹ 12', SYSDATE, SYSDATE + 7, 5500, '���߸��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P013', '��ǰ ���� ��ȹ 13', SYSDATE, SYSDATE + 7, 6000, '��ٸ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P014', '��ǰ ���� ��ȹ 14', SYSDATE, SYSDATE + 7, 6500, '���ڸ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P015', '��ǰ ���� ��ȹ 15', SYSDATE, SYSDATE + 7, 7000, '�Ұ�⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P016', '��ǰ ���� ��ȹ 16', SYSDATE, SYSDATE + 7, 7500, '������⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P017', '��ǰ ���� ��ȹ 17', SYSDATE, SYSDATE + 7, 8000, '�߰�⸸�� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P018', '��ǰ ���� ��ȹ 18', SYSDATE, SYSDATE + 7, 8500, '����� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P019', '��ǰ ���� ��ȹ 19', SYSDATE, SYSDATE + 7, 9000, '�κθ��� ����');
INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) 
VALUES ('P020', '��ǰ ���� ��ȹ 20', SYSDATE, SYSDATE + 7, 9500, '�������� ����');

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
VALUES ('W001', 'U001', 'P001', 'I001', SYSDATE, SYSDATE+1, '�۾� 1', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W002', 'U002', 'P002', 'I002', SYSDATE, SYSDATE+2, '�۾� 2', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W003', 'U003', 'P003', 'I003', SYSDATE, SYSDATE+3, '�۾� 3', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W004', 'U004', 'P004', 'I004', SYSDATE, SYSDATE+4, '�۾� 4', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W005', 'U005', 'P005', 'I005', SYSDATE, SYSDATE+5, '�۾� 5', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W006', 'U006', 'P006', 'I006', SYSDATE, SYSDATE+1, '�۾� 6', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W007', 'U007', 'P007', 'I007', SYSDATE, SYSDATE+2, '�۾� 7', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W008', 'U008', 'P008', 'I008', SYSDATE, SYSDATE+3, '�۾� 8', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W009', 'U009', 'P009', 'I009', SYSDATE, SYSDATE+4, '�۾� 9', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W010', 'U010', 'P010', 'I010', SYSDATE, SYSDATE+5, '�۾� 10', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W011', 'U011', 'P011', 'I011', SYSDATE, SYSDATE+6, '�۾� 11', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W012', 'U012', 'P012', 'I012', SYSDATE, SYSDATE+7, '�۾� 12', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W013', 'U013', 'P013', 'I013', SYSDATE, SYSDATE+8, '�۾� 13', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W014', 'U014', 'P014', 'I014', SYSDATE, SYSDATE+9, '�۾� 14', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W015', 'U015', 'P015', 'I015', SYSDATE, SYSDATE+10, '�۾� 15', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W016', 'U016', 'P016', 'I016', SYSDATE, SYSDATE+11, '�۾� 16', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W017', 'U017', 'P017', 'I017', SYSDATE, SYSDATE+12, '�۾� 17', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W018', 'U018', 'P018', 'I018', SYSDATE, SYSDATE+13, '�۾� 18', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W019', 'U019', 'P019', 'I019', SYSDATE, SYSDATE+14, '�۾� 19', '�۾� ��');
INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) 
VALUES ('W020', 'U020', 'P020', 'I020', SYSDATE, SYSDATE+15, '�۾� 20', '�۾� ��');

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
VALUES ('S001', 'I001', '������ ���', 1000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S002', 'I002', '���� ���', 800, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S003', 'I003', '��ġ�� ���', 700, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S004', 'I004', '���� ���', 600, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S005', 'I005', '���� ���', 500, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S006', 'I006', '�а��� ���', 2000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S007', 'I007', '���� ���', 1500, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S008', 'I008', '���� ���', 1200, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S009', 'I009', '���� ���', 2500, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S010', 'I010', '��� ���', 3000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S011', 'I011', '���� ���', 500, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S012', 'I012', '�� ���', 800, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S013', 'I013', '���� ���', 1200, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S014', 'I014', '��ȣ�� ���', 700, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S015', 'I015', '���� ���', 900, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S016', 'I016', '������� ���', 1000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S017', 'I017', '�Ұ�� ���', 1500, '�λ� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S018', 'I018', '�߰�� ���', 1800, '��õ â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S019', 'I019', '� ���', 2000, '���� â��', '���');
INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) 
VALUES ('S020', 'I020', '�κ� ���', 2200, '���� â��', '���');

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

INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (1, 'U001', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'ȸ�� �غ�', '���� �� ȸ�� �ڷ� �غ��ϱ�');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (2, 'U002', TO_DATE('2024-08-02', 'YYYY-MM-DD'), '���� �ۼ�', '���� ���� ���� �ۼ��ϱ�');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (3, 'U003', TO_DATE('2024-08-03', 'YYYY-MM-DD'), '���� ����', '����ǰ ��ø� ���� ���� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (4, 'U004', TO_DATE('2024-08-04', 'YYYY-MM-DD'), '�� ȸ��', '������� �ְ� ���� ���� ȸ��');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (5, 'U005', TO_DATE('2024-08-05', 'YYYY-MM-DD'), '�� ����', 'VIP ������ ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (6, 'U006', TO_DATE('2024-08-06', 'YYYY-MM-DD'), '��ǰ ����', '����ǰ ����� �ǵ�� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (7, 'U007', TO_DATE('2024-08-07', 'YYYY-MM-DD'), '���� ��ȹ', '���� �б� ���� ��ȹ �����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (8, 'U008', TO_DATE('2024-08-08', 'YYYY-MM-DD'), '���� ����', '���� ��� ���� ���� �غ�');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (9, 'U009', TO_DATE('2024-08-09', 'YYYY-MM-DD'), '������Ʈ ��ȹ', '�ű� ������Ʈ ��ȹ �� ���� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (10, 'U010', TO_DATE('2024-08-10', 'YYYY-MM-DD'), '������ �м�', '�Ǹ� ������ �м� �� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (11, 'U011', TO_DATE('2024-08-11', 'YYYY-MM-DD'), '���� ķ����', '���ο� ���� ķ���� ��ȹ');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (12, 'U012', TO_DATE('2024-08-12', 'YYYY-MM-DD'), '��Ʈ�� ����', '���»���� ���� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (13, 'U013', TO_DATE('2024-08-13', 'YYYY-MM-DD'), '�̺�Ʈ �غ�', '�� �̺�Ʈ �غ� �� ȫ��');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (14, 'U014', TO_DATE('2024-08-14', 'YYYY-MM-DD'), '���� �м�', '����� ���� �м�');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (15, 'U015', TO_DATE('2024-08-15', 'YYYY-MM-DD'), '�� ����', '�� ���� Ȱ�� ��ȹ');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (16, 'U016', TO_DATE('2024-08-16', 'YYYY-MM-DD'), '�� ��������', '�� ������ ���� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (17, 'U017', TO_DATE('2024-08-17', 'YYYY-MM-DD'), '��ǰ ����', '��ǰ ���� ���̵�� ȸ��');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (18, 'U018', TO_DATE('2024-08-18', 'YYYY-MM-DD'), '���� ��', '�б⺰ ���� �� �غ�');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (19, 'U019', TO_DATE('2024-08-19', 'YYYY-MM-DD'), '�� ����', '�� ���� ���μ��� ����');
INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (20, 'U020', TO_DATE('2024-08-20', 'YYYY-MM-DD'), '���� ����', '���� ���� ���� ���α׷�');

commit;