CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgetdata` AS select `c`.`id` AS `id`,`c`.`code` AS `code`,`c`.`male` AS `male`,`c`.`type` AS `type`,`c`.`location` AS `location`,`c`.`company` AS `company`,`c`.`encrypt` AS `encrypt`,`ac`.`balance` AS `balance` from (`client` `c` join (select `account`.`client_id` AS `client_id`,sum(`account`.`balance`) AS `balance` from `account` group by `account`.`client_id`) `ac` on((`c`.`id` = `ac`.`client_id`))) order by `ac`.`balance` desc,`c`.`code`;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGetDataCount`(tcFilter INT, ugFilter VARCHAR(50), riFilter NUMERIC(10,2),
							   rfFilter NUMERIC(10,2), genreFilter INT) RETURNS int
    DETERMINISTIC
BEGIN

	DECLARE outputCount INT DEFAULT 0;
    
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


-------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSelectGroup`(tcFilter INT, ugFilter VARCHAR(50), 
								   riFilter NUMERIC(10,2), rfFilter NUMERIC(10,2))
BEGIN
	-- Declaraciones iniciales
    DECLARE minimumInitialTravel INT DEFAULT 0;
    DECLARE minimumFinalTravel INT DEFAULT 0;
	DECLARE menQuantity INT DEFAULT 0;
    DECLARE womenQuantity INT DEFAULT 0;
    DECLARE initialCompletion INT DEFAULT 0;
    DECLARE finalCompletion INT DEFAULT 0;
    DECLARE rsCode VARCHAR(20);
    DECLARE rsEncrypt TINYINT(1);
    DECLARE rsCompany VARCHAR(50);
    DECLARE rsBalance NUMERIC(10,2);
    SET menQuantity = (SELECT fnGetDataCount(tcFilter,ugFilter,riFilter,rfFilter,1)), 
        womenQuantity = (SELECT fnGetDataCount(tcFilter,ugFilter,riFilter,rfFilter,0));
        
	-- Creacion tabla tempral de respuesta
    CREATE TEMPORARY TABLE IF NOT EXISTS ResponseTable (
		clientCode VARCHAR(20),
		encrypt tinyint(1),
        company VARCHAR(50),
        balance NUMERIC(10,2)
	);
     
	IF (menQuantity > 1 AND womenQuantity > 1) THEN
        BEGIN
        	-- Recorrido incial
			DECLARE initialCursor CURSOR FOR 
				SELECT code, encrypt, company, balance FROM vGetData v
				WHERE v.code IN (SELECT vD.code FROM vGetData vD 
                                 WHERE vD.balance = (SELECT MAX(balance) FROM vGetData
													 WHERE company = vD.company AND (type = tcFilter OR tcFilter = 0) AND 
																				    (location = ugFilter OR ugFilter = '') AND 
																				    (balance > riFilter OR riFilter = 0) AND 
																				    (balance < rfFilter OR rfFilter = 0) AND
																				    male = (CASE WHEN womenQuantity > menQuantity 
																							     THEN 1 ELSE 0 END)
													GROUP BY company));
								  
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET initialCompletion = 1;
			OPEN initialCursor;
			bucle:LOOP
				FETCH initialCursor INTO rsCode, rsEncrypt, rsCompany, rsBalance;
				
				IF (initialCompletion = 1 OR minimumInitialTravel = 4) THEN
				  LEAVE bucle;
				END IF;
				
                IF NOT EXISTS(SELECT 1 FROM ResponseTable WHERE company = rsCompany) THEN
					INSERT INTO ResponseTable(clientCode, encrypt, company, balance)
					VALUES (rsCode,rsEncrypt,rsCompany,rsBalance);
				END IF;
				
				SET minimumInitialTravel = minimumInitialTravel + 1;
				
			END LOOP bucle;
			CLOSE initialCursor;
		END;
        BEGIN
			-- Recorrer final
			DECLARE finalCursor CURSOR FOR 
				SELECT code, encrypt, company, balance FROM vGetData v
				WHERE v.code IN (SELECT vD.code FROM vGetData vD 
								 WHERE vD.balance = (SELECT MAX(balance) FROM vGetData
													 WHERE company = vD.company AND  (type = tcFilter OR tcFilter = 0) AND 
																				     (location = ugFilter OR ugFilter = '') AND 
																				     (balance > riFilter OR riFilter = 0) AND 
																				     (balance < rfFilter OR rfFilter = 0) AND
																					 male = (CASE WHEN womenQuantity > menQuantity 
																								  THEN 0 ELSE 1 END)
													 GROUP BY company));
								  
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET finalCompletion = 1;
			OPEN finalCursor;
			bucle:LOOP
				FETCH finalCursor INTO rsCode, rsEncrypt, rsCompany, rsBalance;
				
				IF (finalCompletion = 1 OR minimumFinalTravel = minimumInitialTravel) THEN
				  LEAVE bucle;
				END IF;
				
                IF NOT EXISTS(SELECT 1 FROM ResponseTable WHERE company = rsCompany) THEN
					INSERT INTO ResponseTable(clientCode, encrypt, company, balance)
					VALUES (rsCode,rsEncrypt,rsCompany,rsBalance);
				END IF;
				
				SET minimumFinalTravel = minimumFinalTravel + 1;
				
			END LOOP bucle;
			CLOSE finalCursor;
        END;
	ELSE   
        INSERT INTO ResponseTable(clientCode, encrypt, company, balance)
        VALUES ('NA',womenQuantity+menQuantity, '0', 0);
	END IF;
    
    SELECT clientCode, encrypt FROM ResponseTable
    ORDER BY balance desc, clientCode asc;
    DROP TEMPORARY TABLE ResponseTable;
	
END$$
DELIMITER ;
