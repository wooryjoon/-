-- 코드를 입력하세요
SELECT B.REST_ID, A.REST_NAME, A.FOOD_TYPE, A.FAVORITES, A.ADDRESS, ROUND(AVG(B.REVIEW_SCORE),2) AS SCORE
FROM REST_INFO A JOIN REST_REVIEW B
ON A.REST_ID = B.REST_ID
GROUP BY A.REST_ID
HAVING A.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, A.FAVORITES DESC