DECLARE @nIndex int
DECLARE @NpcID smallint
DECLARE @NpcName varchar(250)
DECLARE @Note varchar(400)
DECLARE @ItemName varchar(400)
DECLARE @OriginItem1 int, @OriginItem2 int, @OriginItem3 int, @OriginItem4 int, @OriginItem5 int, @OriginItem6 int, @OriginItem7 int, @OriginItem8 int, @OriginItem9 int, @OriginItem10 int, @OriginItem11 int
DECLARE @OriginItemCount1 smallint, @OriginItemCount2 smallint, @OriginItemCount3 smallint, @OriginItemCount4 smallint, @OriginItemCount5 smallint, @OriginItemCount6 smallint, @OriginItemCount7 smallint, @OriginItemCount8 smallint, @OriginItemCount9 smallint, @OriginItemCount10 smallint, @OriginItemCount11 smallint
DECLARE @ExchangeItem1 int, @ExchangeItem2 int, @ExchangeItem3 int, @ExchangeItem4 int, @ExchangeItem5 int
DECLARE @ExchangeItemCount1 smallint, @ExchangeItemCount2 smallint, @ExchangeItemCount3 smallint, @ExchangeItemCount4 smallint, @ExchangeItemCount5 smallint

SET @NpcID = 19073
SET @NpcName = RTRIM(LTRIM('[Hepa Pupil] Shozin'))
SET @Note = RTRIM(LTRIM('Shadow Piece'))

DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @ItemName = 'Raum'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389227000
SET @OriginItem2 = 389235000
SET @OriginItem3 = 389239000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 128410901
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 128420902
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 128430903
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 128440904
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Wirinom'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389224000
SET @OriginItem2 = 389234000
SET @OriginItem3 = 389238000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 127410284
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 127420285
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 127430286
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 127440287
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Baal'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389225000
SET @OriginItem2 = 389234000
SET @OriginItem3 = 389238000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 139410284
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 139420285
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 139430286
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 139440287
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Nebiros'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389226000
SET @OriginItem2 = 389234000
SET @OriginItem3 = 389238000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 159410312
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 159420313
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 159430314
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 159440315
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Windforce'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389228000
SET @OriginItem2 = 389235000
SET @OriginItem3 = 389239000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 180410899
SET @ExchangeItemCount1 = 1500
SET @ExchangeItem2 = 180420900
SET @ExchangeItemCount2 = 1500
SET @ExchangeItem3 = 180430901
SET @ExchangeItemCount3 = 1500
SET @ExchangeItem4 = 180440902
SET @ExchangeItemCount4 = 1500
SET @ExchangeItem5 = 180450903
SET @ExchangeItemCount5 = 1500

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Fulitol'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389229000
SET @OriginItem2 = 389236000
SET @OriginItem3 = 389240000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 182410312
SET @ExchangeItemCount1 = 2500
SET @ExchangeItem2 = 182420313
SET @ExchangeItemCount2 = 2500
SET @ExchangeItem3 = 182430314
SET @ExchangeItemCount3 = 2500

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Molok'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389230000
SET @OriginItem2 = 389236000
SET @OriginItem3 = 389240000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 183230317
SET @ExchangeItemCount1 = 2500
SET @ExchangeItem2 = 183410315
SET @ExchangeItemCount2 = 2500
SET @ExchangeItem3 = 183420316
SET @ExchangeItemCount3 = 2500

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Faun'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389231000
SET @OriginItem2 = 389236000
SET @OriginItem3 = 389240000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 184410318
SET @ExchangeItemCount1 = 2500
SET @ExchangeItem2 = 184420319
SET @ExchangeItemCount2 = 2500
SET @ExchangeItem3 = 184430320
SET @ExchangeItemCount3 = 2500

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Leonard'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389232000
SET @OriginItem2 = 389237000
SET @OriginItem3 = 389241000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 198410898
SET @ExchangeItemCount1 = 2500
SET @ExchangeItem2 = 198420899
SET @ExchangeItemCount2 = 2500
SET @ExchangeItem3 = 198430900
SET @ExchangeItemCount3 = 2500

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Gab'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389233000
SET @OriginItem2 = 389237000
SET @OriginItem3 = 389241000

-- Static
SET @OriginItemCount1 = 10
SET @OriginItemCount2 = 50
SET @OriginItemCount3 = 80

-- Nightmare Crystal (Static)
SET @OriginItem4 = 389242000
SET @OriginItemCount4 = 10

SET @ExchangeItem1 = 197410192
SET @ExchangeItemCount1 = 2500
SET @ExchangeItem2 = 197420193
SET @ExchangeItemCount2 = 2500

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Krowaz Upper Garment'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389271000
SET @OriginItem2 = 389245000
SET @OriginItem3 = 389244000
SET @OriginItem4 = 389246000
SET @OriginItem5 = 389249000

-- Static
SET @OriginItemCount1 = 4
SET @OriginItemCount2 = 8
SET @OriginItemCount3 = 8
SET @OriginItemCount4 = 4
SET @OriginItemCount5 = 1

SET @ExchangeItem1 = 248001001
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 288001001
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 208001001
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 268001001
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Krowaz Lower Garment'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389271000
SET @OriginItem2 = 389245000
SET @OriginItem3 = 389244000
SET @OriginItem4 = 389246000
SET @OriginItem5 = 389247000

-- Static
SET @OriginItemCount1 = 3
SET @OriginItemCount2 = 7
SET @OriginItemCount3 = 7
SET @OriginItemCount4 = 4
SET @OriginItemCount5 = 1

SET @ExchangeItem1 = 248002001
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 288002001
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 208002001
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 268002001
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Krowaz Helmet'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389271000
SET @OriginItem2 = 389245000
SET @OriginItem3 = 389244000
SET @OriginItem4 = 389246000
SET @OriginItem5 = 386000000

-- Static
SET @OriginItemCount1 = 3
SET @OriginItemCount2 = 7
SET @OriginItemCount3 = 7
SET @OriginItemCount4 = 3
SET @OriginItemCount5 = 1

SET @ExchangeItem1 = 268003001
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 248003001
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 288003001
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 208003001
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Krowaz Gaunlets'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389271000
SET @OriginItem2 = 389245000
SET @OriginItem3 = 389244000
SET @OriginItem4 = 389246000
SET @OriginItem5 = 389248000

-- Static
SET @OriginItemCount1 = 2
SET @OriginItemCount2 = 6
SET @OriginItemCount3 = 6
SET @OriginItemCount4 = 3
SET @OriginItemCount5 = 1

SET @ExchangeItem1 = 268004001
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 248004001
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 288004001
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 208004001
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)

SET @ItemName = 'Krowaz Boots'
DELETE FROM ITEM_EXCHANGE WHERE nNpcNum = @NpcID AND strNote LIKE '%' + RTRIM(LTRIM(@ItemName)) + '%'

SET @OriginItem1 = 0
SET @OriginItemCount1 = 0
SET @OriginItem2 = 0
SET @OriginItemCount2 = 0
SET @OriginItem3 = 0
SET @OriginItemCount3 = 0
SET @OriginItem4 = 0
SET @OriginItemCount4 = 0
SET @OriginItem5 = 0
SET @OriginItemCount5 = 0
SET @OriginItem6 = 0
SET @OriginItemCount6 = 0
SET @OriginItem7 = 0
SET @OriginItemCount7 = 0
SET @OriginItem8 = 0
SET @OriginItemCount8 = 0
SET @OriginItem9 = 0
SET @OriginItemCount9 = 0
SET @OriginItem10 = 0
SET @OriginItemCount10 = 0
SET @OriginItem11 = 0
SET @OriginItemCount11 = 0

SET @ExchangeItem1 = 0
SET @ExchangeItemCount1 = 0
SET @ExchangeItem2 = 0
SET @ExchangeItemCount2 = 0
SET @ExchangeItem3 = 0
SET @ExchangeItemCount3 = 0
SET @ExchangeItem4 = 0
SET @ExchangeItemCount4 = 0
SET @ExchangeItem5 = 0
SET @ExchangeItemCount5 = 0

SET @OriginItem1 = 389271000
SET @OriginItem2 = 389245000
SET @OriginItem3 = 389244000
SET @OriginItem4 = 389246000
SET @OriginItem5 = 389243000

-- Static
SET @OriginItemCount1 = 2
SET @OriginItemCount2 = 6
SET @OriginItemCount3 = 6
SET @OriginItemCount4 = 3
SET @OriginItemCount5 = 1

SET @ExchangeItem1 = 268005001
SET @ExchangeItemCount1 = 2000
SET @ExchangeItem2 = 248005001
SET @ExchangeItemCount2 = 2000
SET @ExchangeItem3 = 288005001
SET @ExchangeItemCount3 = 2000
SET @ExchangeItem4 = 208005001
SET @ExchangeItemCount4 = 2000

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' Normal Exchange',102,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@OriginItem11,@OriginItemCount11,@ExchangeItem1,@ExchangeItemCount1,@ExchangeItem2,@ExchangeItemCount2,@ExchangeItem3,@ExchangeItemCount3,@ExchangeItem4,@ExchangeItemCount4,@ExchangeItem5,@ExchangeItemCount5)

SET @nIndex = (SELECT TOP 1 nIndex+1 FROM ITEM_EXCHANGE ORDER BY nIndex DESC)
INSERT INTO ITEM_EXCHANGE VALUES (@nIndex,@NpcID,@NpcName,@ItemName + ' with ' + @Note + ' Exchange',102,700009000,1,@OriginItem1,@OriginItemCount1,@OriginItem2,@OriginItemCount2,@OriginItem3,@OriginItemCount3,@OriginItem4,@OriginItemCount4,@OriginItem5,@OriginItemCount5,@OriginItem6,@OriginItemCount6,@OriginItem7,@OriginItemCount7,@OriginItem8,@OriginItemCount8,@OriginItem9,@OriginItemCount9,@OriginItem10,@OriginItemCount10,@ExchangeItem1,@ExchangeItemCount1 * 1.20,@ExchangeItem2,@ExchangeItemCount2 * 1.20,@ExchangeItem3,@ExchangeItemCount3 * 1.20,@ExchangeItem4,@ExchangeItemCount4 * 1.20,@ExchangeItem5,@ExchangeItemCount5 * 1.20)