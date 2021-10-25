CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgetdata` AS select `c`.`id` AS `id`,`c`.`code` AS `code`,`c`.`male` AS `male`,`c`.`type` AS `type`,`c`.`location` AS `location`,`c`.`company` AS `company`,`c`.`encrypt` AS `encrypt`,`ac`.`balance` AS `balance` from (`client` `c` join (select `account`.`client_id` AS `client_id`,sum(`account`.`balance`) AS `balance` from `account` group by `account`.`client_id`) `ac` on((`c`.`id` = `ac`.`client_id`))) order by `ac`.`balance` desc,`c`.`code`;