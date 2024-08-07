SELECT 
    n.CONTENT AS 공지내용, 
    n.WRITER AS 작성자,
    COUNT(v.VISITOR_PK) AS 방문자_명수
FROM 
    NOTICE n
LEFT JOIN 
    VISITORS v ON n.NOTICE_PK = v.NOTICE_PK
GROUP BY 
    n.NOTICE_PK, n.CONTENT, n.WRITER;