SELECT * FROM evalart_reto.account;
SELECT * FROM evalart_reto.client;

-------------------------
SET @TCFilter = 0, @UGFilter = '2', 
	@RIFilter = 30000, @RFFilter = 900000;
    
SELECT fnGetDataCount(11,9,@RIFilter,@RFFilter,1);

-- 89
SELECT * FROM vGetData v
		   WHERE v.code IN (SELECT vD.code FROM vGetData vD 
                                           WHERE vD.balance = (SELECT MAX(balance) FROM vGetData
																				   WHERE company = vD.company and male = 1 and location = 9 AND type = 11
																				   GROUP BY company));

-- 711176.00
      
SELECT * FROM vGetData
WHERE (type = @TCFilter OR @TCFilter = 0) AND 
	  (location = @UGFilter OR @UGFilter = '') AND 
	  (balance > @RIFilter OR @RIFilter = 0) AND 
	  (balance < @RFFilter OR @RFFilter = 0);

-----------
CALL getSelectGroup(@TCFilter, @UGFilter, @RIFilter, @RFFilter);
-------------
----------------------------------------------------------------

                               


