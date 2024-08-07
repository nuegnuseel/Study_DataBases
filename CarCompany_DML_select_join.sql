/*SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'study_notice_car_company';*/

select CP_NAME as '회사이름', CAR_NAME as '자동차이름', DATE_YEAR as '연식', COUNT(`OPTION`) as '옵션 갯수' from CAR_INFO CI
INNER JOIN CAR_INFO_OPTIONS COP ON CI.CI_PK = COP.CI_FK
INNER JOIN COMPANY CP ON CP.CP_PK = CI.CP_FK
INNER JOIN CAR_NAME CN ON CN.CN_PK = CI.CN_FK
INNER JOIN MODEL_YEAR MY ON MY.YEAR_PK = CI.YEAR_FK
INNER JOIN OPTIONS OP ON OP.OP_PK = COP.OP_FK
GROUP BY CP.CP_PK, CN.CN_PK, MY.YEAR_PK, CI.CI_PK;

SELECT 
    c.CP_NAME AS 회사이름,
    cn.CAR_NAME AS 자동차이름,
    m.DATE_YEAR AS 연식,
    COUNT(co.OP_FK) AS 옵션_갯수
FROM 
    COMPANY c
JOIN 
    CAR_INFO ci ON c.CP_PK = ci.CP_FK
JOIN 
    CAR_NAME cn ON ci.CN_FK = cn.CN_PK
JOIN 
    MODEL_YEAR m ON ci.YEAR_FK = m.YEAR_PK
LEFT JOIN 
    CAR_INFO_OPTIONS co ON ci.CI_PK = co.CI_FK
GROUP BY 
    c.CP_NAME, cn.CAR_NAME, m.DATE_YEAR;
  
/*
SELECT 
    n.CONTENT AS 공지내용,
    n.WRITER AS 작성자,
    COALESCE(v.방문자_명수, 0) AS 방문자_명수,
    c.CP_NAME AS 회사이름,
    cn.CAR_NAME AS 자동차이름,
    m.DATE_YEAR AS 연식,
    COALESCE(op.옵션_갯수, 0) AS 옵션_갯수
FROM 
    NOTICE n
LEFT JOIN 
    (SELECT 
        NOTICE_PK, 
        COUNT(VISITOR_PK) AS 방문자_명수
     FROM 
        VISITORS
     GROUP BY 
        NOTICE_PK
    ) v ON n.NOTICE_PK = v.NOTICE_PK
LEFT JOIN 
    CAR_INFO ci ON n.NOTICE_PK = ci.CI_PK
LEFT JOIN 
    COMPANY c ON ci.CP_FK = c.CP_PK
LEFT JOIN 
    CAR_NAME cn ON ci.CN_FK = cn.CN_PK
LEFT JOIN 
    MODEL_YEAR m ON ci.YEAR_FK = m.YEAR_PK
LEFT JOIN 
    (SELECT 
        CI_FK, 
        COUNT(OP_FK) AS 옵션_갯수
     FROM 
        CAR_INFO_OPTIONS
     GROUP BY 
        CI_FK
    ) op ON ci.CI_PK = op.CI_FK;
    */


