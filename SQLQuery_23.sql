

CREATE TABLE [vacation].[Traveller](

  [travel_id] [int] IDENTITY(1,1) NOT NULL,

  [first_name] [nvarchar](50) NULL,

  [last_name] [nvarchar](50) NULL,

  [destination_id] [int] NULL,

CONSTRAINT [PK_Traveler] PRIMARY KEY CLUSTERED 

(

  [travel_id] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

) ON [PRIMARY]

GO

CREATE TABLE [vacation].[Destination](
  [destination_id] [int] IDENTITY(1,1) NOT NULL,
  [destination_name] [nvarchar](50) NULL,
CONSTRAINT [PK_Destination] PRIMARY KEY CLUSTERED 
(
  [destination_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

 

ALTER TABLE [vacation].[Traveller]  WITH CHECK ADD FOREIGN KEY([destination_id])

REFERENCES [vacation].[Destination] ([destination_id])

GO


insert into vacation.destination values('Annakapalli');
insert into vacation.destination values('begumpet');
insert into vacation.destination values('kadapa');
insert into vacation.destination values('kammam');
insert into vacation.destination values('aler');


insert into vacation.Traveller values('Rohit','Vadlala', 1);
insert into vacation.Traveller values('lin','Vadlala', 2);
insert into vacation.Traveller values('cno','Vadlala', 2);
insert into vacation.Traveller values('der','Vadlala', 3);
insert into vacation.Traveller values('ade','Vadlala', 4);


select * from vacation.Traveller as Traveler

inner join [vacation].[Destination] as Destination on Traveler.destination_id = Destination.destination_id