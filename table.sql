CREATE TABLE board (
    bord_id varchar2(100) NOT NULL,
    user_id varchar2(100) NOT NULL,
    board_title varchar2(999),
    board_contents varchar2(999),
    board_date date,
    CONSTRAINT PK_BOARD PRIMARY KEY (bord_id)
);

CREATE TABLE comments (
    comment_id varchar2(100) NOT NULL,
    bord_id varchar2(100) NOT NULL,
    user_id varchar2(100) NOT NULL,
    comment_contents varchar2(999),
    comment_date date,
    CONSTRAINT PK_COMMENTS PRIMARY KEY (comment_id)
);


CREATE TABLE users (
    user_id varchar2(100) NOT NULL,
    user_pw varchar2(999),
    user_access number(1),
    user_name varchar2(999),
    user_email varchar2(999),
    CONSTRAINT PK_USER PRIMARY KEY (user_id)
);

CREATE TABLE account (
    account_id varchar2(100) NOT NULL,
    account_pw varchar2(999),
    account_email varchar2(999),
    account_name varchar2(255),
    CONSTRAINT PK_ACCOUNT PRIMARY KEY (account_id)
);

CREATE TABLE mypage (
    mypage_id varchar2(100) NOT NULL,
    user_id varchar2(100) NOT NULL,
    mypage_name varchar2(999),
    mypage_affiliation varchar2(999),
    mypage_intel varchar2(999),
    mypage_phone varchar2(999),
    mypage_position varchar2(999),
    mypage_mainnum varchar2(999),
    mypage_address varchar2(999),
    mypage_birth varchar2(999),
    mypage_log varchar2(999),
    CONSTRAINT PK_MYPAGE PRIMARY KEY (mypage_id)
);

CREATE TABLE item (
    item_code varchar2(100) NOT NULL,
    item_name varchar2(999),
    CONSTRAINT PK_ITEM PRIMARY KEY (item_code)
);

CREATE TABLE bom (
    bom_id varchar2(100) NOT NULL,
    item_code varchar2(100) NOT NULL,
    bom_count number,  
    bom_etc varchar2(999),
    bom_unit varchar2(999),
    CONSTRAINT PK_BOM PRIMARY KEY (bom_id)
);

CREATE TABLE client (
    client_id varchar2(100) NOT NULL,
    client_name varchar2(999),
    client_boss varchar2(999),
    client_tel varchar2(999),
    client_address varchar2(999),
    client_email varchar2(999),
    client_number varchar2(999),
    CONSTRAINT PK_CLIENT PRIMARY KEY (client_id)
);

CREATE TABLE error (
    error_id varchar2(100) NOT NULL,
    error_name varchar2(999),
    error_contents varchar2(999),
    CONSTRAINT PK_ERROR PRIMARY KEY (error_id)
);

CREATE TABLE order_info (  
    order_id varchar2(100) NOT NULL,
    client_id varchar2(100) NOT NULL,
    order_date varchar2(999),
    order_enddate varchar2(999),
    order_box varchar2(999),
    order_count number,  
    order_price varchar2(999),
    CONSTRAINT PK_ORDER PRIMARY KEY (order_id)
);

CREATE TABLE production_plan (  
    plan_id varchar2(100) NOT NULL,
    plan_contents varchar2(999),
    plan_date date,
    plan_end_date date,
    plan_count number, 
    plan_name varchar2(999),
    CONSTRAINT PK_PLAN PRIMARY KEY (plan_id)
);

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

CREATE TABLE stock (
    stock_id varchar2(100) NOT NULL,
    item_code varchar2(100) NOT NULL,
    stock_name varchar2(999),
    stock_count number,  
    stock_location varchar2(999),
    stock_sort varchar2(999),
    CONSTRAINT PK_STOCK PRIMARY KEY (stock_id)
);

CREATE TABLE faulty (
    faulty_id varchar2(100) NOT NULL,
    item_code varchar2(100) NOT NULL,
    error_id varchar2(100) NOT NULL,
    work_id varchar2(100) NOT NULL,
    faulty_count varchar2(999),
    CONSTRAINT PK_FAULTY PRIMARY KEY (faulty_id)
);

CREATE TABLE todo (
    todo_id NUMBER NOT NULL,
    user_id varchar2(100) NOT NULL,
    todo_date DATE,
    todo_title VARCHAR2(999),  
    todo_contents VARCHAR2(999),
    CONSTRAINT PK_todo PRIMARY KEY (todo_id)
);


CREATE SEQUENCE error_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;