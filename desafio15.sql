DROP PROCEDURE buscar_media_por_cargo;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN cargo VARCHAR(100)
)
BEGIN 
  SELECT
  ROUND(AVG(SALARY), 2) AS 'Média salarial'
  FROM hr.jobs AS j, hr.employees AS em
  WHERE j.JOB_ID = em.JOB_ID AND
  j.JOB_TITLE = cargo;
END $$ 

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
