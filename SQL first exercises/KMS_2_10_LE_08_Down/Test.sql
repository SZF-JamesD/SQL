USE bank;
DROP PROCEDURE IF EXISTS money_transfer;
DELIMITER //

CREATE PROCEDURE money_transfer(
	IN sender_account INTEGER,
    IN reciever_account INTEGER,
    IN amount DECIMAL(10,2))
    
BEGIN
    DECLARE sender_balance DECIMAL(10, 2);
    
	START TRANSACTION;
    
    SELECT kontostand INTO sender_balance
    FROM accounts
    WHERE kontonummer = sender_account
    FOR UPDATE;
    
    IF sender_balance >= amount THEN
		UPDATE accounts
        SET kontostand = kontostand - amount
        WHERE kontonummer = sender_account;
        
        UPDATE accounts
        SET kontostand = kontostand + amount
        WHERE kontonummer = reciever_account;
        
        COMMIT;
        
        SELECT 'Transfer successful.' AS message;
	ELSE
		ROLLBACK;
        
        SELECT 'Transaction rolled back: Insufficient funds' AS message;
	
    END IF;
END //

DELIMITER ;
	

CALL money_transfer(123456789, 987654321, 200.00);

CALL money_transfer(987654321, 321321321, 1000.00);    
    