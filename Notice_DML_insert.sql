-- NOTICE 테이블에 데이터 삽입
INSERT INTO NOTICE (NOTICE_PK, CONTENT, WRITER) VALUES 
('NOT01', '서비스 점검 안내', '관리자'),
('NOT02', '이벤트 안내', '마케팅팀'),
('NOT03', '새로운 기능 추가 안내', '관리자'),
('NOT04', '결제 시스템 업그레이드 안내', '운영팀'),
('NOT05', '서비스 이용약관 변경 안내', '운영팀');

-- VISITOR 테이블에 데이터 삽입
INSERT INTO VISITOR (VISITOR_PK, NOTICE_FK, NAME) VALUES 
('VIS01', 'NOT01', '홍길동'),
('VIS02', 'NOT01', '김영희'),
('VIS03', 'NOT02', '백지영'),
('VIS04', 'NOT02', '최민호'),
('VIS05', 'NOT02', '송지현'),
('VIS06', 'NOT03', '장성우'),
('VIS07', 'NOT04', '백지영'),
('VIS08', 'NOT04', '최민호'),
('VIS09', 'NOT04', '임현서'),
('VIS10', 'NOT05', '강수민'),
('VIS11', 'NOT05', '백정희');

select * from NOTICE;
select * from VISITOR;