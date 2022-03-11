SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
DATE_FORMAT(START_DATE,'%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(END_DATE,'%d/%m/%Y') AS 'Data de rescisão',
ROUND(TIMESTAMPDIFF(DAY , START_DATE, END_DATE) / 365 , 2) AS `Anos trabalhados`
FROM hr.job_history AS J, hr.employees AS EM
WHERE J.EMPLOYEE_ID = EM.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
