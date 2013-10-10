IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'ACCOUNT_PREMIUM') AND type in (N'P', N'PC'))
    DROP PROCEDURE ACCOUNT_PREMIUM;
GO

CREATE PROCEDURE ACCOUNT_PREMIUM
@AccountID varchar(21),
@nRet smallint OUTPUT
AS
DECLARE @Hours datetime
    SET @Hours = 0 

SELECT @Hours = PremiumEndDate FROM TB_USER WHERE strAccountID = @AccountID

SET @nRet = DATEDIFF(HH,GETDATE(),@Hours)

IF @nRet <= 0
BEGIN
	SET @nRet = -1
	UPDATE TB_USER SET PremiumType = 0 WHERE strAccountID = @AccountID
END
RETURN
GO
