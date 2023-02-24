-- 여기서부터 JDBC계정내에서 학습할 테이블 생성.

-- MEMBER 테이블생성
CREATE TABLE MEMBER(
    USERNO NUMBER PRIMARY KEY,
    USERID VARCHAR2(15) UNIQUE NOT NULL,
    USERPWD VARCHAR2(20) NOT NULL,
    USERNAME VARCHAR2(20) NOT NULL,
    GENDER CHAR(1) CHECK(GENDER IN('F' , 'M')),
    AGE NUMBER,
    EMAIL VARCHAR2(30),
    PHONE CHAR(11),
    ADDRESS VARCHAR2(100),
    HOBBY VARCHAR2(50),
    ENROLLDATE DATE DEFAULT SYSDATE NOT NULL
);

CREATE SEQUENCE SEQ_USERNO;

SELECT * FROM MEMBER;

SELECT * FROM MEMBER WHERE USERNAME LIKE '%지호%';

SELECT * FROM USER_SEQUENCES;

INSERT INTO MEMBER
VALUES(SEQ_USERNO.NEXTVAL , 'admin' , '1234' , '관리자' , 'M' , NULL , NULL , NULL , NULL , '영화감상' , DEFAULT);                                                                   

INSERT INTO MEMBER 
VALUES(SEQ_USERNO.NEXTVAL , 'USER01' , 'pass01' , '유저' , 'F' , 21 , NULL , '01033333333' , NULL , '유튜브보기' , DEFAULT);

SELECT * FROM MEMBER;

COMMIT;

/*
    오라클에서 객체 이름 붙이는 규칙
    접두사
    
    테이블 : TB_~~~
    뷰 : VW_~~~
    시퀀스 : SEQ_~~~
*/



SELECT
?TO_DATE(201013)

FROM DUAL;






                                                                                                                         