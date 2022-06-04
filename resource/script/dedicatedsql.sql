-- 5章
CREATE TABLE [dbo].[TaxiDataSummary]
(
    [PickUpDate] [date] NULL,
    [PickUpBorough] [varchar](200) NULL,
    [PickUpZone] [varchar](200) NULL,
    [PaymentType] [varchar](11) NULL,
    [TotalTripCount] [int] NULL,
    [TotalPassengerCount] [int] NULL,
    [TotalDistanceTravelled] [decimal](38, 2) NULL,
    [TotalTipAmount] [decimal](38, 2) NULL,
    [TotalFareAmount] [decimal](38, 2) NULL,
    [TotalTripAmount] [decimal](38, 2) NULL
)
WITH
(
	DISTRIBUTION = round_robin,
	CLUSTERED COLUMNSTORE INDEX
)
GO

CREATE TABLE [dbo].[TaxiLocationLookup]
(
    [LocationID] [int] NULL,
    [Borough] [varchar](200) NULL,
    [Zone] [varchar](200) NULL,
    [ServiceZone] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = round_robin,
	CLUSTERED COLUMNSTORE INDEX
)
GO