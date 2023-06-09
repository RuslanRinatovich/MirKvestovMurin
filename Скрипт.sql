USE [master]
GO
/****** Object:  Database [MirKvestovBD]    Script Date: 25.05.2023 20:44:28 ******/
CREATE DATABASE [MirKvestovBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MirKvestovBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MirKvestovBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MirKvestovBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MirKvestovBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MirKvestovBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MirKvestovBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MirKvestovBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MirKvestovBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MirKvestovBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MirKvestovBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MirKvestovBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [MirKvestovBD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MirKvestovBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MirKvestovBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MirKvestovBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MirKvestovBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MirKvestovBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MirKvestovBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MirKvestovBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MirKvestovBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MirKvestovBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MirKvestovBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MirKvestovBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MirKvestovBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MirKvestovBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MirKvestovBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MirKvestovBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MirKvestovBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MirKvestovBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MirKvestovBD] SET  MULTI_USER 
GO
ALTER DATABASE [MirKvestovBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MirKvestovBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MirKvestovBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MirKvestovBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MirKvestovBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MirKvestovBD] SET QUERY_STORE = OFF
GO
USE [MirKvestovBD]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Age] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimeSheetId] [int] NOT NULL,
	[UserInfo] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Payed] [bit] NOT NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizer]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Address] [nvarchar](1000) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Organizer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quest]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[MinPlayersCount] [int] NOT NULL,
	[MaxPlayersCount] [int] NOT NULL,
	[Duration] [int] NOT NULL,
	[Complexity] [int] NOT NULL,
	[FearLevel] [int] NOT NULL,
	[AgeId] [int] NOT NULL,
	[OrganizerId] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestCategory]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_QuestCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rewiew]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rewiew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](2000) NOT NULL,
	[Rate] [int] NOT NULL,
	[QualityOfPuzzles] [float] NOT NULL,
	[Entourage] [float] NOT NULL,
	[Sevice] [float] NOT NULL,
	[Safety] [float] NOT NULL,
	[QuestId] [int] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Rewiew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NOT NULL,
	[Price] [float] NOT NULL,
	[QuestId] [int] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.05.2023 20:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[RoleId] [int] NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Age] ON 

INSERT [dbo].[Age] ([Id], [Title]) VALUES (1, N'0+')
INSERT [dbo].[Age] ([Id], [Title]) VALUES (2, N'6+')
INSERT [dbo].[Age] ([Id], [Title]) VALUES (3, N'12+')
INSERT [dbo].[Age] ([Id], [Title]) VALUES (4, N'16+')
INSERT [dbo].[Age] ([Id], [Title]) VALUES (5, N'18+')
SET IDENTITY_INSERT [dbo].[Age] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (16, 6, N'helloKitty', N'+7 (974) 874-28-35', 0, N'helloKitty')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (17, 3, N'helloKitty', N'+7 (974) 874-28-35', 1, N'helloKitty')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (18, 7, N'nikifor', N'+7 (983) 507-01-01', 0, N'nikifor')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (19, 10, N'lenskiy', N'+7 (945) 054-37-48', 0, N'lenskiy')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (20, 16, N'lenskiy', N'+7 (945) 054-37-48', 0, N'lenskiy')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (21, 12, N'lenskiy', N'+7 (945) 054-37-48', 0, N'lenskiy')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (23, 14, N'master', N'+7 (907) 000-00-07', 0, N'master')
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Title]) VALUES (1, N'Антуражные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (2, N'Бесконтактный')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (3, N'Виртуальная реальность')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (4, N'Детективные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (5, N'Для большой компании')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (6, N'Для взрослых')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (7, N'Для детей')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (8, N'Для новичков')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (9, N'Для подростков')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (10, N'Для школьников')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (11, N'На день рождения')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (12, N'Недорогие')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (13, N'Нестрашные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (14, N'По фильмам')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (15, N'С актёрами')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (16, N'Семейные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (17, N'Сложные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (18, N'Страшные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (19, N'Страшные квесты с актерами')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (20, N'Фантастические')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (21, N'Фэнтези')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizer] ON 

INSERT [dbo].[Organizer] ([Id], [Title], [Description], [Address], [Phone]) VALUES (1, N'Locked 116', N'Компания «Locked 116» в Казани приглашает на новый проект, где вы сможете проверить свои способности и получить массу незабываемых впечатлений.', N' Казань, ул. Восстания, д. 100', N'+7 (843) 202-20-45')
INSERT [dbo].[Organizer] ([Id], [Title], [Description], [Address], [Phone]) VALUES (2, N'Dark Stars', N'Проект «Dark Stars» в Казани приглашает вас погрузиться в свой мир и разбавить рутинные будни.', N'Петербургская, д. 62', N'+7 (843) 202-20-45')
INSERT [dbo].[Organizer] ([Id], [Title], [Description], [Address], [Phone]) VALUES (3, N'Mystical Quests', N'Погрузись в качественную мистику с головой! Только в «Mystical Quests» ты сможешь по-настоящему познать мир приключений!', N'ул. Техническая, д. 120 А', N'+7 (843) 202-20-45')
INSERT [dbo].[Organizer] ([Id], [Title], [Description], [Address], [Phone]) VALUES (4, N'Чё за квест', N'Компания «Чё за квест» в Казани предлагает квесты на любой вкус для взрослых и детей. Скорее отправляйся играть и бери с собой друзей!', N'пер. Профессорский, д. 1', N'+7 (843) 202-20-45')
INSERT [dbo].[Organizer] ([Id], [Title], [Description], [Address], [Phone]) VALUES (5, N'Quest Stars', N'Компания «Quest Stars» собрала самые лучшие проекты, которые удерживаются на первых позициях в рейтингах квестов Казани.', N'ул. Некрасова, д. 38', N'+7 (843) 202-20-45')
SET IDENTITY_INSERT [dbo].[Organizer] OFF
GO
SET IDENTITY_INSERT [dbo].[Quest] ON 

INSERT [dbo].[Quest] ([Id], [Title], [Description], [Photo], [MinPlayersCount], [MaxPlayersCount], [Duration], [Complexity], [FearLevel], [AgeId], [OrganizerId]) VALUES (1, N'Взаперти', N'Когда-то в этом месте была тюрьма, к которой простые люди боялись приближаться. Причиной всему был демон, который не давал спокойно жить всем, кто хоть как-то тревожил его спокойствие.', N'1.jpg', 2, 10, 90, 3, 2, 3, 1)
INSERT [dbo].[Quest] ([Id], [Title], [Description], [Photo], [MinPlayersCount], [MaxPlayersCount], [Duration], [Complexity], [FearLevel], [AgeId], [OrganizerId]) VALUES (5, N'Гарри и меч Гриффиндора', N'Школа магии Хогвартс полна тайн. И удивительнее всех – башня Гриффиндора. Тех, кто выйдет ночью на крышу и проберется под купол башни, ждут три этажа загадок и секретов. А главный секрет – это последняя воля великого Дамблдора. Гарри завещан меч Гриффиндора, и он его получит.', N'2.jpg', 2, 10, 60, 2, 1, 4, 4)
INSERT [dbo].[Quest] ([Id], [Title], [Description], [Photo], [MinPlayersCount], [MaxPlayersCount], [Duration], [Complexity], [FearLevel], [AgeId], [OrganizerId]) VALUES (6, N'Десять негритят', N' 1934 год. Англия.  Загадочное убийство на Негритянском острове. Найдено десять трупов. В старинном особняке произошла серия таинственных убийств. Прибывшие на остров инспектор Мейн и сэр Томас Лэгг обнаружили 10 бездыханных тел. Это были восемь прежде незнакомых между собой людей и одна супружеская пара. Все они были приглашены сюда мистером и миссис Оним. Большего они узнать не смогли, ведь все возможные версии противоречат фактам.', N'13.jpg', 1, 8, 60, 3, 1, 4, 3)
INSERT [dbo].[Quest] ([Id], [Title], [Description], [Photo], [MinPlayersCount], [MaxPlayersCount], [Duration], [Complexity], [FearLevel], [AgeId], [OrganizerId]) VALUES (7, N'Шерлок', N'Где-то в гуще леса, в своей сторожке Генрих, покуривая трубку, слышит стук в дверь… ', N'14.jpg', 2, 8, 60, 3, 1, 3, 5)
INSERT [dbo].[Quest] ([Id], [Title], [Description], [Photo], [MinPlayersCount], [MaxPlayersCount], [Duration], [Complexity], [FearLevel], [AgeId], [OrganizerId]) VALUES (8, N'Корпорация монстров', N'Добро пожаловать в «Корпорацию монстров» – ведущий центр мировой индустрии пугания! Вы попадаете на территорию корпорации в роли стажеров. На заводе произошел инцидент – кто-то похитил ребенка. До прибытия агентства обнаружения детей остался ровно 1 час.', N'15.jpg', 2, 10, 60, 2, 1, 3, 4)
SET IDENTITY_INSERT [dbo].[Quest] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestCategory] ON 

INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (1, 1, 3)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (2, 1, 5)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (3, 1, 6)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (4, 1, 7)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (5, 5, 1)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (6, 5, 2)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (7, 5, 3)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (8, 5, 5)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (9, 5, 6)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (10, 6, 1)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (11, 6, 4)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (12, 6, 5)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (13, 6, 17)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (14, 7, 4)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (15, 7, 9)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (16, 7, 10)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (17, 7, 12)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (18, 7, 13)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (19, 7, 14)
INSERT [dbo].[QuestCategory] ([Id], [QuestId], [CategoryId]) VALUES (20, 7, 16)
SET IDENTITY_INSERT [dbo].[QuestCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Rewiew] ON 

INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [QualityOfPuzzles], [Entourage], [Sevice], [Safety], [QuestId], [UserName]) VALUES (10, N'Это был первый подобный квест, в котором мы приняли участие. Нас было 4 человека. Думаю, самое то для этого квеста. По неопытности, поначалу было непонятно, как действовать. Была некоторая расстерянность, и много сумбура. Благо, в квесте есть ведущий (Ильяс), который всегда направлял нас и помогал. Огромное ему спасибо за то, как он чувствовал игру и понимал наши способности. Он включался, именно, в нужные моменты и давал подсказки. Сам квест наполнен большим количеством различных головоломок. Нужно соображать, как использовать имеющиеся предметы, сопоставлять факты, быть внимательным к мелочам, где-то нужно перебороть страх и рискнуть, где-то сыграть в настольную игру. Все это сопровождается соответсвующим квесту антуражем — обстановка, оформление, интерьер, звуки, свет, движение предметов. Ты постоянно находишься в процессе. Полная вовлеченность в игру. Как следствие, не замечаешь, как быстро проходит время. И снова большая благодарность Ильясу, который дал нам возможность пройти квест до конца. Человек, реально, достоин похвалы. Приятно иметь дело с такими людьми. Итог от прохождения — море положительных эмоций, и большое желание и в дальнейшем участвовать в подобных квестах. Однозначно, советуем пройти этот квест.', 5, 7.25, 7.5, 7.75, 8.5, 6, N'nikifor')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [QualityOfPuzzles], [Entourage], [Sevice], [Safety], [QuestId], [UserName]) VALUES (11, N'Прекрасный квест! Замечательные локации, очень атмосферно, благодарим актрису , без неё мы бы не справились бы с заданиями:) безумно счастливы оказаться внутри любимой истории!!! Благодарим', 4, 7.25, 6.5, 6.75, 7.5, 5, N'nikifor')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [QualityOfPuzzles], [Entourage], [Sevice], [Safety], [QuestId], [UserName]) VALUES (12, N'Участвовали в квесте вместе с детьми (двое взрослых и четверо детей в возрасте от 7 до 13 лет). Изначально думали, что загадки будут лёгкими. Но пришлось хорошенько пораскинуть мозгами всем возрастным категориям нашей компании. Не все так однозначно, как кажется на первый взгляд. В случаях когда уже не знали, что делать просили подсказки. Квест и качество загадок понравилось и взрослым и детям. Девушка администратор все нам хорошо объяснила и рассказала. Очень приветливая и доброжелательная. Квест однозначно советуем к прохождению!', 5, 6.25, 5.75, 7.75, 8.5, 8, N'lenskiy')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [QualityOfPuzzles], [Entourage], [Sevice], [Safety], [QuestId], [UserName]) VALUES (13, N'Отличный квест, проходили втроем, в свое время прошли все нормальные квесты в Казани, и уже расстроились, что жанр полностью исчерпал себя. наконец нашли достойный квест, загадки на уровне! Спасибо оргам! По советам сходим на другой. И много всего.', 5, 7.25, 7.5, 7.75, 8.75, 7, N'lenskiy')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [QualityOfPuzzles], [Entourage], [Sevice], [Safety], [QuestId], [UserName]) VALUES (14, N'Посетили 14 мая данный квест. Трое взрослых и ребенок 12 лет. С самого порога здания нас уже погрузили в жуткую атмосферу квеста, спасибо администратору, актерам <3 Парни выбрали режим хард, а девушки медиум. Но по ходу квеста было жалко, что не все хард выбрали. Потому что контакт с актерами — это намного круче и эффектнее на страшном квесте. Поэтому не думая, соглашайтесь на хард! Актеры отыгрывали просто супер, очень понравились. Казалось, что их намного больше, чем 3. Просто вау! А их неожиданные появления чего стоили. Казалось, будто ты находишься в каком-то лютом фильме ужасов. Звуки, локации — атмосфера на 100 баллов. Все так качественно подобрано и организованно! В общем остались мы очень довольны! Приходите на данный квест — не пожалеете!', 5, 8.25, 8.5, 7.5, 7.5, 1, N'master')
SET IDENTITY_INSERT [dbo].[Rewiew] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [Title]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([RoleId], [Title]) VALUES (3, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSheet] ON 

INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (1, CAST(N'2023-05-19' AS Date), CAST(N'19:00:00' AS Time), 5000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (2, CAST(N'2023-05-24' AS Date), CAST(N'16:00:00' AS Time), 5000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (3, CAST(N'2023-05-25' AS Date), CAST(N'16:30:00' AS Time), 2800, 5)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (4, CAST(N'2023-05-26' AS Date), CAST(N'17:00:00' AS Time), 3000, 5)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (5, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 3000, 5)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (6, CAST(N'2023-05-27' AS Date), CAST(N'14:00:00' AS Time), 3000, 6)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (7, CAST(N'2023-05-29' AS Date), CAST(N'17:00:00' AS Time), 4000, 6)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (8, CAST(N'2023-05-28' AS Date), CAST(N'15:00:00' AS Time), 4000, 6)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (9, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 3000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (10, CAST(N'2023-05-28' AS Date), CAST(N'16:00:00' AS Time), 5000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (11, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 3000, 8)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (12, CAST(N'2023-05-30' AS Date), CAST(N'17:00:00' AS Time), 3000, 8)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (13, CAST(N'2023-05-29' AS Date), CAST(N'16:00:00' AS Time), 2500, 8)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (14, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 4000, 7)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (15, CAST(N'2023-05-28' AS Date), CAST(N'18:00:00' AS Time), 3000, 7)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [QuestId]) VALUES (16, CAST(N'2023-05-29' AS Date), CAST(N'17:00:00' AS Time), 4000, 7)
SET IDENTITY_INSERT [dbo].[TimeSheet] OFF
GO
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'admin', N'1', 1, N'Мурин', N'1', NULL, N'8965656565', N'54656565465')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'best', N'1', 3, N'И', NULL, NULL, N'+7 (777) 777-77-77', NULL)
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'helloKitty', N'1', 3, N'Недашковская', N'Ванда', N'Львовна', N'+7 (974) 874-28-35', N'VandaNedashkovskaya183@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'lenskiy', N'1', 3, N'Ленский', N'Аркадий', N'Борисович', N'+7 (945) 054-37-48', N'ArkadiyLenskiy925@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'master', N'1', 3, N'Пушкин', N'Александр', N'Сергеевич', N'+7 (907) 000-00-07', N'best@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'nikifor', N'1', 3, N'Григорьев', N'Никифор', N'Тимофеевич', N'+7 (983) 507-01-01', N'NikiforGrigorev302@yandex.ru')
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_TimeSheet] FOREIGN KEY([TimeSheetId])
REFERENCES [dbo].[TimeSheet] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_TimeSheet]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User]
GO
ALTER TABLE [dbo].[Quest]  WITH CHECK ADD  CONSTRAINT [FK_Quest_Age] FOREIGN KEY([AgeId])
REFERENCES [dbo].[Age] ([Id])
GO
ALTER TABLE [dbo].[Quest] CHECK CONSTRAINT [FK_Quest_Age]
GO
ALTER TABLE [dbo].[Quest]  WITH CHECK ADD  CONSTRAINT [FK_Quest_Organizer] FOREIGN KEY([OrganizerId])
REFERENCES [dbo].[Organizer] ([Id])
GO
ALTER TABLE [dbo].[Quest] CHECK CONSTRAINT [FK_Quest_Organizer]
GO
ALTER TABLE [dbo].[QuestCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuestCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[QuestCategory] CHECK CONSTRAINT [FK_QuestCategory_Category]
GO
ALTER TABLE [dbo].[QuestCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuestCategory_Quest] FOREIGN KEY([QuestId])
REFERENCES [dbo].[Quest] ([Id])
GO
ALTER TABLE [dbo].[QuestCategory] CHECK CONSTRAINT [FK_QuestCategory_Quest]
GO
ALTER TABLE [dbo].[Rewiew]  WITH CHECK ADD  CONSTRAINT [FK_Rewiew_Quest] FOREIGN KEY([QuestId])
REFERENCES [dbo].[Quest] ([Id])
GO
ALTER TABLE [dbo].[Rewiew] CHECK CONSTRAINT [FK_Rewiew_Quest]
GO
ALTER TABLE [dbo].[Rewiew]  WITH CHECK ADD  CONSTRAINT [FK_Rewiew_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Rewiew] CHECK CONSTRAINT [FK_Rewiew_User]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Quest] FOREIGN KEY([QuestId])
REFERENCES [dbo].[Quest] ([Id])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Quest]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [MirKvestovBD] SET  READ_WRITE 
GO
