-- 5章、6章
create table [dbo].[TaxiDataSummary]
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
with
(
    distribution = round_robin,
    clustered columnstore index
)

go

create table [dbo].[TaxiLocationLookup]
(
    [LocationID] [int] NULL,
    [Borough] [varchar](200) NULL,
    [Zone] [varchar](200) NULL,
    [ServiceZone] [varchar](200) NULL
)
with
(
    distribution = round_robin,
    clustered columnstore index
)
go