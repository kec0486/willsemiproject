
/* Drop Tables */

DROP TABLE NOTICEBOARD CASCADE CONSTRAINTS;
DROP TABLE adminaccount CASCADE CONSTRAINTS;
DROP TABLE lecture CASCADE CONSTRAINTS;
DROP TABLE professor CASCADE CONSTRAINTS;
DROP TABLE registration CASCADE CONSTRAINTS;
DROP TABLE scholarship CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;
DROP TABLE tuItion CASCADE CONSTRAINTS;
DROP TABLE major CASCADE CONSTRAINTS;
DROP TABLE subject CASCADE CONSTRAINTS;




/* Create Tables */

-- 관리자
CREATE TABLE adminaccount
(
	-- 관리자 아이디
	ad_id number(10) NOT NULL,
	-- 관리자비밀번호
	ad_pwd varchar2(20) NOT NULL,
	PRIMARY KEY (ad_id)
);


-- 강의
CREATE TABLE lecture
(
	-- 교수아이디
	pro_id number(10) NOT NULL,
	-- 과목코드
	sub_code number(10) NOT NULL
);


-- 학과
CREATE TABLE major
(
	-- 학과코드
	ma_code number(10) NOT NULL,
	-- 단과대학
	ma_college varchar2(20) NOT NULL,
	-- 전공
	ma_name varchar2(10) NOT NULL,
	PRIMARY KEY (ma_code)
);


-- 게시판
CREATE TABLE NOTICEBOARD
(
	-- 게시물번호
	N_NUM number(20) NOT NULL,
	-- 제목
	N_TITLE varchar2(1000) NOT NULL,
	-- 내용
	N_CONTENTS varchar2(2000) NOT NULL,
	-- 게시일
	N_REGDATE date NOT NULL,
	-- 원본파일이름
	N_ORGFILENAME varchar2(1000),
	-- 저장된파일이름
	N_SAVEFILENAME varchar2(1000),
	-- 학사번호
	c_id number(10) NOT NULL,
	-- 관리자 아이디
	ad_id number(10) NOT NULL,
	PRIMARY KEY (N_NUM)
);


-- 교수
CREATE TABLE professor
(
	-- 교수아이디
	pro_id number(10) NOT NULL,
	-- 비밀번호
	pro_pwd varchar2(20) NOT NULL,
	-- 교수이름
	pro_name varchar2(10) NOT NULL,
	-- 주민등록번호
	pro_ssn varchar2(10) NOT NULL,
	-- 직위
	pro_position varchar2(10) NOT NULL,
	-- 연구실위치
	pro_office varchar2(10) NOT NULL,
	-- 휴대폰번호
	pro_mobile varchar2(20) NOT NULL,
	-- 집전화번호
	pro_phone varchar2(20) NOT NULL,
	-- 이메일주소
	pro_email varchar2(30) NOT NULL,
	-- 집주소
	pro_addr varchar2(100) NOT NULL,
	-- 학과코드
	ma_code number(10) NOT NULL,
	PRIMARY KEY (pro_id)
);


-- 수강
CREATE TABLE registration
(
	-- 학기
	re_term varchar2(10) NOT NULL,
	-- 점수
	re_score number(10,2) NOT NULL,
	-- 성적
	re_grade varchar2(10) NOT NULL,
	-- 과목코드
	sub_code number(10) NOT NULL,
	-- 학번id
	st_id number(10) NOT NULL
);


-- 장학금
CREATE TABLE scholarship
(
	-- 부여번호
	sch_num number(10) NOT NULL,
	-- 장학수여명
	sch_name varchar2(30) NOT NULL,
	-- 장학수여금
	sch_cost number(20) NOT NULL,
	-- 학번id
	st_id number(10) NOT NULL,
	PRIMARY KEY (sch_num)
);


-- 학생
CREATE TABLE student
(
	-- 학번id
	st_id number(10) NOT NULL,
	-- 비밀번호
	st_pwd varchar2(20) NOT NULL,
	-- 학생이름
	st_name varchar2(10) NOT NULL,
	-- 주민등록번호
	st_ssn varchar2(10) NOT NULL,
	-- 학년
	st_level number(1) NOT NULL,
	-- 휴대폰번호
	st_mobile varchar2(20) NOT NULL,
	-- 집전화번호
	st_phone varchar2(20) NOT NULL,
	-- 이메일주소
	st_email varchar2(30) NOT NULL,
	-- 집주소
	st_addr varchar2(100) NOT NULL,
	-- 학과코드
	ma_code number(10) NOT NULL,
	PRIMARY KEY (st_id)
);


-- 과목
CREATE TABLE subject
(
	-- 과목코드
	sub_code number(10) NOT NULL,
	-- 과목명
	sub_name varchar2(20) NOT NULL,
	-- 학년
	sub_level number(1) NOT NULL,
	-- 학점
	sub_credit number(1) NOT NULL,
	-- 강의요일
	sub_day varchar2(10) NOT NULL,
	-- 강의시간
	sub_time varchar2(20) NOT NULL,
	-- 강의실
	sub_class varchar2(20) NOT NULL,
	PRIMARY KEY (sub_code)
);


-- 등록금
CREATE TABLE tuItion
(
	-- 학과코드
	ma_code number(10) NOT NULL,
	-- 등록금
	tu_tuItion number(20) NOT NULL,
	-- 등록금납부상태
	tu_state varchar2(1) NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE NOTICEBOARD
	ADD FOREIGN KEY (ad_id)
	REFERENCES adminaccount (ad_id)
;


ALTER TABLE professor
	ADD FOREIGN KEY (ma_code)
	REFERENCES major (ma_code)
;


ALTER TABLE student
	ADD FOREIGN KEY (ma_code)
	REFERENCES major (ma_code)
;


ALTER TABLE tuItion
	ADD FOREIGN KEY (ma_code)
	REFERENCES major (ma_code)
;


ALTER TABLE lecture
	ADD FOREIGN KEY (pro_id)
	REFERENCES professor (pro_id)
;


ALTER TABLE registration
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE scholarship
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE lecture
	ADD FOREIGN KEY (sub_code)
	REFERENCES subject (sub_code)
;


ALTER TABLE registration
	ADD FOREIGN KEY (sub_code)
	REFERENCES subject (sub_code)
;



/* Comments */

COMMENT ON TABLE adminaccount IS '관리자';
COMMENT ON COLUMN adminaccount.ad_id IS '관리자 아이디';
COMMENT ON COLUMN adminaccount.ad_pwd IS '관리자비밀번호';
COMMENT ON TABLE lecture IS '강의';
COMMENT ON COLUMN lecture.pro_id IS '교수아이디';
COMMENT ON COLUMN lecture.sub_code IS '과목코드';
COMMENT ON TABLE major IS '학과';
COMMENT ON COLUMN major.ma_code IS '학과코드';
COMMENT ON COLUMN major.ma_college IS '단과대학';
COMMENT ON COLUMN major.ma_name IS '전공';
COMMENT ON TABLE NOTICEBOARD IS '게시판';
COMMENT ON COLUMN NOTICEBOARD.N_NUM IS '게시물번호';
COMMENT ON COLUMN NOTICEBOARD.N_TITLE IS '제목';
COMMENT ON COLUMN NOTICEBOARD.N_CONTENTS IS '내용';
COMMENT ON COLUMN NOTICEBOARD.N_REGDATE IS '게시일';
COMMENT ON COLUMN NOTICEBOARD.N_ORGFILENAME IS '원본파일이름';
COMMENT ON COLUMN NOTICEBOARD.N_SAVEFILENAME IS '저장된파일이름';
COMMENT ON COLUMN NOTICEBOARD.c_id IS '학사번호';
COMMENT ON COLUMN NOTICEBOARD.ad_id IS '관리자 아이디';
COMMENT ON TABLE professor IS '교수';
COMMENT ON COLUMN professor.pro_id IS '교수아이디';
COMMENT ON COLUMN professor.pro_pwd IS '비밀번호';
COMMENT ON COLUMN professor.pro_name IS '교수이름';
COMMENT ON COLUMN professor.pro_ssn IS '주민등록번호';
COMMENT ON COLUMN professor.pro_position IS '직위';
COMMENT ON COLUMN professor.pro_office IS '연구실위치';
COMMENT ON COLUMN professor.pro_mobile IS '휴대폰번호';
COMMENT ON COLUMN professor.pro_phone IS '집전화번호';
COMMENT ON COLUMN professor.pro_email IS '이메일주소';
COMMENT ON COLUMN professor.pro_addr IS '집주소';
COMMENT ON COLUMN professor.ma_code IS '학과코드';
COMMENT ON TABLE registration IS '수강';
COMMENT ON COLUMN registration.re_term IS '학기';
COMMENT ON COLUMN registration.re_score IS '점수';
COMMENT ON COLUMN registration.re_grade IS '성적';
COMMENT ON COLUMN registration.sub_code IS '과목코드';
COMMENT ON COLUMN registration.st_id IS '학번id';
COMMENT ON TABLE scholarship IS '장학금';
COMMENT ON COLUMN scholarship.sch_num IS '부여번호';
COMMENT ON COLUMN scholarship.sch_name IS '장학수여명';
COMMENT ON COLUMN scholarship.sch_cost IS '장학수여금';
COMMENT ON COLUMN scholarship.st_id IS '학번id';
COMMENT ON TABLE student IS '학생';
COMMENT ON COLUMN student.st_id IS '학번id';
COMMENT ON COLUMN student.st_pwd IS '비밀번호';
COMMENT ON COLUMN student.st_name IS '학생이름';
COMMENT ON COLUMN student.st_ssn IS '주민등록번호';
COMMENT ON COLUMN student.st_level IS '학년';
COMMENT ON COLUMN student.st_mobile IS '휴대폰번호';
COMMENT ON COLUMN student.st_phone IS '집전화번호';
COMMENT ON COLUMN student.st_email IS '이메일주소';
COMMENT ON COLUMN student.st_addr IS '집주소';
COMMENT ON COLUMN student.ma_code IS '학과코드';
COMMENT ON TABLE subject IS '과목';
COMMENT ON COLUMN subject.sub_code IS '과목코드';
COMMENT ON COLUMN subject.sub_name IS '과목명';
COMMENT ON COLUMN subject.sub_level IS '학년';
COMMENT ON COLUMN subject.sub_credit IS '학점';
COMMENT ON COLUMN subject.sub_day IS '강의요일';
COMMENT ON COLUMN subject.sub_time IS '강의시간';
COMMENT ON COLUMN subject.sub_class IS '강의실';
COMMENT ON TABLE tuItion IS '등록금';
COMMENT ON COLUMN tuItion.ma_code IS '학과코드';
COMMENT ON COLUMN tuItion.tu_tuItion IS '등록금';
COMMENT ON COLUMN tuItion.tu_state IS '등록금납부상태';



