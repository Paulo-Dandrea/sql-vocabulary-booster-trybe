DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EM VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_jobs INT;
SELECT
COUNT(*)
FROM
hr.employees as em, hr.job_history as h
WHERE em.EMPLOYEE_ID = h.EMPLOYEE_ID AND
EMAIL = EM INTO quantidade_de_jobs;
RETURN quantidade_de_jobs;
END $$
DELIMITER ;
