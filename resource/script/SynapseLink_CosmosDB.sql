/*
  OPENROWSET により Synapse Serverless SQL Pool から Azure Cosmos DB の分析ストアの読み取りアクセスが可能
*/

CREATE CREDENTIAL MyCosmosDbAccountCredential
WITH IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = '<Azure Cosmos DB キー>'
GO

SELECT Country, City, Total_Customers, Total_Orders, Total_Revenue, Rank_Revenue, *
FROM OPENROWSET(
      PROVIDER = 'CosmosDB',
      CONNECTION = 'Account=<Azure Cosmos DB アカウント名>;Database=SalesDB',
      OBJECT = 'Sales',
      SERVER_CREDENTIAL = 'MyCosmosDbAccountCredential'
    ) AS rows
GO

DROP CREDENTIAL MyCosmosDbAccountCredential
GO
