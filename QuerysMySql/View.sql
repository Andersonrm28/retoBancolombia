CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `evalart_reto`.`vgetdata` AS
    SELECT 
        `c`.`id` AS `id`,
        `c`.`code` AS `code`,
        `c`.`male` AS `male`,
        `c`.`type` AS `type`,
        `c`.`location` AS `location`,
        `c`.`company` AS `company`,
        `c`.`encrypt` AS `encrypt`,
        `ac`.`balance` AS `balance`
    FROM
        (`evalart_reto`.`client` `c`
        JOIN (SELECT 
            `evalart_reto`.`account`.`client_id` AS `client_id`,
                SUM(`evalart_reto`.`account`.`balance`) AS `balance`
        FROM
            `evalart_reto`.`account`
        GROUP BY `evalart_reto`.`account`.`client_id`) `ac` ON ((`c`.`id` = `ac`.`client_id`)))
    ORDER BY `ac`.`balance` DESC , `c`.`code`