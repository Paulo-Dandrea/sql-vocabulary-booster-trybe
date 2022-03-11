DROP PROCEDURE exibir_historico_completo_por_funcionario;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EM VARCHAR(50))
BEGIN
SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
DEPARTMENT_NAME AS 'Departamento',
JOB_TITLE AS 'Cargo'
FROM
hr.employees AS em, hr.job_history as h, hr.jobs as j, hr.departments as d
WHERE em.EMPLOYEE_ID = h.EMPLOYEE_ID 
AND h.JOB_ID = j.JOB_ID
AND h.DEPARTMENT_ID = d.DEPARTMENT_ID 
AND EMAIL = EM
ORDER BY DEPARTMENT_NAME, JOB_TITLE;
END $$ 
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR@example.com')
