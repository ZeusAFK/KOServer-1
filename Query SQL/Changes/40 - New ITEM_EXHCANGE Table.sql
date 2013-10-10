IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ITEM_EXHANGE_ORIGINAL')
    DROP TABLE ITEM_EXHANGE_ORIGINAL;
GO

SELECT * INTO ITEM_EXHANGE_ORIGINAL FROM ITEM_EXCHANGE
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ITEM_EXCHANGE')
    DROP TABLE ITEM_EXCHANGE;
GO

CREATE TABLE [dbo].[ITEM_EXCHANGE](
	[nIndex] [int] NOT NULL,
	[nNpcNum] [smallint] NOT NULL,
	[strNpcName] [varchar](50) NULL,
	[strNote] [varchar](100) NULL,
	[bRandomFlag] [tinyint] NOT NULL,
	[nOriginItemNum1] [int] NOT NULL,
	[nOriginItemCount1] [smallint] NOT NULL,
	[nOriginItemNum2] [int] NOT NULL,
	[nOriginItemCount2] [smallint] NOT NULL,
	[nOriginItemNum3] [int] NOT NULL,
	[nOriginItemCount3] [smallint] NOT NULL,
	[nOriginItemNum4] [int] NOT NULL,
	[nOriginItemCount4] [smallint] NOT NULL,
	[nOriginItemNum5] [int] NOT NULL,
	[nOriginItemCount5] [smallint] NOT NULL,
	[nOriginItemNum6] [int] NOT NULL,
	[nOriginItemCount6] [smallint] NOT NULL,
	[nOriginItemNum7] [int] NOT NULL,
	[nOriginItemCount7] [smallint] NOT NULL,
	[nOriginItemNum8] [int] NOT NULL,
	[nOriginItemCount8] [smallint] NOT NULL,
	[nOriginItemNum9] [int] NOT NULL,
	[nOriginItemCount9] [smallint] NOT NULL,
	[nOriginItemNum10] [int] NOT NULL,
	[nOriginItemCount10] [smallint] NOT NULL,
	[nOriginItemNum11] [int] NOT NULL,
	[nOriginItemCount11] [smallint] NOT NULL,
	[nExchangeItemNum1] [int] NOT NULL,
	[nExchangeItemCount1] [smallint] NOT NULL,
	[nExchangeItemNum2] [int] NOT NULL,
	[nExchangeItemCount2] [smallint] NOT NULL,
	[nExchangeItemNum3] [int] NOT NULL,
	[nExchangeItemCount3] [smallint] NOT NULL,
	[nExchangeItemNum4] [int] NOT NULL,
	[nExchangeItemCount4] [smallint] NOT NULL,
	[nExchangeItemNum5] [int] NOT NULL,
	[nExchangeItemCount5] [smallint] NOT NULL
) ON [PRIMARY]

GO

INSERT INTO ITEM_EXCHANGE SELECT [nIndex],[nNpcNum],[strNpcName],[strNote],[bRandomFlag],[nOriginItemNum1],[nOriginItemCount1],[nOriginItemNum2],[nOriginItemCount2],[nOriginItemNum3],[nOriginItemCount3],[nOriginItemNum4],[nOriginItemCount4],[nOriginItemNum5],[nOriginItemCount5],0,0,0,0,0,0,0,0,0,0,0,0,[nExchangeItemNum1],[nExchangeItemCount1],[nExchangeItemNum2],[nExchangeItemCount2],[nExchangeItemNum3],[nExchangeItemCount3],[nExchangeItemNum4],[nExchangeItemCount4],[nExchangeItemNum5],[nExchangeItemCount5] FROM [dbo].[ITEM_EXHANGE_ORIGINAL]
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ITEM_EXHANGE_ORIGINAL')
    DROP TABLE ITEM_EXHANGE_ORIGINAL;
GO