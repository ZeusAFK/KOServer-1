ALTER TABLE KNIGHTS ADD ClanPointMethod [tinyint] NULL
ALTER TABLE KNIGHTS ADD  CONSTRAINT [DF_KNIGHTS_ClanPointMethod]  DEFAULT ((0)) FOR [ClanPointMethod]
UPDATE KNIGHTS SET ClanPointMethod = 0
GO

ALTER PROCEDURE [dbo].[UPDATE_KNIGHTS]
@nRet		smallint OUTPUT, 
@Type		tinyint,
@UserId 	char(21), 
@KnightsIndex	smallint,
@Domanation	tinyint
AS
DECLARE @Row tinyint 
DECLARE @Members tinyint
DECLARE @UserMembers tinyint
DECLARE @KnightsNumber smallint
DECLARE @ViceChief_1 char(21)
DECLARE @ViceChief_2 char(21)
DECLARE @ViceChief_3 char(21)
	
SET @Row = 0
SET @KnightsNumber = 0

SELECT @Row = COUNT(*) FROM KNIGHTS WHERE IDNum = @KnightsIndex
	
IF @Row = 0
BEGIN
	SET @nRet =  7
	RETURN
END

SELECT @Members = Members, @ViceChief_1=ViceChief_1, @ViceChief_2=ViceChief_2, @ViceChief_3=ViceChief_3 FROM KNIGHTS WHERE IDNum = @KnightsIndex
IF @Type = 18
BEGIN
	SELECT @UserMembers = COUNT(*) FROM USERDATA WHERE Knights = @KnightsIndex
	IF @Members >= 36 or @UserMembers >= 36
	BEGIN
		SET @nRet =  8
		RETURN
	END
END
ELSE 
BEGIN
	IF @Members > 36
	BEGIN
		SET @nRet =  8
		RETURN
	END
END

SELECT @Row = COUNT(*) FROM USERDATA WHERE strUserId = @UserId
IF @Row = 0 
BEGIN
	SET @nRet =  2
	RETURN
END

BEGIN TRAN	
IF @Type = 18					-- JOIN
BEGIN
	UPDATE KNIGHTS SET Members = Members + 1 WHERE IDNum = @KnightsIndex
	INSERT INTO KNIGHTS_USER ( sIDNum, strUserID  ) VALUES	 (@KnightsIndex,  @UserId )
END
ELSE IF @Type = 19 or @Type = 20 or @Type = 23	-- WITHDRAW, REMOVE, REJECT
BEGIN
	IF @Members <= 1
		UPDATE KNIGHTS SET Members = 1 WHERE IDNum = @KnightsIndex
	ELSE 
		UPDATE KNIGHTS SET Members = Members - 1 WHERE IDNum = @KnightsIndex
		DELETE FROM KNIGHTS_USER WHERE strUserID = @UserId
		IF @ViceChief_1 = @UserId
			UPDATE KNIGHTS SET ViceChief_1 = NULL WHERE IDNum = @KnightsIndex	
		IF @ViceChief_2 = @UserId
			UPDATE KNIGHTS SET ViceChief_2 = NULL WHERE IDNum = @KnightsIndex	
		IF @ViceChief_3 = @UserId
			UPDATE KNIGHTS SET ViceChief_3 = NULL WHERE IDNum = @KnightsIndex	
END
ELSE IF @Type = 25				-- Change Chief
BEGIN
	UPDATE KNIGHTS SET Chief = @UserId WHERE IDNum = @KnightsIndex
	IF @ViceChief_1 = @UserId
		UPDATE KNIGHTS SET ViceChief_1 = NULL WHERE IDNum = @KnightsIndex	
	IF @ViceChief_2 = @UserId
		UPDATE KNIGHTS SET ViceChief_2 = NULL WHERE IDNum = @KnightsIndex	
	IF @ViceChief_3 = @UserId
		UPDATE KNIGHTS SET ViceChief_3 = NULL WHERE IDNum = @KnightsIndex	
END
ELSE IF @Type = 76 -- Clan Point Method
BEGIN
	UPDATE KNIGHTS SET ClanPointMethod = @Domanation WHERE IDNum = @KnightsIndex
END
ELSE IF @Type = 95 -- Change Chief
BEGIN
	UPDATE KNIGHTS SET Chief = @UserId WHERE IDNum = @KnightsIndex
	UPDATE KNIGHTS SET ViceChief_1 = NULL WHERE ViceChief_1 = @UserId AND ViceChief_1 IS NOT NULL AND IDNum = @KnightsIndex 
	UPDATE KNIGHTS SET ViceChief_2 = NULL WHERE ViceChief_2 = @UserId AND ViceChief_2 IS NOT NULL AND IDNum = @KnightsIndex
	UPDATE KNIGHTS SET ViceChief_3 = NULL WHERE ViceChief_3 = @UserId AND ViceChief_3 IS NOT NULL AND IDNum = @KnightsIndex
END
ELSE IF @Type = 26				-- Change Vice Chief
BEGIN
	IF @ViceChief_1 IS NOT NULL AND @ViceChief_2 IS NOT NULL AND @ViceChief_3 IS NOT NULL
	BEGIN
		SET @nRet =  8
		COMMIT TRAN
		RETURN
	END

	IF @ViceChief_1 IS NULL
		UPDATE KNIGHTS SET ViceChief_1 = @UserId WHERE IDNum = @KnightsIndex
	ELSE IF @ViceChief_2 IS NULL
		UPDATE KNIGHTS SET ViceChief_2 = @UserId WHERE IDNum = @KnightsIndex
	ELSE IF @ViceChief_3 IS NULL
		UPDATE KNIGHTS SET ViceChief_3 = @UserId WHERE IDNum = @KnightsIndex
	END

	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  2
		RETURN
	END

IF @Type = 20	-- REMOVE
	UPDATE USERDATA SET Knights = -1, Fame = 0  WHERE strUserId = @UserId
	
COMMIT TRAN
SET @nRet =  0
GO