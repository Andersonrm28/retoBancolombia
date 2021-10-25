DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGetDataCount`(tcFilter INT, ugFilter VARCHAR(50), riFilter NUMERIC(10,2),
							   rfFilter NUMERIC(10,2), genreFilter INT) RETURNS int
    DETERMINISTIC
BEGIN

	DECLARE outputCount INT DEFAULT 0;
    -- Funcion encargada de consultar la cantidad total filtrada de los clientes selectos teniendo
    -- la particularidad de que se puede filtrar tambien por genero 
    SELECT COUNT(*) INTO outputCount FROM vGetData v
    WHERE v.code IN (SELECT vD.code FROM vGetData vD 
                                           WHERE vD.balance = (SELECT MAX(balance) FROM vGetData
																				   WHERE company = vD.company AND (type = tcFilter OR tcFilter = 0) AND 
																												  (location = ugFilter OR ugFilter = '') AND 
																												  (balance > riFilter OR riFilter = 0) AND 
																												  (balance < rfFilter OR rfFilter = 0) AND
																												  (male = genreFilter OR genreFilter = 2)
																				   GROUP BY company));
           
	RETURN (outputCount);
END$$
DELIMITER ;
