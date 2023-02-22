-- 코드를 입력하세요
# 진료과 흉부외과 일반외과
# 의사이름 ID 진료과 고용일자
SELECT DR_NAME, DR_ID, MCDP_CD,DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC