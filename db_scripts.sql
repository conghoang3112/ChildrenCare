USE [master]
GO
/****** Object:  Database [ChildrenCare]    Script Date: 12/5/2022 4:47:57 PM ******/
CREATE DATABASE [ChildrenCare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChildrenCare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ChildrenCare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChildrenCare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ChildrenCare_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ChildrenCare] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChildrenCare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChildrenCare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChildrenCare] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChildrenCare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChildrenCare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChildrenCare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChildrenCare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChildrenCare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChildrenCare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChildrenCare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChildrenCare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChildrenCare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChildrenCare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChildrenCare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChildrenCare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChildrenCare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChildrenCare] SET RECOVERY FULL 
GO
ALTER DATABASE [ChildrenCare] SET  MULTI_USER 
GO
ALTER DATABASE [ChildrenCare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChildrenCare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChildrenCare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChildrenCare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChildrenCare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChildrenCare] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChildrenCare', N'ON'
GO
ALTER DATABASE [ChildrenCare] SET QUERY_STORE = OFF
GO
USE [ChildrenCare]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[acc_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[acc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] NOT NULL,
	[manager_id] [int] NULL,
	[content] [nvarchar](max) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[doctor_id] [int] IDENTITY(1,1) NOT NULL,
	[acc_id] [int] NULL,
	[specialist_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorProfile]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorProfile](
	[profile_id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[avatar] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[address_hospital] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[profile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[fb_id] [int] IDENTITY(1,1) NOT NULL,
	[fb_content] [nvarchar](max) NULL,
	[fb_time] [datetime] NULL,
	[reservation_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[fb_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackReply]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackReply](
	[reply_id] [int] IDENTITY(1,1) NOT NULL,
	[fb_id] [int] NULL,
	[user_id] [int] NULL,
	[reply_content] [nvarchar](max) NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_FeedBack Reply] PRIMARY KEY CLUSTERED 
(
	[reply_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[manager_id] [int] IDENTITY(1,1) NOT NULL,
	[acc_id] [int] NULL,
	[service_id] [int] NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[phone] [nvarchar](10) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecord]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecord](
	[record_id] [int] IDENTITY(1,1) NOT NULL,
	[reservation_id] [int] NULL,
	[diease_name] [nvarchar](50) NULL,
	[prescription] [nvarchar](max) NULL,
	[record_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[patient_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[name] [nchar](10) NULL,
	[dob] [date] NULL,
	[avatar] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[patient_note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacy]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacy](
	[pharmacy_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
	[manager_id] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Pharmacy] PRIMARY KEY CLUSTERED 
(
	[pharmacy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[time_slot_id] [int] NULL,
	[doctor_id] [int] NULL,
	[date_booking] [date] NULL,
	[phone_contact] [nvarchar](10) NULL,
	[status] [nchar](10) NULL,
	[issue] [nvarchar](max) NULL,
	[user_id] [int] NULL,
	[patient_id] [int] NULL,
 CONSTRAINT [PK__Reservat__173326C54EB7F6CA] PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_meet] [nvarchar](30) NULL,
	[doctor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialist]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialist](
	[specialist_id] [int] IDENTITY(1,1) NOT NULL,
	[specialist_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[specialist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[slot_id] [int] IDENTITY(1,1) NOT NULL,
	[slot_time] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/5/2022 4:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[phone] [nvarchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[avatar] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[acc_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Manager] FOREIGN KEY([manager_id])
REFERENCES [dbo].[Manager] ([manager_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Manager]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD FOREIGN KEY([acc_id])
REFERENCES [dbo].[Account] ([acc_id])
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD FOREIGN KEY([specialist_id])
REFERENCES [dbo].[Specialist] ([specialist_id])
GO
ALTER TABLE [dbo].[DoctorProfile]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([doctor_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__FeedBack__Reserv__3C69FB99] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__FeedBack__Reserv__3C69FB99]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[FeedbackReply]  WITH CHECK ADD FOREIGN KEY([fb_id])
REFERENCES [dbo].[Feedback] ([fb_id])
GO
ALTER TABLE [dbo].[FeedbackReply]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD FOREIGN KEY([acc_id])
REFERENCES [dbo].[Account] ([acc_id])
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK__Medical R__Reser__46E78A0C] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK__Medical R__Reser__46E78A0C]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Pharmacy]  WITH CHECK ADD  CONSTRAINT [FK_Pharmacy_Manager] FOREIGN KEY([manager_id])
REFERENCES [dbo].[Manager] ([manager_id])
GO
ALTER TABLE [dbo].[Pharmacy] CHECK CONSTRAINT [FK_Pharmacy_Manager]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__Docto__36B12243] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([doctor_id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK__Reservati__Docto__36B12243]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__TimeS__38996AB5] FOREIGN KEY([time_slot_id])
REFERENCES [dbo].[TimeSlot] ([slot_id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK__Reservati__TimeS__38996AB5]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__UserI__37A5467C] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK__Reservati__UserI__37A5467C]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patient] ([patient_id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Patient]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([doctor_id])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([acc_id])
REFERENCES [dbo].[Account] ([acc_id])
GO
USE [master]
GO
ALTER DATABASE [ChildrenCare] SET  READ_WRITE 
GO
