/*
  OPENROWSET により Synapse Serverless SQL Pool から Azure Cosmos DB の分析ストアの読み取りアクセスが可能
*/

CREATE CREDENTIAL MyCosmosDbAccountCredential
WITH IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = '<Azure Cosmos DB キー>'
GO

SELECT top 5 *
FROM OPENROWSET(
      PROVIDER = 'CosmosDB',
      CONNECTION = 'Account=<Azure Cosmos DB アカウント名>;Database=SalesDB',
      OBJECT = 'SalesOrder',
      SERVER_CREDENTIAL = 'MyCosmosDbAccountCredential'
    ) AS rows
GO

SELECT top 5 *
FROM OPENROWSET(
      PROVIDER = 'CosmosDB',
      CONNECTION = 'Account=<Azure Cosmos DB アカウント名>;Database=SalesDB',
      OBJECT = 'Customer',
      SERVER_CREDENTIAL = 'MyCosmosDbAccountCredential'
    ) AS rows
GO

CREATE VIEW SalesOrderView AS
SELECT *
FROM OPENROWSET(
      PROVIDER = 'CosmosDB',
      CONNECTION = 'Account=<Azure Cosmos DB アカウント名>;Database=SalesDB',
      OBJECT = 'SalesOrder',
      SERVER_CREDENTIAL = 'MyCosmosDbAccountCredential'
    ) AS rows
GO

CREATE VIEW CustomerView AS
SELECT *
FROM OPENROWSET(
      PROVIDER = 'CosmosDB',
      CONNECTION = 'Account=<Azure Cosmos DB アカウント名>;Database=SalesDB',
      OBJECT = 'Customer',
      SERVER_CREDENTIAL = 'MyCosmosDbAccountCredential'
    ) AS rows
GO

SELECT 
  s.id as SalesOrderId
  , c.id AS CustomerId
  , JSON_VALUE(c.addresses, '$[0].country') AS Country
  , JSON_VALUE(c.addresses, '$[0].city')  AS City
  , s.orderdate AS OrderDate
  , s.shipdate AS ShipDate
FROM
  CustomerView c 
INNER JOIN
  SalesOrderView s
ON c.id = s.CustomerId
GO

DROP VIEW CustomerView
DROP VIEW SalesOrderView


DROP CREDENTIAL MyCosmosDbAccountCredential
GO
