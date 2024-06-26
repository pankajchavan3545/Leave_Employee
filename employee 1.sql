
/****** Object:  Database [Alpha_PrasadPillay]    Script Date: 29-01-2024 11:05:33 ******/
/*CREATE DATABASE [Alpha_PrasadPillay]*/
 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Alpha_PrasadPillay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ARITHABORT OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET  MULTI_USER 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Alpha_PrasadPillay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Alpha_PrasadPillay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Alpha_PrasadPillay] SET QUERY_STORE = OFF
GO
USE [Alpha_PrasadPillay]
GO
/****** Object:  Table [dbo].[City]    Script Date: 29-01-2024 11:05:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](150) NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Row_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Row_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMaster](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](8) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[MobileNumber] [varchar](15) NOT NULL,
	[PanNumber] [varchar](12) NOT NULL,
	[PassportNumber] [varchar](20) NOT NULL,
	[ProfileImage] [nvarchar](100) NULL,
	[Gender] [tinyint] NULL,
	[IsActive] [bit] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[DateOfJoinee] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Row_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MobileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PassportNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PanNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Row_Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](150) NULL,
	[CountryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Row_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeeMaster] ADD  DEFAULT ('001') FOR [EmployeeCode]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Row_Id])
GO
ALTER TABLE [dbo].[EmployeeMaster]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Row_Id])
GO
ALTER TABLE [dbo].[EmployeeMaster]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Row_Id])
GO
ALTER TABLE [dbo].[EmployeeMaster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Row_Id])
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Row_Id])
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_DELETE_Employee]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[STP_EMP_DELETE_Employee] 
(
	@EmployeeID bigint,
	@DeletedDate datetime
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		
		UPDATE EmployeeMaster SET IsDeleted=1,DeletedDate=@DeletedDate where Row_Id=@EmployeeID
		--DELETE from EmployeeMaster where Row_Id=@EmployeeID

		SELECT 'Success'

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
		SELECT 'Exception'

	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_GET_CityList]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_EMP_GET_CityList]
(
	@StateID bigint
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		
		begin				
			Select Row_Id,CityName,StateId from City C where C.StateId=@StateID
		END

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_GET_CountryList]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_EMP_GET_CountryList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		
		begin				
		SELECT Row_Id,CountryName
        FROM Country C;
		END

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_GET_EmployeeById]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_EMP_GET_EmployeeById]
(
	@EmployeeID bigint
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		
		begin				
			Select * from EmployeeMaster E where E.Row_Id=@EmployeeID
		END

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_GET_EmployeeList]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_EMP_GET_EmployeeList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		
		begin				
		SELECT *
        FROM EmployeeMaster E
        WHERE  E.IsDeleted = 0;
		END

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_GET_StateList]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_EMP_GET_StateList]
(
	@CountryID bigint
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		
		begin				
			Select Row_Id,StateName,CountryId from State S where S.CountryId=@CountryID
		END

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_EMP_INSERTUPDATE_EmployeeDetails]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[STP_EMP_INSERTUPDATE_EmployeeDetails] 
(
	@EmployeeID bigint,
	@FirstName nvarchar(255),
    @LastName nvarchar(255),
    @CountryId int,
    @StateId int,
    @CityId int,
    @EmailAddress nvarchar(255),
    @MobileNumber nvarchar(15),
    @PanNumber nvarchar(12),
    @PassportNumber nvarchar(20),
    @ProfileImage nvarchar(100),
    @Gender TINYINT,
    @IsActive BIT,
    @DateOfBirth DATE,
    @DateOfJoinee DATE,
    @CreatedDate DATE,
    @UpdatedDate DATE,
    @IsDeleted BIT,
    @DeletedDate DATE
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	--BEGIN TRANSACTION
	--BEGIN TRY
		
		
		if(@EmployeeID!=0)
				Begin
				UPDATE EmployeeMaster SET FirstName=@FirstName,LastName=@LastName,CountryId=@CountryId,StateId=@StateId,
				CityId=@CityId,EmailAddress=@EmailAddress,MobileNumber=@MobileNumber,PanNumber=@PanNumber,PassportNumber=@PassportNumber,
				ProfileImage=@ProfileImage,Gender=@Gender,IsActive=@IsActive,DateOfBirth=@DateOfBirth,DateOfJoinee=@DateOfJoinee,
				CreatedDate=@CreatedDate,UpdatedDate=@UpdatedDate,IsDeleted=@IsDeleted,DeletedDate=@DeletedDate where Row_Id=@EmployeeID

			--SET @EmployeeID = SCOPE_IDENTITY();


		SELECT *
        FROM EmployeeMaster E
        WHERE E.Row_Id = @EmployeeID;

		End

		else
		Begin
			INSERT INTO EmployeeMaster
			( FirstName, LastName,CountryId,StateId,CityId,EmailAddress,MobileNumber,PanNumber,PassportNumber,ProfileImage,
			Gender,IsActive,DateOfBirth,DateOfJoinee,CreatedDate,UpdatedDate,IsDeleted,DeletedDate) 
            VALUES 
		    (@FirstName,@LastName,@CountryId,@StateId,@CityId,@EmailAddress,@MobileNumber,@PanNumber,@PassportNumber,@ProfileImage,
			@Gender,@IsActive,@DateOfBirth,@DateOfJoinee,@CreatedDate,@UpdatedDate,@IsDeleted,@DeletedDate)

			SET @EmployeeID = SCOPE_IDENTITY();


		 SELECT *
        FROM EmployeeMaster E
        WHERE E.Row_Id = @EmployeeID;

		End




	--	IF @@TRANCOUNT > 0 
	--		BEGIN COMMIT TRANSACTION
	--	END
	--END TRY
	--BEGIN CATCH
	--	IF @@TRANCOUNT < 0
	--		BEGIN ROLLBACK TRANSACTION
	--	END	
	--	SELECT 'Exception'

	--END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_EmployeeDetailByEmailId]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GET_EmployeeDetailByEmailId] 
(
	@EmailID nvarchar(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		


			Select E.Row_Id,E.EmployeeCode,E.FirstName,E.LastName,E.EmailAddress,E.MobileNumber,E.CountryId,E.StateId,E.CityId,
			E.Gender,E.DateOfBirth,E.DateOfJoinee,E.UpdatedDate,E.DeletedDate,E.ProfileImage,E.IsActive from EmployeeMaster E where E.EmailAddress=@EmailID

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_EmployeeDetailByMobile]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GET_EmployeeDetailByMobile] 
(
	@Mobile nvarchar(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		


			Select E.Row_Id,E.EmployeeCode,E.FirstName,E.LastName,E.EmailAddress,E.MobileNumber,E.CountryId,E.StateId,E.CityId,
			E.Gender,E.DateOfBirth,E.DateOfJoinee,E.UpdatedDate,E.DeletedDate,E.ProfileImage,E.IsActive from EmployeeMaster E where E.MobileNumber=@Mobile

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_EmployeeDetailByPAN]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GET_EmployeeDetailByPAN] 
(
	@PAN nvarchar(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		


			Select E.Row_Id,E.EmployeeCode,E.FirstName,E.LastName,E.EmailAddress,E.MobileNumber,E.CountryId,E.StateId,E.CityId,
			E.Gender,E.DateOfBirth,E.DateOfJoinee,E.UpdatedDate,E.DeletedDate,E.ProfileImage,E.IsActive from EmployeeMaster E where E.PanNumber=@PAN

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_EmployeeDetailByPassport]    Script Date: 29-01-2024 11:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GET_EmployeeDetailByPassport] 
(
	@Passport nvarchar(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
	BEGIN TRY
		


			Select E.Row_Id,E.EmployeeCode,E.FirstName,E.LastName,E.EmailAddress,E.MobileNumber,E.CountryId,E.StateId,E.CityId,
			E.Gender,E.DateOfBirth,E.DateOfJoinee,E.UpdatedDate,E.DeletedDate,E.ProfileImage,E.IsActive from EmployeeMaster E where E.PassportNumber=@Passport

		IF @@TRANCOUNT > 0 
			BEGIN COMMIT TRANSACTION
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT < 0
			BEGIN ROLLBACK TRANSACTION
		END	
	END CATCH

	
END
GO
USE [master]
GO
ALTER DATABASE [Alpha_PrasadPillay] SET  READ_WRITE 
GO
