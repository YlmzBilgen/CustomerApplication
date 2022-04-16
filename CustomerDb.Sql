USE [CustomerDb]
GO
/****** Object:  Table [dbo].[City]    Script Date: 3/21/2022 12:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](255) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/21/2022 12:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecordStatus] [char](1) NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[CitizenshipNumber] [varchar](11) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[BirthPlace] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[CityId] [int] NULL,
	[TownId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town]    Script Date: 3/21/2022 12:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[Id] [int] NOT NULL,
	[TownName] [nvarchar](255) NULL,
	[CityId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (1, N'ADANA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (2, N'ADIYAMAN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (3, N'AFYON')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (4, N'AĞRI')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (5, N'AMASYA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (6, N'ANKARA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (7, N'ANTALYA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (8, N'ARTVİN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (9, N'AYDIN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (10, N'BALIKESİR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (11, N'BİLECİK')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (12, N'BİNGÖL')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (13, N'BİTLİS')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (14, N'BOLU')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (15, N'BURDUR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (16, N'BURSA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (17, N'ÇANAKKALE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (18, N'ÇANKIRI')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (19, N'ÇORUM')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (20, N'DENİZLİ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (21, N'DİYARBAKIR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (22, N'EDİRNE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (23, N'ELAZIĞ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (24, N'ERZİNCAN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (25, N'ERZURUM')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (26, N'ESKİŞEHİR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (27, N'GAZİANTEP')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (28, N'GİRESUN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (29, N'GÜMÜŞHANE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (30, N'HAKKARİ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (31, N'HATAY')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (32, N'ISPARTA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (33, N'İÇEL')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (34, N'İSTANBUL')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (35, N'İZMİR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (36, N'KARS')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (37, N'KASTAMONU')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (38, N'KAYSERİ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (39, N'KIRKLARELİ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (40, N'KIRŞEHİR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (41, N'KOCAELİ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (42, N'KONYA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (43, N'KÜTAHYA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (44, N'MALATYA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (45, N'MANİSA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (46, N'KAHRAMANMARAŞ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (47, N'MARDİN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (48, N'MUĞLA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (49, N'MUŞ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (50, N'NEVŞEHİR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (51, N'NİĞDE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (52, N'ORDU')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (53, N'RİZE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (54, N'SAKARYA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (55, N'SAMSUN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (56, N'SİİRT')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (57, N'SİNOP')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (58, N'SİVAS')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (59, N'TEKİRDAĞ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (60, N'TOKAT')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (61, N'TRABZON')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (62, N'TUNCELİ')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (63, N'ŞANLIURFA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (64, N'UŞAK')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (65, N'VAN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (66, N'YOZGAT')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (67, N'ZONGULDAK')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (68, N'AKSARAY')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (69, N'BAYBURT')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (70, N'KARAMAN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (71, N'KIRIKKALE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (72, N'BATMAN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (73, N'ŞIRNAK')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (74, N'BARTIN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (75, N'ARDAHAN')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (76, N'IĞDIR')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (77, N'YALOVA')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (78, N'KARABÜK')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (79, N'KİLİS')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (80, N'OSMANİYE')
GO
INSERT [dbo].[City] ([Id], [CityName]) VALUES (81, N'DÜZCE')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [RecordStatus], [Name], [Surname], [CitizenshipNumber], [BirthDate], [BirthPlace], [Age], [Gender], [CityId], [TownId]) VALUES (5, N'A', N'Yilmaz', N'Bilgen', N'14837317712', CAST(N'2022-03-20T22:08:00.000' AS DateTime), N'Bahçelievler', 0, N'E', 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Town] ON 
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (1, N'SEYHAN', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (2, N'CEYHAN', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (3, N'FEKE', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (4, N'KARAİSALI', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (5, N'KARATAŞ', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (6, N'KOZAN', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (7, N'POZANTI', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (8, N'SAİMBEYLİ', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (9, N'TUFANBEYLİ', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (10, N'YUMURTALIK', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (11, N'YÜREĞİR', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (12, N'ALADAĞ', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (13, N'İMAMOĞLU', 1)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (15, N'BESNİ', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (16, N'ÇELİKHAN', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (17, N'GERGER', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (18, N'GÖLBAŞI', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (19, N'KAHTA', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (20, N'SAMSAT', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (21, N'SİNCİK', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (22, N'TUT', 2)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (23, N'AFYONMERKEZ', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (24, N'BOLVADİN', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (25, N'ÇAY', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (26, N'DAZKIRI', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (27, N'DİNAR', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (28, N'EMİRDAĞ', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (29, N'İHSANİYE', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (30, N'SANDIKLI', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (31, N'SİNANPAŞA', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (32, N'SULDANDAĞI', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (33, N'ŞUHUT', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (34, N'BAŞMAKÇI', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (35, N'BAYAT', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (36, N'İŞCEHİSAR', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (37, N'ÇOBANLAR', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (38, N'EVCİLER', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (39, N'HOCALAR', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (40, N'KIZILÖREN', 3)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (41, N'AKSARAY MERKEZ', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (42, N'ORTAKÖY', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (43, N'AĞAÇÖREN', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (44, N'GÜZELYURT', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (45, N'SARIYAHŞİ', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (46, N'ESKİL', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (47, N'GÜLAĞAÇ', 68)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (48, N'AMASYA MERKEZ', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (49, N'GÖYNÜÇEK', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (51, N'MERZİFON', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (52, N'SULUOVA', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (53, N'TAŞOVA', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (54, N'HAMAMÖZÜ', 5)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (55, N'ALTINDAĞ', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (56, N'AYAS', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (57, N'BALA', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (58, N'BEYPAZARI', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (59, N'ÇAMLIdERE', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (60, N'ÇANKAYA', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (61, N'ÇUBUK', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (62, N'ELMADAĞ', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (63, N'GÜDÜL', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (64, N'HAYMANA', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (65, N'KALECİK', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (66, N'KIZILCAHAMAM', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (67, N'NALLIHAN', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (68, N'POLATLI', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (69, N'ŞEREFLİKOÇHİSAR', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (70, N'YENİMAHALLE', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (71, N'GÖLBAŞI', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (72, N'KEÇİÖREN', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (73, N'MAMAK', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (74, N'SİNCAN', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (75, N'KAZAN', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (76, N'AKYURT', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (77, N'ETİMESGUT', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (78, N'EVREN', 6)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (79, N'ANSEKİ', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (80, N'ALANYA', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (81, N'ANTALYA MERKEZİ', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (82, N'ELMALI', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (83, N'FİNİKE', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (84, N'GAZİPAŞA', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (85, N'GÜNDOĞMUŞ', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (86, N'KAŞ', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (87, N'KORKUTELİ', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (88, N'KUMLUCA', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (89, N'MANAVGAT', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (90, N'SERİK', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (91, N'DEMRE', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (92, N'İBRADI', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (93, N'KEMER', 7)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (94, N'ARDAHAN MERKEZ', 75)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (95, N'GÖLE', 75)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (96, N'ÇILDIR', 75)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (97, N'HANAK', 75)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (98, N'POSOF', 75)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (100, N'ARDANUÇ', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (101, N'ARHAVİ', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (102, N'ARTVİN MERKEZ', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (103, N'BORÇKA', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (104, N'HOPA', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (105, N'ŞAVŞAT', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (106, N'YUSUFELİ', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (107, N'MURGUL', 8)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (108, N'AYDIN MERKEZ', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (109, N'BOZDOĞAN', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (110, N'ÇİNE', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (111, N'GERMENCİK', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (112, N'KARACASU', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (113, N'KOÇARLI', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (114, N'KUŞADASI', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (115, N'KUYUCAK', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (116, N'NAZİLLİ', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (117, N'SÖKE', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (118, N'SULTANHİSAR', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (119, N'YENİPAZAR', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (120, N'BUHARKENT', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (121, N'İNCİRLİOVA', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (122, N'KARPUZLU', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (123, N'KÖŞK', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (124, N'DIdİM', 9)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (125, N'AĞRI MERKEZ', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (126, N'DİYADİN', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (127, N'DOĞUBEYAZIT', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (128, N'ELEŞKİRT', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (129, N'HAMUR', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (130, N'PATNOS', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (131, N'TAŞLIÇAY', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (132, N'TUTAK', 4)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (133, N'AYVALIK', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (134, N'BALIKESİR MERKEZ', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (135, N'BALYA', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (136, N'BANDIRMA', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (137, N'BİGADİÇ', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (138, N'BURHANİYE', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (139, N'DURSUNBEY', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (140, N'EDREMİT', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (141, N'ERDEK', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (142, N'GÖNEN', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (143, N'HAVRAN', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (144, N'İVRİNDİ', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (145, N'KEPSUT', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (146, N'MANYAS', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (147, N'SAVAŞTEPE', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (148, N'SINDIRGI', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (149, N'SUSURLUK', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (150, N'MARMARA', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (151, N'GÖMEÇ', 10)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (152, N'BARTIN MERKEZ', 74)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (153, N'KURUCAŞİLE', 74)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (154, N'ULUS', 74)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (155, N'AMASRA', 74)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (156, N'BATMAN MERKEZ', 72)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (157, N'BEŞİRİ', 72)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (158, N'GERCÜŞ', 72)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (159, N'KOZLUK', 72)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (160, N'SASON', 72)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (161, N'HASANKEYF', 72)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (162, N'BAYBURT MERKEZ', 69)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (163, N'AYDINTEPE', 69)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (164, N'DEMİRÖZÜ', 69)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (165, N'BOLU MERKEZ', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (166, N'GEREDE', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (167, N'GÖYNÜK', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (168, N'KIBRISCIK', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (169, N'MENGEN', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (170, N'MUDURNU', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (171, N'SEBEN', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (172, N'DÖRTDİVAN', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (173, N'YENİÇAĞA', 14)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (174, N'AĞLASUN', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (175, N'BUCAK', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (176, N'BURDUR MERKEZ', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (177, N'GÖLHİSAR', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (178, N'TEFENNİ', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (179, N'YEŞİLOVA', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (180, N'KARAMANLI', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (181, N'KEMER', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (182, N'ALTINYAYLA', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (183, N'ÇAVDIR', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (184, N'ÇELTİKÇİ', 15)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (185, N'GEMLİK', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (186, N'İNEGÖL', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (187, N'İZNİK', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (188, N'KARACABEY', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (189, N'KELES', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (190, N'MUDANYA', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (191, N'MUSTAFA K. PAŞA', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (192, N'ORHANELİ', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (193, N'ORHANGAZİ', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (194, N'YENİŞEHİR', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (195, N'BÜYÜK ORHAN', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (196, N'HARMANCIK', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (197, N'NÜLİFER', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (198, N'OSMAN GAZİ', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (200, N'GÜRSU', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (201, N'KESTEL', 16)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (202, N'BİLECİK MERKEZ', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (203, N'BOZÜYÜK', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (204, N'GÖLPAZARI', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (205, N'OSMANELİ', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (206, N'PAZARYERİ', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (207, N'SÖĞÜT', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (208, N'YENİPAZAR', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (209, N'İNHİSAR', 11)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (210, N'BİNGÖL MERKEZ', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (211, N'GENÇ', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (212, N'KARLIOVA', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (213, N'KİGI', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (214, N'SOLHAN', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (215, N'ADAKLI', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (216, N'YAYLADERE', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (217, N'YEDİSU', 12)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (218, N'ADTownVAZ', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (219, N'AHLAT', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (220, N'BİTLİS MERKEZ', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (221, N'HİZAN', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (222, N'MUTKİ', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (223, N'TATVAN', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (224, N'GÜROYMAK', 13)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (225, N'DENİZLİ MERKEZ', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (226, N'ACIPAYAM', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (227, N'BULDAN', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (228, N'ÇAL', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (229, N'ÇAMELİ', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (230, N'ÇARDAK', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (231, N'ÇİVRİL', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (232, N'GÜNEY', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (233, N'KALE', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (234, N'SARAYKÖY', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (235, N'TAVAS', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (236, N'BABADAĞ', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (237, N'BEKİLLİ', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (238, N'HONAZ', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (239, N'SERİNHİSAR', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (240, N'AKKÖY', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (241, N'BAKLAN', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (242, N'BEYAĞAÇ', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (243, N'BOZKURT', 20)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (244, N'DÜZCE MERKEZ', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (245, N'AKÇAKOCA', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (246, N'YIĞILCA', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (247, N'CUMAYERİ', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (248, N'GÖLYAKA', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (249, N'ÇİLİMLİ', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (250, N'GÜMÜŞOVA', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (251, N'KAYNAŞLI', 81)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (252, N'DİYARBAKIR MERKEZ', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (253, N'BİSMİL', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (254, N'ÇERMİK', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (255, N'ÇINAR', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (256, N'ÇÜNGÜŞ', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (257, N'DİCLE', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (258, N'ERGANİ', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (259, N'HANİ', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (260, N'HAZRO', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (261, N'KULP', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (262, N'LİCE', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (263, N'SİLVAN', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (264, N'EĞİL', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (265, N'KOCAKÖY', 21)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (266, N'EDİRNE MERKEZ', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (267, N'ENEZ', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (268, N'HAVSA', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (269, N'İPSALA', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (270, N'KEŞAN', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (271, N'LALAPAŞA', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (272, N'MERİÇ', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (273, N'UZUNKÖPRÜ', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (274, N'SÜLOĞLU', 22)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (275, N'ELAZIĞ MERKEZ', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (276, N'AĞIN', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (277, N'BASKİL', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (278, N'KARAKOÇAN', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (279, N'KEBAN', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (280, N'MADEN', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (281, N'PALU', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (282, N'SİVRİCE', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (283, N'ARICAK', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (284, N'KOVANCILAR', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (285, N'ALACAKAYA', 23)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (286, N'ERZURUM MERKEZ', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (287, N'PALANDÖKEN', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (288, N'AŞKALE', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (289, N'ÇAT', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (290, N'HINIS', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (291, N'HORASAN', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (292, N'OLTU', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (293, N'İSPİR', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (294, N'KARAYAZI', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (295, N'NARMAN', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (296, N'OLUR', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (297, N'PASİNLER', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (298, N'ŞENKAYA', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (300, N'TORTUM', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (301, N'KARAÇOBAN', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (302, N'UZUNDERE', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (303, N'PAZARYOLU', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (304, N'ILICA', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (305, N'KÖPRÜKÖY', 25)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (306, N'ÇAYIRLI', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (307, N'ERZİNCAN MERKEZ', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (308, N'İLİÇ', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (309, N'KEMAH', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (310, N'KEMALİYE', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (311, N'REFAHİYE', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (312, N'TERCAN', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (313, N'OTLUKBELİ', 24)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (314, N'ESKİŞEHİR MERKEZ', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (315, N'ÇİFTELER', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (316, N'MAHMUDİYE', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (317, N'MİHALIÇLIK', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (318, N'SARICAKAYA', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (319, N'SEYİTGAZİ', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (320, N'SİVRİHİSAR', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (321, N'ALPU', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (322, N'BEYLİKOVA', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (323, N'İNÖNÜ', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (324, N'GÜNYÜZÜ', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (325, N'HAN', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (326, N'MİHALGAZİ', 26)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (327, N'ARABAN', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (328, N'İSLAHİYE', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (329, N'NİZİP', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (330, N'OĞUZELİ', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (331, N'YAVUZELİ', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (332, N'ŞAHİNBEY', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (333, N'ŞEHİT KAMİL', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (334, N'KARKAMIŞ', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (335, N'NURDAĞI', 27)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (336, N'GÜMÜŞHANE MERKEZ', 29)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (337, N'KELKİT', 29)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (338, N'ŞİRAN', 29)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (339, N'TORUL', 29)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (340, N'KÖSE', 29)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (341, N'KÜRTÜN', 29)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (342, N'ALUCRA', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (343, N'BULANCAK', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (344, N'DERELİ', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (345, N'ESPİYE', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (346, N'EYNESİL', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (347, N'GİRESUN MERKEZ', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (348, N'GÖRELE', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (349, N'KEŞAP', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (350, N'ŞEBİNKARAHİSAR', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (351, N'TİREBOLU', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (352, N'PİPAZİZ', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (353, N'YAĞLIdERE', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (354, N'ÇAMOLUK', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (355, N'ÇANAKÇI', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (356, N'DOĞANKENT', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (357, N'GÜCE', 28)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (358, N'HAKKARİ MERKEZ', 30)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (359, N'ÇUKURCA', 30)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (360, N'ŞEMDİNLİ', 30)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (361, N'YÜKSEKOVA', 30)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (362, N'ALTINÖZÜ', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (363, N'DÖRTYOL', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (364, N'HATAY MERKEZ', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (365, N'HASSA', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (366, N'İSKENDERUN', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (367, N'KIRIKHAN', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (368, N'REYHANLI', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (369, N'SAMANDAĞ', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (370, N'YAYLADAĞ', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (371, N'ERZİN', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (372, N'BELEN', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (373, N'KUMLU', 31)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (374, N'ISPARTA MERKEZ', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (375, N'ATABEY', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (376, N'KEÇİBORLU', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (377, N'EĞİRDİR', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (378, N'GELENDOST', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (379, N'SİNİRKENT', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (380, N'ULUBORLU', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (381, N'YALVAÇ', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (382, N'AKSU', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (383, N'GÖNEN', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (384, N'YENİŞAR BADEMLİ', 32)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (385, N'IĞDIR MERKEZ', 76)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (386, N'ARALIK', 76)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (387, N'TUZLUCA', 76)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (388, N'KARAKOYUNLU', 76)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (389, N'AFŞİN', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (390, N'ANDIRIN', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (391, N'ELBİSTAN', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (392, N'GÖKSUN', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (394, N'PAZARCIK', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (395, N'TÜRKOĞLU', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (396, N'ÇAĞLAYANCERİT', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (397, N'EKİNÖZÜ', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (398, N'NURHAK', 46)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (399, N'EFLANİ', 78)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (400, N'ESKİPAZAR', 78)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (401, N'KARABÜK MERKEZ', 78)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (402, N'OVACIK', 78)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (403, N'SAFRANBOLU', 78)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (404, N'YENİCE', 78)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (405, N'ERMENEK', 70)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (406, N'KARAMAN MERKEZ', 70)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (407, N'AYRANCI', 70)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (408, N'KAZIMKARABEKİR', 70)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (409, N'BAŞYAYLA', 70)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (410, N'SARIVELİLER', 70)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (411, N'KARS MERKEZ', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (412, N'ARPAÇAY', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (413, N'DİGOR', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (414, N'KAĞIZMAN', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (415, N'SARIKAMIŞ', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (416, N'SELİM', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (417, N'SUSUZ', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (418, N'AKYAKA', 36)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (419, N'ABANA', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (420, N'KASTAMONU MERKEZ', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (421, N'ARAÇ', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (422, N'AZDAVAY', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (423, N'BOZKURT', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (424, N'CIdE', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (425, N'ÇATALZEYTİN', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (426, N'DADAY', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (427, N'DEVREKANİ', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (428, N'İNEBOLU', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (429, N'KÜRE', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (430, N'TAŞKÖPRÜ', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (431, N'TOSYA', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (432, N'İHSANGAZİ', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (433, N'PINARBAŞI', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (434, N'ŞENPAZAR', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (435, N'AĞLI', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (436, N'DOĞANYURT', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (437, N'HANÖNÜ', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (438, N'SEYDİLER', 37)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (439, N'BÜNYAN', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (440, N'DEVELİ', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (441, N'FELAHİYE', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (442, N'İNCESU', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (443, N'PINARBAŞI', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (444, N'SARIOĞLAN', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (445, N'SARIZ', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (446, N'TOMARZA', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (447, N'YAHYALI', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (448, N'YEŞİLHİSAR', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (449, N'AKKIŞLA', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (450, N'TALAS', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (451, N'KOCASİNAN', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (452, N'MELİKGAZİ', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (453, N'HACILAR', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (454, N'ÖZVATAN', 38)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (455, N'DERİCE', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (456, N'KESKİN', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (458, N'SALAK YURT', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (459, N'BAHŞİLİ', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (460, N'BALIŞEYH', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (461, N'ÇELEBİ', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (462, N'KARAKEÇİLİ', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (463, N'YAHŞİHAN', 71)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (464, N'KIRKKLARELİ MERKEZ', 39)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (465, N'BABAESKİ', 39)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (466, N'DEMİRKÖY', 39)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (467, N'KOFÇAY', 39)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (468, N'LÜLEBURGAZ', 39)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (469, N'VİZE', 39)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (470, N'KIRŞEHİR MERKEZ', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (471, N'ÇİÇEKDAĞI', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (472, N'KAMAN', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (473, N'MUCUR', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (474, N'AKPINAR', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (475, N'AKÇAKENT', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (476, N'BOZTEPE', 40)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (477, N'KOCAELİ MERKEZ', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (478, N'GEBZE', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (479, N'GÖLCÜK', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (480, N'KANDIRA', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (481, N'KARAMÜRSEL', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (482, N'KÖRFEZ', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (483, N'DERİNCE', 41)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (484, N'KONYA MERKEZ', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (485, N'AKŞEHİR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (486, N'BEYŞEHİR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (487, N'BOZKIR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (488, N'CİHANBEYLİ', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (489, N'ÇUMRA', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (490, N'DOĞANHİSAR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (491, N'EREĞLİ', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (492, N'HADİM', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (493, N'ILGIN', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (494, N'KADINHANI', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (495, N'KARAPINAR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (496, N'KULU', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (497, N'SARAYÖNÜ', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (498, N'SEYDİŞEHİR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (500, N'AKÖREN', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (501, N'ALTINEKİN', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (502, N'DEREBUCAK', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (503, N'HÜYÜK', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (504, N'KARATAY', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (505, N'MERAM', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (506, N'SELÇUKLU', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (507, N'TAŞKENT', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (508, N'AHIRLI', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (509, N'ÇELTİK', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (510, N'DERBENT', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (511, N'EMİRGAZİ', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (512, N'GÜNEYSINIR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (513, N'HALKAPINAR', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (514, N'TUZLUKÇU', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (515, N'YALIHÜYÜK', 42)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (516, N'KÜTAHYA  MERKEZ', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (517, N'ALTINTAŞ', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (518, N'DOMANİÇ', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (519, N'EMET', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (520, N'GEDİZ', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (521, N'SİMAV', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (522, N'TAVŞANLI', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (523, N'ASLANAPA', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (524, N'DUMLUPINAR', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (525, N'HİSARCIK', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (526, N'ŞAPHANE', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (527, N'ÇAVDARHİSAR', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (528, N'PAZARLAR', 43)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (529, N'KİLİS MERKEZ', 79)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (530, N'ELBEYLİ', 79)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (531, N'MUSABEYLİ', 79)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (532, N'POLATELİ', 79)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (533, N'MALATYA MERKEZ', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (534, N'AKÇADAĞ', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (535, N'ARAPGİR', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (536, N'ARGUVAN', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (537, N'DARENDE', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (538, N'DOĞANŞEHİR', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (539, N'HEKİMHAN', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (540, N'PÜTÜRGE', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (541, N'YEŞİLYURT', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (542, N'BATTALGAZİ', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (543, N'DOĞANYOL', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (544, N'KALE', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (545, N'KULUNCAK', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (546, N'YAZIHAN', 44)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (547, N'AKHİSAR', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (548, N'ALAŞEHİR', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (549, N'DEMİRCİ', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (550, N'GÖRDES', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (551, N'KIRKAĞAÇ', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (552, N'KULA', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (553, N'MANİSA MERKEZ', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (554, N'SALİHLİ', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (555, N'SARIGÖL', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (556, N'SARUHANLI', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (557, N'SELENDİ', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (558, N'SOMA', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (559, N'TURGUTLU', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (560, N'AHMETLİ', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (561, N'GÖLMARMARA', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (562, N'KÖPRÜBAŞI', 45)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (563, N'DERİK', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (564, N'KIZILTEPE', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (565, N'MARDİN MERKEZ', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (566, N'MAZIdAĞI', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (567, N'MIdYAT', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (568, N'NUSAYBİN', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (569, N'ÖMERLİ', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (570, N'SAVUR', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (571, N'YEŞİLLİ', 47)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (572, N'MERSİN MERKEZ', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (573, N'ANAMUR', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (574, N'ERDEMLİ', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (575, N'GÜLNAR', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (576, N'MUT', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (577, N'SİLİFKE', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (578, N'TARSUS', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (579, N'AYDINCIK', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (580, N'BOZYAZI', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (581, N'ÇAMLIYAYLA', 33)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (582, N'BODRUM', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (583, N'DATÇA', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (584, N'FETHİYE', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (585, N'KÖYCEĞİZ', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (586, N'MARMARİS', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (587, N'MİLAS', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (588, N'MUĞLA MERKEZ', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (589, N'ULA', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (590, N'YATAĞAN', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (591, N'DALAMAN', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (592, N'KAVAKLI DERE', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (593, N'ORTACA', 48)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (594, N'BULANIK', 49)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (595, N'MALAZGİRT', 49)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (596, N'MUŞ MERKEZ', 49)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (597, N'VARTO', 49)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (598, N'HASKÖY', 49)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (600, N'NEVŞEHİR MERKEZ', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (601, N'AVANOS', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (602, N'DERİNKUYU', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (603, N'GÜLŞEHİR', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (604, N'HACIBEKTAŞ', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (605, N'KOZAKLI', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (606, N'ÜRGÜP', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (607, N'ACIGÖL', 50)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (608, N'NİĞDE MERKEZ', 51)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (609, N'BOR', 51)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (610, N'ÇAMARDI', 51)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (611, N'ULUKIŞLA', 51)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (612, N'ALTUNHİSAR', 51)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (613, N'ÇİFTLİK', 51)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (614, N'AKKUŞ', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (615, N'AYBASTI', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (616, N'FATSA', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (617, N'GÖLKÖY', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (618, N'KORGAN', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (619, N'KUMRU', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (620, N'MESUDİYE', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (621, N'ORDU MERKEZ', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (622, N'PERŞEMBE', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (623, N'ULUBEY', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (624, N'ÜNYE', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (625, N'GÜLYALI', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (626, N'GÜRGENTEPE', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (627, N'ÇAMAŞ', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (628, N'ÇATALPINAR', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (629, N'ÇAYBAŞI', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (630, N'İKİZCE', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (631, N'KABADÜZ', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (632, N'KABATAŞ', 52)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (633, N'BAHÇE', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (634, N'KADİRLİ', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (635, N'OSMANİYE MERKEZ', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (636, N'DÜZİÇİ', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (637, N'HASANBEYLİ', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (638, N'SUMBAŞ', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (639, N'TOPRAKKALE', 80)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (640, N'RİZE MERKEZ', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (641, N'ARDEŞEN', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (642, N'ÇAMLIHEMŞİN', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (643, N'ÇAYELİ', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (644, N'FINDIKLI', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (645, N'İKİZDERE', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (646, N'KALKANDERE', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (647, N'PAZAR', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (648, N'GÜNEYSU', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (649, N'DEREPAZARI', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (650, N'HEMŞİN', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (651, N'İYIdERE', 53)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (652, N'AKYAZI', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (653, N'GEYVE', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (654, N'HENDEK', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (655, N'KARASU', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (656, N'KAYNARCA', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (657, N'SAKARYA MERKEZ', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (658, N'PAMUKOVA', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (659, N'TARAKLI', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (660, N'FERİZLİ', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (661, N'KARAPÜRÇEK', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (662, N'SÖĞÜTLÜ', 54)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (663, N'ALAÇAM', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (664, N'BAFRA', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (665, N'ÇARŞAMBA', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (666, N'HAVZA', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (667, N'KAVAK', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (668, N'LADİK', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (669, N'SAMSUN MERKEZ', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (670, N'TERME', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (671, N'VEZİRKÖPRÜ', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (672, N'ASARCIK', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (673, N'ONDOKUZMAYIS', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (674, N'SALIPAZARI', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (675, N'TEKKEKÖY', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (676, N'AYVACIK', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (677, N'YAKAKENT', 55)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (678, N'AYANCIK', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (679, N'BOYABAT', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (680, N'SİNOP MERKEZ', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (681, N'DURAĞAN', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (682, N'ERGELEK', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (683, N'GERZE', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (684, N'TÜRKELİ', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (685, N'DİKMEN', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (686, N'SARAYDÜZÜ', 57)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (687, N'DİVRİĞİ', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (688, N'GEMEREK', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (689, N'GÜRÜN', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (690, N'HAFİK', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (691, N'İMRANLI', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (692, N'KANGAL', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (693, N'KOYUL HİSAR', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (694, N'SİVAS MERKEZ', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (695, N'SU ŞEHRİ', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (696, N'ŞARKIŞLA', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (697, N'YILDIZELİ', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (698, N'ZARA', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (700, N'ALTINYAYLA', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (701, N'DOĞANŞAR', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (702, N'GÜLOVA', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (703, N'ULAŞ', 58)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (704, N'BAYKAN', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (705, N'ERUH', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (706, N'KURTALAN', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (707, N'PERVARİ', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (708, N'SİİRT MERKEZ', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (709, N'ŞİRVARİ', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (710, N'AYDINLAR', 56)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (711, N'TEKİRDAĞ MERKEZ', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (712, N'ÇERKEZKÖY', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (713, N'ÇORLU', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (714, N'HAYRABOLU', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (715, N'MALKARA', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (716, N'MURATLI', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (717, N'SARAY', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (718, N'ŞARKÖY', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (719, N'MARAMARAEREĞLİSİ', 59)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (720, N'ALMUS', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (721, N'ARTOVA', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (722, N'TOKAT MERKEZ', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (723, N'ERBAA', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (724, N'NİKSAR', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (725, N'REŞADİYE', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (726, N'TURHAL', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (727, N'ZİLE', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (728, N'PAZAR', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (729, N'YEŞİLYURT', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (730, N'BAŞÇİFTLİK', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (731, N'SULUSARAY', 60)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (732, N'TRABZON MERKEZ', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (733, N'AKÇAABAT', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (734, N'ARAKLI', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (735, N'ARŞİN', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (736, N'ÇAYKARA', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (737, N'MAÇKA', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (738, N'OF', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (739, N'SÜRMENE', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (740, N'TONYA', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (741, N'VAKFIKEBİR', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (742, N'YOMRA', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (743, N'BEŞİKDÜZÜ', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (744, N'ŞALPAZARI', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (745, N'ÇARŞIBAŞI', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (746, N'DERNEKPAZARI', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (747, N'DÜZKÖY', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (748, N'HAYRAT', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (749, N'KÖPRÜBAŞI', 61)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (750, N'TUNCELİ MERKEZ', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (751, N'ÇEMİŞGEZEK', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (752, N'HOZAT', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (753, N'MAZGİRT', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (754, N'NAZİMİYE', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (755, N'OVACIK', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (756, N'PERTEK', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (757, N'PÜLÜMÜR', 62)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (758, N'BANAZ', 64)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (759, N'EŞME', 64)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (760, N'KARAHALLI', 64)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (761, N'SİVASLI', 64)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (762, N'ULUBEY', 64)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (763, N'UŞAK MERKEZ', 64)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (764, N'BAŞKALE', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (765, N'VAN MERKEZ', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (766, N'EDREMİT', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (767, N'ÇATAK', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (768, N'ERCİŞ', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (769, N'GEVAŞ', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (770, N'GÜRPINAR', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (771, N'MURADİYE', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (772, N'ÖZALP', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (773, N'BAHÇESARAY', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (774, N'ÇALDIRAN', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (775, N'SARAY', 65)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (776, N'YALOVA MERKEZ', 77)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (777, N'ALTINOVA', 77)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (778, N'ARMUTLU', 77)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (779, N'ÇINARCIK', 77)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (780, N'ÇİFTLİKKÖY', 77)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (781, N'TERMAL', 77)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (782, N'AKDAĞMADENİ', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (783, N'BOĞAZLIYAN', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (784, N'YOZGAT MERKEZ', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (785, N'ÇAYIRALAN', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (786, N'ÇEKEREK', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (787, N'SARIKAYA', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (788, N'SORGUN', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (789, N'ŞEFAATLI', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (790, N'YERKÖY', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (791, N'KADIŞEHRİ', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (792, N'SARAYKENT', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (793, N'YENİFAKILI', 66)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (794, N'ÇAYCUMA', 67)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (795, N'DEVREK', 67)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (797, N'EREĞLİ', 67)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (798, N'ALAPLI', 67)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (799, N'GÖKÇEBEY', 67)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (800, N'ÇANAKKALE MERKEZ', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (801, N'AYVACIK', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (802, N'BAYRAMİÇ', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (803, N'BİGA', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (804, N'BOZCAADA', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (805, N'ÇAN', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (806, N'ECEABAT', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (807, N'EZİNE', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (808, N'LAPSEKİ', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (809, N'YENİCE', 17)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (810, N'ÇANKIRI MERKEZ', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (811, N'ÇERKEŞ', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (812, N'ELDİVAN', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (813, N'ILGAZ', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (814, N'KURŞUNLU', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (815, N'ORTA', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (816, N'ŞABANÖZÜ', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (817, N'YAPRAKLI', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (818, N'ATKARACALAR', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (819, N'KIZILIRMAK', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (820, N'BAYRAMÖREN', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (821, N'KORGUN', 18)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (822, N'ALACA', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (823, N'BAYAT', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (824, N'ÇORUM MERKEZ', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (825, N'İKSİPLİ', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (826, N'KARGI', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (827, N'MECİTÖZÜ', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (828, N'ORTAKÖY', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (829, N'OSMANCIK', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (830, N'SUNGURLU', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (831, N'DODURGA', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (832, N'LAÇİN', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (833, N'OĞUZLAR', 19)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (834, N'ADALAR', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (835, N'BAKIRKÖY', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (836, N'BEŞİKTAŞ', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (837, N'BEYKOZ', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (838, N'BEYOĞLU', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (839, N'ÇATALCA', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (840, N'EMİNÖNÜ', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (841, N'EYÜP', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (842, N'FATİH', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (843, N'GAZİOSMANPAŞA', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (844, N'KADIKÖY', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (845, N'KARTAL', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (846, N'SARIYER', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (847, N'SİLİVRİ', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (848, N'ŞİLE', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (849, N'ŞİŞLİ', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (850, N'ÜSKÜDAR', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (851, N'ZEYTİNBURNU', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (852, N'BÜYÜKÇEKMECE', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (853, N'KAĞITHANE', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (854, N'KÜÇÜKÇEKMECE', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (855, N'PENDİK', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (856, N'ÜMRANİYE', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (857, N'BAYRAMPAŞA', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (858, N'AVCILAR', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (859, N'BAĞCILAR', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (860, N'BAHÇELİEVLER', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (861, N'GÜNGÖREN', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (862, N'MALTEPE', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (863, N'SULTANBEYLİ', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (864, N'TUZLA', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (865, N'ESENLER', 34)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (866, N'ALİAĞA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (867, N'BAYINDIR', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (868, N'BERGAMA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (869, N'BORNOVA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (870, N'ÇEŞME', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (871, N'DİKİLİ', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (872, N'FOÇA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (873, N'KARABURUN', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (874, N'KARŞIYAKA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (875, N'KEMALPAŞA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (876, N'KINIK', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (877, N'KİRAZ', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (878, N'MENEMEN', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (879, N'ÖDEMİŞ', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (880, N'SEFERİHİSAR', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (881, N'SELÇUK', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (882, N'TİRE', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (883, N'TORBALI', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (884, N'URLA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (885, N'BEYDAĞ', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (886, N'BUCA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (887, N'KONAK', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (888, N'MENDERES', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (889, N'BALÇOVA', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (890, N'ÇİGLİ', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (891, N'GAZİEMİR', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (892, N'NARLIdERE', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (893, N'GÜZELBAHÇE', 35)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (894, N'ŞANLIURFA MERKEZ', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (895, N'AKÇAKALE', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (896, N'BİRECİK', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (897, N'BOZOVA', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (898, N'CEYLANPINAR', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (899, N'HALFETİ', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (900, N'HİLVAN', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (901, N'SİVEREK', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (902, N'SURUÇ', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (903, N'VİRANŞEHİR', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (904, N'HARRAN', 63)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (905, N'BEYTÜŞŞEBAP', 73)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (906, N'ŞIRNAK MERKEZ', 73)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (907, N'CİZRE', 73)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (908, N'IdİL', 73)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (909, N'SİLOPİ', 73)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (910, N'ULUDERE', 73)
GO
INSERT [dbo].[Town] ([Id], [TownName], [CityId]) VALUES (911, N'GÜÇLÜKONAK', 73)
GO
SET IDENTITY_INSERT [dbo].[Town] OFF
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('A') FOR [RecordStatus]
GO
