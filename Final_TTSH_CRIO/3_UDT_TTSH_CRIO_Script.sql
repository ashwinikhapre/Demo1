USE [TTSH_CRIO]
GO
/****** Object:  UserDefinedFunction [dbo].[ConvertDateToddMMYYYY]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[ConvertDateToddMMYYYY](@inputdate Nvarchar(50)) returns varchar(50)
begin
	
	declare @date as varchar(50)
	select @date=(select cast(DATEPART(d,cast(@inputdate as datetime)) as varchar(50)) +'-' + SUBSTRING(DATENAME(m,cast(@inputdate as datetime)),0,4)
	 + '-' + cast(DATEpart(YEAR, cast(@inputdate as datetime)) as varchar(50)) ) 
	return @date
end



GO
/****** Object:  UserDefinedFunction [dbo].[CSVToTable]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CSVToTable] (@InStr VARCHAR(MAX))
RETURNS @TempTab TABLE
   (id int not null)
AS
BEGIN
    ;-- Ensure input ends with comma
	SET @InStr = REPLACE(@InStr + ',', ',,', ',')
	DECLARE @SP INT
DECLARE @VALUE VARCHAR(1000)
WHILE PATINDEX('%,%', @INSTR ) <> 0 
BEGIN
   SELECT  @SP = PATINDEX('%,%',@INSTR)
   SELECT  @VALUE = LEFT(@INSTR , @SP - 1)
   SELECT  @INSTR = STUFF(@INSTR, 1, @SP, '')
   INSERT INTO @TempTab(id) VALUES (@VALUE)
END
	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[CSVToTableWithID]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CSVToTableWithID] (@ID INT, @InStr VARCHAR(MAX),@old varchar(max),@new varchar(max))
RETURNS @TempTab TABLE
   (tempid int IDENTITY(1,1) not null, 
   Id int not null,
   Data NVARCHAR(MAX),NewData Nvarchar(max),OldData Nvarchar(max))
AS
BEGIN
    ;-- Ensure input ends with comma
	SET @InStr = REPLACE(@InStr + ',', ',,', ',')
	DECLARE @SP INT,@sp1 int,@sp2 int

	SET @old = REPLACE(@old + ',', ',,', ',')

	SET @new = REPLACE(@new + ',', ',,', ',')

DECLARE @VALUE VARCHAR(1000),@value1 varchar(max),@value2 varchar(max)
WHILE PATINDEX('%,%', @INSTR ) <> 0 
BEGIN
   SELECT  @SP = PATINDEX('%,%',@INSTR)
   SELECT  @VALUE = LEFT(@INSTR , @SP - 1)
   SELECT  @INSTR = STUFF(@INSTR, 1, @SP, '')


   SELECT  @SP1 = PATINDEX('%,%',@old)
   SELECT  @VALUE1 = LEFT(@old , @SP1 - 1)
   SELECT  @old = STUFF(@old, 1, @SP1, '')

     SELECT  @SP2 = PATINDEX('%,%',@new)
	 SELECT  @VALUE2 = LEFT(@new , @SP2 - 1)
	 SELECT  @new = STUFF(@new, 1, @SP2, '')

   INSERT INTO @TempTab(Id, Data,OldData,NewData) VALUES (@ID,@VALUE,@value1,@value2)
END
	RETURN
END




GO
/****** Object:  UserDefinedFunction [dbo].[CSVVarcharToTable_Audit]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[CSVVarcharToTable_Audit] (@String varchar(MAX), @Delimiter char(1))       
RETURNS @output TABLE(data NVARCHAR(MAX)   
    )   
    BEGIN   
        DECLARE @start INT, @end INT   
        SELECT @start = 1, @end = CHARINDEX(@delimiter, @string)   
        WHILE @start < LEN(@string) + 1 BEGIN   
            IF @end = 0    
                SET @end = LEN(@string) + 1  
            INSERT INTO @output (data)    
            VALUES(SUBSTRING(@string, @start, @end - @start))   
            SET @start = @end + 1   
            SET @end = CHARINDEX(@delimiter, @string, @start)  
        END   
        RETURN   
    END 


GO
/****** Object:  UserDefinedFunction [dbo].[fn_CollaboratorCMaster]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_CollaboratorCMaster]
(
	@ContractMasterId	int
)
returns varchar(max)
as
begin
		declare @CollaboratorString varchar(max) = ''

		declare @collaborator table(id				int identity(1,1),
									name			varchar(100), 
									email			varchar(100), 
									Institution		varchar(100), 
									phNo			varchar(20), 
									country			varchar(50),
									contractReqDate varchar(20))

		insert into @collaborator(name,
								  email,
								  Institution,
								  phNo,
								  country,
								  contractReqDate)

		
		select distinct
				ccm.s_Name, 
				iif(RTRIM(LTRIM(ccm.s_Email2)) <> '', ccm.s_Email1 + ',' + ccm.s_Email2 , ccm.s_Email1) Email,
				ccm.s_Institution,
				ccm.s_PhoNo,
				(select isnull(s_Name,'') from tblCountry_Master c where ccm.i_Country_ID = c.i_ID and c.IsDeleted = 0) countryname,
				convert(varchar(20), ccd.dt_Contract_Request_Date, 105)
		 from 
				tblContract_Collobrator_Master		ccm,
				tblContract_Collaborator_Details	ccd,
				tblContract_Master					cm,
				tblSelectedCollborators_Details		scd
		
		where 
				ccd.i_Contract_Collaborator_ID = ccm.i_ID
				and cm.i_ID = ccd.i_Contract_Master_ID
				and scd.i_Collobrator_ID = ccd.i_Contract_Collaborator_ID
				and cm.i_ID = @ContractMasterId
				and isnull(ccm.IsDeleted,0) = 0
				and isnull(cm.IsDeleted,0) = 0
				and isnull(ccm.IsDeleted,0) = 0
				


				declare @rowCnt		int = (select count(*) from @collaborator)
				declare @Current	int = 0

				if @rowCnt > 0
				begin
					
					set @CollaboratorString = '<p style=''font-size: 14px; padding: 10px 10px 0px 10px; color: #e41053;''><b>Collaborator Details</b></p><table class=''tab''><tr><th class=''piTd''>Collaborator Name</th><th class=''piTd''>Email Id</th><th class=''piTd''>Institution</th><th class=''piTd''>Phone No.</th><th class=''piTd''>Country</th><th class=''piTd''>Contract Req. Date</th></tr>'

					
					declare @name			varchar(100)
					declare @email			varchar(100)
					declare @Institution	varchar(100)
					declare @phNo			varchar(20)
					declare @country		varchar(50)
					declare @Reqdate		varchar(20)




					while @Current < @rowCnt
					Begin

					select
						 @name			=	isnull(name,''),
						 @email			=	isnull(email,''),
						 @Institution	=   isnull(Institution,''),
						 @phNo			=	isnull(phNo,''),		
						 @country		=	isnull(country,''),
						 @Reqdate		=	isnull(contractReqDate,'')	
					from 
						@collaborator
					where 
						id = (@Current + 1) 




						set @CollaboratorString = @CollaboratorString + '<tr>'

						
						
						+ '<td class=''piTd''>'+ @name +'</td>'
						+ '<td class=''piTd''>'+ @email +'</td>'
						+ '<td class=''piTd''>'+ @Institution +'</td>'
						+ '<td class=''piTd''>'+ @phNo +'</td>'
						+ '<td class=''piTd''>'+ @country +'</td>'
						+ '<td class=''piTd''>'+ @Reqdate+'</td></tr>'
						



						set @Current = @Current + 1
					END
					set @CollaboratorString = @CollaboratorString + '</table>'
				end

				
		return @CollaboratorString
			
end
		
		


		
		


GO
/****** Object:  UserDefinedFunction [dbo].[fn_CollaboratorDetails]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_CollaboratorDetails]
(
	@ContractMasterId	int
)
returns varchar(max)
as
begin
		declare @CollaboratorString varchar(max) = ''

		declare @collaborator table(id				int identity(1,1),
									DisplayId		varchar(50), 
									name			varchar(100), 
									email			varchar(100), 
									Institution		varchar(100), 
									phNo			varchar(20), 
									country			varchar(50))

		insert into @collaborator(DisplayId,
								  name,
								  email,
								  Institution,
								  phNo,
								  country)

		select distinct
				ISNULL(cd.s_Contract_Display_Id,''),
				ISNULL(ccm.s_Name,''), 
				ISNULL(iif(RTRIM(LTRIM(ccm.s_Email2)) <> '', ccm.s_Email1 + ',' + ccm.s_Email2 , ccm.s_Email1),'') Email,
				ISNULL(ccm.s_Institution,''),
				ISNULL(ccm.s_PhoNo,''),
				ISNULL((select isnull(s_Name,'') from tblCountry_Master c where ccm.i_Country_ID = c.i_ID and c.IsDeleted = 0),'') countryname
		 from 
				tblContract_Collobrator_Master		ccm,
				tblContract_Collaborator_Details	ccd,
				tblContract_Master					cm,
				tblContract_Details					cd,
				tblSelectedCollborators_Details		scd,
				tblContract_Status_Date				csd
		
		where 
				ccd.i_Contract_Collaborator_ID = ccm.i_ID
				and cm.i_ID = ccd.i_Contract_Master_ID
				and cd.i_Project_ID = cm.i_Project_ID
				and scd.i_Contract_Details_Id = cd.i_ID
				and scd.i_Collobrator_ID = ccd.i_Contract_Collaborator_ID

				and csd.i_Project_ID = cm.i_Project_ID
				and csd.i_Contract_Status_ID = cd.i_Contract_Status_ID
				AND CD.i_Contract_Status_ID = csd.i_Contract_Status_ID

				and cast(DATEADD(DD,15, csd.dt_Status_Date) AS DATE) = CAST(GETDATE() AS DATE)

				and cm.i_ID = @ContractMasterId
				and isnull(ccm.IsDeleted,0) = 0
				and isnull(cd.IsDeleted,0) = 0
				and isnull(cm.IsDeleted,0) = 0
				and isnull(ccm.IsDeleted,0) = 0


				declare @rowCnt		int = (select count(*) from @collaborator)
				declare @Current	int = 0

				if @rowCnt > 0
				begin
					
					set @CollaboratorString = '<p style=''font-size: 14px; padding: 10px 10px 0px 10px; color: #e41053;''><b>Collaborator Details</b></p><table class=''tab''><tr><th class=''piTd''>Contract Id.</th><th class=''piTd''>Collaborator Name</th><th class=''piTd''>Email Id</th><th class=''piTd''>Institution</th><th class=''piTd''>Phone No.</th><th class=''piTd''>Country</th></tr>'

					declare @DisplayId		varchar(50)
					declare @name			varchar(100)
					declare @email			varchar(100)
					declare @Institution	varchar(100)
					declare @phNo			varchar(20)
					declare @country		varchar(50)




					while @Current < @rowCnt
					Begin

					select
						 @DisplayId		=	DisplayId,
						 @name			=	name,
						 @email			=	email,
						 @Institution	=   Institution,
						 @phNo			=	phNo,		
						 @country		=	country		

					from 
						@collaborator
					where 
						id = (@Current + 1) 




						set @CollaboratorString = @CollaboratorString + '<tr>'

						
						+ '<td class=''piTd''>'+ ISNULL(@DisplayId,'')+'</td>'
						+ '<td class=''piTd''>'+ ISNULL(@name,'') +'</td>'
						+ '<td class=''piTd''>'+ ISNULL(@email,'') +'</td>'
						+ '<td class=''piTd''>'+ ISNULL(@Institution,'') +'</td>'
						+ '<td class=''piTd''>'+ ISNULL(@phNo,'') +'</td>'
						+ '<td class=''piTd''>'+ ISNULL(@country,'') +'</td></tr>'
						



						set @Current = @Current + 1
					END
					set @CollaboratorString = @CollaboratorString + '</table>'
				end

				
		return @CollaboratorString
			
end
		
		


		
		

GO
/****** Object:  UserDefinedFunction [dbo].[fn_CollaboratoronHoldDetails]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_CollaboratoronHoldDetails]
(
	@ContractMasterId	int
)
returns varchar(max)
as
begin
		declare @CollaboratorString varchar(max) = ''

		declare @collaborator table(id				int identity(1,1),
									DisplayId		varchar(50), 
									name			varchar(100), 
									email			varchar(100), 
									Institution		varchar(100), 
									phNo			varchar(20), 
									country			varchar(50))

		insert into @collaborator(DisplayId,
								  name,
								  email,
								  Institution,
								  phNo,
								  country)

		select distinct
				cd.s_Contract_Display_Id,
				ccm.s_Name, 
				iif(RTRIM(LTRIM(ccm.s_Email2)) <> '', ccm.s_Email1 + ',' + ccm.s_Email2 , ccm.s_Email1) Email,
				ccm.s_Institution,
				ccm.s_PhoNo,
				(select isnull(s_Name,'') from tblCountry_Master c where ccm.i_Country_ID = c.i_ID and c.IsDeleted = 0) countryname
		 from 
				tblContract_Collobrator_Master		ccm,
				tblContract_Collaborator_Details	ccd,
				tblContract_Master					cm,
				tblContract_Details					cd,
				tblSelectedCollborators_Details		scd,
				tblContract_Status_Date				csd
		
		where 
				ccd.i_Contract_Collaborator_ID = ccm.i_ID
				and cm.i_ID = ccd.i_Contract_Master_ID
				and cd.i_Project_ID = cm.i_Project_ID
				and scd.i_Contract_Details_Id = cd.i_ID
				and scd.i_Collobrator_ID = ccd.i_Contract_Collaborator_ID

				and csd.i_Project_ID = cm.i_Project_ID
				and csd.i_Contract_Status_ID = cd.i_Contract_Status_ID
				AND CD.i_Contract_Status_ID = csd.i_Contract_Status_ID

				--and cast(DATEADD(MM,3, csd.dt_Status_Date) AS DATE) = CAST(GETDATE() AS DATE)
				and cast(dateadd(dd,1,DATEADD(MM,3, csd.dt_Status_Date)) AS DATE) = CAST(GETDATE() AS DATE)

				and cm.i_ID = @ContractMasterId
				and isnull(ccm.IsDeleted,0) = 0
				and isnull(cd.IsDeleted,0) = 0
				and isnull(cm.IsDeleted,0) = 0
				and isnull(ccm.IsDeleted,0) = 0


				declare @rowCnt		int = (select count(*) from @collaborator)
				declare @Current	int = 0

				if @rowCnt > 0
				begin
					
					set @CollaboratorString = '<p style=''font-size: 14px; padding: 10px 10px 0px 10px; color: #e41053;''><b>Collaborator Details</b></p><table class=''tab''><tr><th class=''piTd''>Contract Id.</th><th class=''piTd''>Collaborator Name</th><th class=''piTd''>Email Id</th><th class=''piTd''>Institution</th><th class=''piTd''>Phone No.</th><th class=''piTd''>Country</th></tr>'

					declare @DisplayId		varchar(50)
					declare @name			varchar(100)
					declare @email			varchar(100)
					declare @Institution	varchar(100)
					declare @phNo			varchar(20)
					declare @country		varchar(50)




					while @Current < @rowCnt
					Begin

					select
						 @DisplayId		=	DisplayId,
						 @name			=	name,
						 @email			=	email,
						 @Institution	=   Institution,
						 @phNo			=	phNo,		
						 @country		=	country		

					from 
						@collaborator
					where 
						id = (@Current + 1) 




						set @CollaboratorString = @CollaboratorString + '<tr>'

						
						+ '<td class=''piTd''>'+ @DisplayId+'</td>'
						+ '<td class=''piTd''>'+ @name +'</td>'
						+ '<td class=''piTd''>'+ @email +'</td>'
						+ '<td class=''piTd''>'+ @Institution +'</td>'
						+ '<td class=''piTd''>'+ @phNo +'</td>'
						+ '<td class=''piTd''>'+ @country +'</td></tr>'
						



						set @Current = @Current + 1
					END
					set @CollaboratorString = @CollaboratorString + '</table>'
				end

				
		return @CollaboratorString
			
end
		
		

GO
/****** Object:  UserDefinedFunction [dbo].[fnCalculateWorkingDays]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnCalculateWorkingDays]
(
		/*holiday master if any present is not considered*/
       @StartDate	Date,
	   @EndDate		Date	=	null
)
returns int
as 
begin
					declare @DayCount int = 0

					if @StartDate > @EndDate
					begin
						return 0
					end

                     if @EndDate is null
					 begin
							SET @EndDate = GETDATE()
					 end

                     SELECT @DayCount =
                        (DATEDIFF(dd, @StartDate, @EndDate) + 1)
                       -(DATEDIFF(wk, @StartDate, @EndDate) * 2)
                       -(CASE WHEN DATENAME(dw, @StartDate) = 'Sunday' THEN 1 ELSE 0 END)
                       -(CASE WHEN DATENAME(dw, @EndDate) = 'Saturday' THEN 1 ELSE 0 END)
						
						
		return @DayCount	
end
				
					

GO
/****** Object:  UserDefinedFunction [dbo].[fnGetADNameByGUID]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnGetADNameByGUID]
(
       @ObjectGUID char(36)
)
returns varchar(max)
as
Begin   
		declare  @InstanceName VARCHAR(200)
		declare  @DbName varchar(200)

		SELECT  @InstanceName = (SELECT @@servername)
		select  @DbName = DB_NAME()


		declare @Result table(Name varchar(100))
        declare @op varchar(100) =''

		--Insert @Result
       -- SELECT * from OPENROWSET('SQLNCLI10', 'Server=@InstanceName;UID=<LOGIN>;Pwd=<PASSWORD>;', 'Exec dbo.Proc1') AS C 

		declare @sql varchar(max) 


		SELECT  @sql = ' select a.* from openrowset(''SQLNCLI'', ''Server='
						+ @InstanceName
						+ ';Trusted_Connection=yes;'', ''Exec '+@DbName+'.dbo.spGetADNameByGUID '''+ @ObjectGUID +''' '') as a'

		--insert @Result
		--exec @sql

		set @sql = 'Exec dbo.spGetADNameByGUID '+ @ObjectGUID +''
		
		--select @op = name from @Result
        
		exec @sql
		return @op
end



GO
/****** Object:  UserDefinedFunction [dbo].[fnGetAmmendmentData]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnGetAmmendmentData]
(
       @RegulatoryId	int
)
returns varchar(2000)
as 
begin

				declare @Ammendment table (id int identity(1,1), AmmendmentDate varchar(20), FilePath varchar(200))
				
				insert into @Ammendment(AmmendmentDate,FilePath)
				select 
						Convert(varchar, a.dt_Submission_Date,105) dt_Submission_Date ,  
							(SELECT iif(a.s_Uploaded_File is null,'',
										iif(CHARINDEX('/',a.s_Uploaded_File) > 0, RIGHT(a.s_Uploaded_File, CHARINDEX('/', REVERSE(a.s_Uploaded_File)) - 1),
											iif(CHARINDEX('\',a.s_Uploaded_File) > 0, RIGHT(a.s_Uploaded_File, CHARINDEX('\', REVERSE(a.s_Uploaded_File)) - 1), a.s_Uploaded_File)))) s_Uploaded_File
				from 
						tblRegulatory_Ammendments_Details a
				where 	
						a.i_Regulatory_ID = @RegulatoryId
					    AND  [dbo].[fnCalculateWorkingDays](CAST(a.dt_Submission_Date AS DATE),GETDATE()) = 15

				Declare @StrStudy varchar(2000) = '<p style=''font-size: 14px; padding: 10px 10px 0px 10px; color: #e41053;''><b>Ammendment Details</b></p><table class=''tab''><tr><th class=''piTd''>Sr. No.</th><th class=''piTd''>Ammendment Submission Date</th><th class=''piTd''>File Path</th></tr>'

				declare @rowCnt		int = (select count(*) from @Ammendment)
				declare @Current	int = 0
				
				declare @date varchar(20) = ''
				declare @path varchar(200) = ''

				while @Current < @rowCnt
				Begin

					select 
							@date	= AmmendmentDate,
							@path	= FilePath 
					from 
							@Ammendment
					where 
							id = (@Current + 1)

					set @StrStudy = @StrStudy + '<tr>'	
					
					+ '<td class=''piTd''>'+convert(varchar,(@Current+1))+'</td>'
					+ '<td class=''piTd''>'+ @date +'</td>'
					+ '<td class=''piTd''>'+ @path +'</td></tr>'

					set @Current = @Current + 1
				End--@Current < @rowCnt

				set @StrStudy = @StrStudy + '</table>'


					return @StrStudy
end
				
					

GO
/****** Object:  UserDefinedFunction [dbo].[fnGetBackupCoordinators]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnGetBackupCoordinators]
(
	   @SelectedProjectId	int,
       @BlindedUnblinded	char(1)
)
returns varchar(200)
as 
begin
		declare @coordinators varchar(200)
		

	SELECT @coordinators = STUFF((select ', ' + s_Cordinator_name as [data()] 
 from tblSelectedProject_BU_Details where i_Selected_Project_ID = @SelectedProjectId
 and s_Blinded_UnBlinded = ''+@BlindedUnblinded+''
 for xml path('')),1,2,'') 				

		return @coordinators
end
				


GO
/****** Object:  UserDefinedFunction [dbo].[fnGetPIINformation]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGetPIINformation]( @i_ProjectId int )
RETURNS @PiInfoTable TABLE
(
    i_RowID				int,
	i_PiId				int,
    s_PiName			nvarchar(100),
    s_EmailId			nvarchar(100),
    s_ContactNo			nvarchar(100),
    s_DepartmetName		nvarchar(100)
   )
AS
BEGIN
   INSERT @PiInfoTable(i_RowID,i_PiId,s_PiName,s_EmailId,s_ContactNo,s_DepartmetName)
SELECT ROW_NUMBER() OVER(ORDER BY s_Firstname ASC) AS RowNo,i_id, s_Firstname + ' ' + s_Lastname as name, s_Email,s_Phone_no, (select m.s_Name from tblDept_Master m where m.i_ID = p.i_Dept_ID) Department
From 
[tblPI_Master] p WHERE [i_ID] in 
(  
    SELECT  [tblProject_Dept_PI].[i_PI_ID] 
    FROM  [tblProject_Dept_PI]
    WHERE   [tblProject_Dept_PI].[i_Project_ID] = @i_ProjectId
)
RETURN
END

GO
/****** Object:  UserDefinedFunction [dbo].[fnGetStudyTeam]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnGetStudyTeam]
(
		
       @RegulatoryId	int
)
returns varchar(2000)
as 
begin

				declare @StudyTeam table (id int identity(1,1), Name varchar(100), Email varchar(100))
				
				insert into @StudyTeam(Name,Email)
				select s.s_First_Name + ' ' + s.s_Last_Name as Name, s.s_Email_ID as EmailId 
				from tblRegulatory_StudyTeam s
				where s.i_Regulatory_ID = @RegulatoryId
				--<style>.tabWidth{width:50%}.w20{width:20%}.w40{width:40%}</style>
				--Declare @StrStudy varchar(2000) = '<p style=''font-size: 14px; padding: 10px 10px 0px 10px; color: #e41053;''><b>Study Team Details</b></p><table class=''tab''><tr><th class=''w20 mailhd''>Sr. No.</th><th class=''w40 mailhd''>Name</th><th class=''w40 mailhd''>Email Id</th></tr>'
				Declare @StrStudy varchar(2000) = '<p style=''font-size: 14px; padding: 10px 10px 0px 10px; color: #e41053;''><b>Study Team Details</b></p><table class=''tab''><tr><th class=''piTd''>Sr. No.</th><th class=''piTd''>Name</th><th class=''piTd''>Email Id</th></tr>'

				declare @rowCnt		int = (select count(*) from @StudyTeam)
				declare @Current	int = 0
				
				declare @name varchar(100) = ''
				declare @email varchar(100) = ''

				while @Current < @rowCnt
				Begin

					select 
							@name	= Name,
							@email	= Email 
					from 
							@StudyTeam
					where 
							id = (@Current + 1)

					set @StrStudy = @StrStudy + '<tr>'	
					/*+ '<td class=''w20 mailtd''>'+convert(varchar,(@Current+1))+'</td>'
					+ '<td class=''w40 mailtd''>'+ @name +'</td>'
					+ '<td class=''w40 mailtd''>'+ @email +'</td></tr>'*/

					+ '<td class=''piTd''>'+convert(varchar,(@Current+1))+'</td>'
					+ '<td class=''piTd''>'+ @name +'</td>'
					+ '<td class=''piTd''>'+ @email +'</td></tr>'

					set @Current = @Current + 1
				End--@Current < @rowCnt

				set @StrStudy = @StrStudy + '</table>'


					return @StrStudy
end
				
					

GO
/****** Object:  UserDefinedFunction [dbo].[fnHexToOctalGUID]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnHexToOctalGUID]
(
	@GUIDString varchar(50)
)
returns varchar(50)
as
begin
		
		declare @cnt int  = 0
		declare @len int  = 0
		declare @OctalStr varchar(50) = ''
		
		declare @hexS varchar(50) = ltrim(rtrim(@GUIDString))
		set @hexS = substring(@hexS, 3 ,len(@hexS))
		--select @hexS 
		declare  @InterMediate_1 varchar(50) = stuff(stuff(stuff(stuff(@hexS, 9, 0, '-'),14,0,'-'),19,0,'-'),24,0,'-')
		declare @InterMediate_2 varchar(50) = ''

		declare @SplitedString table(Id int identity(1,1), String varchar(500))
		insert into @SplitedString(String)
		select * from dbo.fnSplitString(@InterMediate_1,'-')
		
		select @cnt = count(*) from @SplitedString
		declare @curRow int = 0
		declare @StrConsidered varchar(30) = ''

		while @curRow < @cnt
		begin
			select @StrConsidered = String from @SplitedString
			where Id = (@curRow + 1)
			
			if @curRow < (@cnt - 2)
			begin
				select @InterMediate_2 = @InterMediate_2 + [dbo].[fnReverseGUID](@StrConsidered) + '-'
			end
			else
			begin
				select @InterMediate_2 = @InterMediate_2 + @StrConsidered + '-'
			end

			set @curRow = @curRow + 1
		end

		if @InterMediate_2 <> ''
		begin
			set @InterMediate_2 = ltrim(rtrim(@InterMediate_2))

			if(RIGHT(@InterMediate_2,1) = '-')
			begin
				set @InterMediate_2 = SUBSTRING(@InterMediate_2,0,len(@InterMediate_2))
			end
		end


		set @OctalStr = @InterMediate_2 
		
		
		return ltrim(rtrim(@OctalStr))
end



GO
/****** Object:  UserDefinedFunction [dbo].[fnReverseGUID]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnReverseGUID]
(
	@GUIDString varchar(8)
)
returns varchar(8)
as
begin
		declare @InputStr varchar(8) = @GUIDString
		declare @cnt int  = 0
		declare @len int  = 0
		declare @RevStr varchar(8) = ''
		set @len = len(@InputStr)
		while @len > 0
		begin
				declare @Sub varchar(2) = SUBSTRING(@InputStr,1,2)
				set @RevStr =   @Sub + @RevStr
				set @InputStr = REPLACE(@InputStr, @Sub,'')
				set @len = len(@InputStr)

				
		end
		
		return @RevStr
end

GO
/****** Object:  UserDefinedFunction [dbo].[fnSplitString]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSplitString] 
( 
    @string NVARCHAR(MAX), 
    @delimiter CHAR(1) 
) 
RETURNS @output TABLE(splitdata NVARCHAR(MAX) 
) 
BEGIN 
    DECLARE @start INT, @end INT 
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string) 
    WHILE @start < LEN(@string) + 1 BEGIN 
        IF @end = 0  
            SET @end = LEN(@string) + 1
       
        INSERT INTO @output (splitdata)  
        VALUES(SUBSTRING(@string, @start, @end - @start)) 
        SET @start = @end + 1 
        SET @end = CHARINDEX(@delimiter, @string, @start)
        
    END 
    RETURN 
END

GO
/****** Object:  UserDefinedFunction [dbo].[FullMonthsSeparation]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FullMonthsSeparation] 
(
    @DateA DATETIME,
    @DateB DATETIME
)
RETURNS INT
AS
BEGIN
    DECLARE @Result INT

    DECLARE @DateX DATETIME
    DECLARE @DateY DATETIME

    IF(@DateA < @DateB)
    BEGIN
    	SET @DateX = @DateA
    	SET @DateY = @DateB
    END
    ELSE
    BEGIN
    	SET @DateX = @DateB
    	SET @DateY = @DateA
    END

    SET @Result = (
    				SELECT 
    				CASE 
    					WHEN DATEPART(DAY, @DateX) > DATEPART(DAY, @DateY)
    					THEN DATEDIFF(MONTH, @DateX, @DateY) - 1
    					ELSE DATEDIFF(MONTH, @DateX, @DateY)
    				END
    				)

    RETURN @Result
END


GO
/****** Object:  UserDefinedFunction [dbo].[FunGetDataType]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		<ATUL.S>
-- CREATE DATE: <8 May 2015>
-- =============================================
CREATE FUNCTION [dbo].[FunGetDataType](@STRING VARCHAR(8000))
RETURNS @TEMPTABLE  TABLE(ITEMS VARCHAR(50),VALUE VARCHAR(50))
AS 
BEGIN
IF @STRING LIKE '%INT'
	BEGIN
		INSERT INTO @TEMPTABLE VALUES(LOWER('INT'),'0')
	END
ELSE IF @STRING LIKE 'BIT'
	BEGIN
		INSERT INTO @TEMPTABLE VALUES(LOWER('BOOL'),'false')
	END
ELSE IF @STRING LIKE '%BINARY%'
	BEGIN
		INSERT INTO @TEMPTABLE VALUES(LOWER('BYTE'),'0')
	END
ELSE IF @STRING LIKE '%CHAR%' OR @STRING LIKE '%TEXT%'
	BEGIN
		INSERT INTO @TEMPTABLE VALUES(LOWER('STRING'),LOWER('string.')+UPPER('e')+LOWER('mpty'))
	END
ELSE IF @STRING LIKE 'NUMERIC' OR @STRING LIKE 'REAL' OR @STRING LIKE '%MONEY' OR @STRING LIKE '%DECIMAL'
	BEGIN
		INSERT INTO @TEMPTABLE VALUES(LOWER('DOUBLE'),'0.00')
	END
ELSE IF @STRING LIKE '%DATE%' 
	BEGIN
		INSERT INTO @TEMPTABLE VALUES(('DateTime?'),'null')
	END
RETURN 
END




GO
/****** Object:  UserDefinedFunction [dbo].[GetAdServerIp]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetAdServerIp]()
returns varchar(Max)
as 
begin
	return 'LDAP://192.168.0.109/OU=TTSH,OU=Ruser,DC=rsinngp,DC=rgen,DC=com'
end

GO
/****** Object:  UserDefinedFunction [dbo].[GETCHILDAMOUNT]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GETCHILDAMOUNT](@Projectid int)
RETURNS  VARCHAR(50)
AS
BEGIN
DECLARE			@RETVAL VARCHAR(50)
SET @RETVAL = ''

Select  @RETVAL = ISNULL(SUM(ISNULL(GM.i_Amount_Requested,0)),0) From tblGrant_Master GM Where GM.i_Project_ID IN (
SELECT  I_iD FROM tblProject_Master WHERE i_Parent_ProjectID = @Projectid ) 
 and GM.i_Outcome <> 2 and isnull(GM.IsDeleted,0)=0 

RETURN	@RETVAL
		
END							
	

GO
/****** Object:  UserDefinedFunction [dbo].[GetCommaSeparated]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[GetCommaSeparated](@TableName varchar(200)) 
RETURNS VARCHAR(max)
AS BEGIN
   declare  @field int ,
			@maxfield int=100000 ,
			@fieldname varchar(128) ,
			@listStr VARCHAR(MAX)
select @field = 0, @maxfield = max(ORDINAL_POSITION) from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = @TableName
while @field < @maxfield
begin
	select @field = min(ORDINAL_POSITION) from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = @TableName and ORDINAL_POSITION > @field
	select @fieldname = COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = @TableName and ORDINAL_POSITION = @field
	SELECT @listStr = COALESCE(@listStr+',' ,'') + @fieldname
end
RETURN @listStr
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetCurrentContractStatus]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetCurrentContractStatus](@inputstr  int)
returns  int
as
begin
	declare @str int
	Declare @Status_ID int
	Declare @Status_Date  DateTime
	--set @str=RIGHT(SUBSTRING(@inputstr,0,len(@inputstr)),len(SUBSTRING(@inputstr,0,len(@inputstr)))-1)

	
	Declare TEMPCUR Cursor For Select i_Contract_Status_ID,dt_Status_Date From tblContract_Status_Date Where i_Contract_ID = @inputstr Order By i_Contract_Status_ID DESC
	OPEN TEMPCUR
	FETCH NEXT FROM TEMPCUR into @Status_ID,@Status_Date

	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @Status_Date is Not NULL
		BEGIN
			Set @str = Cast(@Status_ID as int)
			GOTO ENDCURSOR
		END
		
		FETCH NEXT FROM TEMPCUR into @Status_ID,@Status_Date

	END
	ENDCURSOR:
	CLOSE TEMPCUR
	DEALLOCATE TEMPCUR

	return  @str
end



GO
/****** Object:  UserDefinedFunction [dbo].[GETDURATION]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GETDURATION](@Projectid int)
RETURNS  VARCHAR(50)
AS
BEGIN


DECLARE			@RETVAL VARCHAR(50)

Select  @RETVAL =  MAX(GM.s_Duration) From tblGrant_Master GM Where GM.i_Project_ID IN (
SELECT  I_iD FROM tblProject_Master WHERE i_Parent_ProjectID = @Projectid) 

RETURN	@RETVAL
		
END							
	

GO
/****** Object:  UserDefinedFunction [dbo].[GetFileName]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetFileName](@inputfile as varchar(max))returns varchar(max)
as
begin
	declare  @fileName as varchar(max)

	set @fileName= (left((RIGHT(@inputfile, CHARINDEX('/', REVERSE('/' + @inputfile)) - 1)),charindex('~',(RIGHT(@inputfile, CHARINDEX('/', REVERSE('/' + @inputfile)) - 1)))-1))
					+  reverse(left(reverse(@inputfile),charindex('~',reverse(@inputfile))-4))
					return @fileName
end


GO
/****** Object:  UserDefinedFunction [dbo].[GetLastCharIndex]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GetLastCharIndex](@s varchar(max), @char varchar(200)) returns int
as
begin
 
 DECLARE  @lastIndex int
 DECLARE  @nOccurance int
 DECLARE @searchExpression varchar(max)
 SET @nOccurance = len(@s)
 SET @lastIndex = 0
 SET @searchExpression = @s
 
 while @nOccurance > 0
 BEGIN 
	SELECT @nOccurance = charIndex(@char, @searchExpression)
	IF (@nOccurance > 0)
	BEGIN
		SET @lastIndex = @lastIndex + @nOccurance
		SET @searchExpression = substring(@searchExpression, @nOccurance + 1, len(@searchExpression))
	END
 END
 
	
 return @lastIndex
 
end

GO
/****** Object:  UserDefinedFunction [dbo].[GetMonthFromYears]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[GetMonthFromYears](@YearVal varchar(250))
RETURNS VARCHAR(250)
AS
BEGIN	
	
	DECLARE @RETVAL VARCHAR(250)

	SELECT	@RETVAL = CASE
							WHEN  @YearVal = '1'	 THEN '6 Months'
							WHEN  @YearVal = '2'	 THEN '12 Months'
							WHEN  @YearVal = '3'	 THEN '18 Months'
							WHEN  @YearVal = '4'	 THEN '24 Months'
							WHEN  @YearVal = '5'	 THEN '30 Months'
							WHEN  @YearVal = '6'     THEN '36 Months'
							WHEN  @YearVal = '7'	 THEN '42 Months'
							WHEN  @YearVal = '8'     THEN '48 Months' 
							WHEN  @YearVal = '9'	 THEN '54 Months'
							WHEN  @YearVal = '10'	 THEN '60 Months'							
							WHEN  @YearVal = '11'	 THEN '66 Months'
							WHEN  @YearVal = '12'	 THEN '72 Months'
							WHEN  @YearVal = '13'	 THEN '78 Months'
							WHEN  @YearVal = '14'	 THEN '84 Months'
							WHEN  @YearVal = '15'	 THEN '90 Months'
							WHEN  @YearVal = '16'	 THEN '96 Months'
							WHEN  @YearVal = '17'	 THEN '102 Months'
							WHEN  @YearVal = '18'	 THEN '108 Months'
							WHEN  @YearVal = '19'	 THEN '114 Months'
							WHEN  @YearVal = '20'	 THEN '120 Months'
						
	--						WHEN  @YearVal = '1'  OR  @YearVal = '0.5'	 THEN '6 Months'
	--						WHEN  @YearVal = '1.0'  OR  @YearVal = '1'	 THEN '12 Months'
	--						WHEN  @YearVal = '1.5'  OR  @YearVal = '1.5'	 THEN '18 Months'
	--						WHEN  @YearVal = '2.0'  OR  @YearVal = '2'	 THEN '24 Months'
	--						WHEN  @YearVal = '2.5'  OR  @YearVal = '2.5'  THEN '30 Months'
	--						WHEN  @YearVal = '3.0'  OR  @YearVal = '3'    THEN '36 Months'
	--						WHEN  @YearVal = '3.5'  OR  @YearVal = '3.5'	 THEN '42 Months'
	--						WHEN  @YearVal = '4.0'  OR  @YearVal = '4'    THEN '48 Months' 
	--						WHEN  @YearVal = '4.5'  OR  @YearVal = '4.5'  THEN '54 Months'
	--						WHEN  @YearVal = '5.0'  OR  @YearVal = '5'  THEN '60 Months'							
	--						WHEN  @YearVal = '5.5'  OR  @YearVal = '5.5'  THEN '66 Months'
	--						WHEN  @YearVal = '6.0'  OR  @YearVal = '6'  THEN '72 Months'
	--						WHEN  @YearVal = '6.5'  OR  @YearVal = '6.5'  THEN '78 Months'
	--						WHEN  @YearVal = '7.0'  OR  @YearVal = '7'  THEN '84 Months'
	--						WHEN  @YearVal = '7.5'  OR  @YearVal = '7.5'  THEN '90 Months'
	--						WHEN  @YearVal = '8.0'  OR  @YearVal = '8'  THEN '96 Months'
	--						WHEN  @YearVal = '8.5'  OR  @YearVal = '8.5'  THEN '102 Months'
	--						WHEN  @YearVal = '9.0'  OR  @YearVal = '9'  THEN '108 Months'
	--						WHEN  @YearVal = '9.5'  OR  @YearVal = '9.5'  THEN '114 Months'
	--						WHEN  @YearVal = '10.0' OR  @YearVal = '10' THEN '120 Months'
					  END							    
	RETURN @RETVAL								    
END





GO
/****** Object:  UserDefinedFunction [dbo].[GetMonthName]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetMonthName](@fdate datetime,@ldate datetime) returns varchar(max)
as
begin
	declare @str as varchar(max)
	declare @yearf as varchar(max)
	declare @yearl as varchar(max)
	set @yearf=(select right(DATEPART(YEAR,@fdate),2))
	set @yearl=(select right(DATEPART(YEAR,@ldate),2))
	set @str=(select Substring(DATENAME(m,@fdate),0,4)+@yearf + ' - ' + Substring(DATENAME(m,@ldate),0,4)+@yearl)
	return @str
end

GO
/****** Object:  UserDefinedFunction [dbo].[GetPiEmailIdsByDisplayProjectId]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetPiEmailIdsByDisplayProjectId]
(
       @DisplayProjectId varchar(20)
)
returns varchar(Max)
as 
begin
       declare @RecepientList varchar(Max) = ''
       declare @tempTable table(id int identity(1,1) ,  recepients varchar(Max))
	  
	  insert into @tempTable
 	   SELECT   s_Email + ';'
       From 
        [tblPI_Master] WHERE [i_ID] in 
        (  
            SELECT  [tblProject_Dept_PI].[i_PI_ID] 
            FROM  [tblProject_Dept_PI]
            WHERE   [tblProject_Dept_PI].[i_Project_ID] = (select i_ID from tblProject_Master where upper(LTRIM(RTRIM(s_Display_Project_ID))) = (upper(LTRIM(RTRIM(@DisplayProjectId)))) and IsDeleted = 0)
        )

      
      declare @rowCnt int = 0
	  declare @currRow int = 0
	  select @rowCnt = count(*) from @tempTable

	  if @rowCnt > 0
	  begin
		while @currRow < @rowCnt
		begin
			set @RecepientList = @RecepientList + (select recepients from @tempTable where id = (@currRow + 1))
			set @currRow = @currRow + 1
		end
	  end
      
	  

       if @RecepientList <> '' 
       set @RecepientList = LEFT(@recepientList, LEN(@recepientList) - 1)
       return @RecepientList
end


GO
/****** Object:  UserDefinedFunction [dbo].[GetPiEmailIdsByProjectId]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetPiEmailIdsByProjectId]
(
       @ProjectId int
)
returns varchar(Max)
as 
begin
       declare @RecepientList varchar(Max) = ''
       declare @tempTable table(id int identity(1,1) ,  recepients varchar(Max))
	  
	  insert into @tempTable
 	   SELECT   s_Email + ';'
       From 
        [tblPI_Master] WHERE [i_ID] in 
               (  
                 SELECT  [tblProject_Dept_PI].[i_PI_ID] 
                 FROM  [tblProject_Dept_PI]
                 WHERE   [tblProject_Dept_PI].[i_Project_ID] = @ProjectId
               )

      
      declare @rowCnt int = 0
	  declare @currRow int = 0
	  select @rowCnt = count(*) from @tempTable

	  if @rowCnt > 0
	  begin
		while @currRow < @rowCnt
		begin
			set @RecepientList = @RecepientList + (select recepients from @tempTable where id = (@currRow + 1))
			set @currRow = @currRow + 1
		end
	  end
      
	  

       if @RecepientList <> '' 
       set @RecepientList = LEFT(@recepientList, LEN(@recepientList) - 1)
       return @RecepientList
end


GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split]    
 (    
  @List nvarchar(2000),    
  @SplitOn nvarchar(5)    
 )      
 RETURNS @RtnValue table     
 (    

  Id int identity(1,1),    
  Value nvarchar(100)    
 )     
 AS      
 BEGIN     
  While (Charindex(@SplitOn,@List)>0)    
  Begin    

   Insert Into @RtnValue (value)    
   Select     
    Value = ltrim(rtrim(Substring(@List,1,Charindex(@SplitOn,@List)-1)))    

   Set @List = Substring(@List,Charindex(@SplitOn,@List)+len(@SplitOn),len(@List))    
  End    

  Insert Into @RtnValue (Value)    
  Select Value = ltrim(rtrim(@List))    

  Return    
 END  

GO
/****** Object:  UserDefinedFunction [dbo].[SubStr]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[SubStr](@inputstr  varchar(max))
returns  varchar(max)
as
begin
	declare @str as varchar(max)
	set @str=RIGHT(SUBSTRING(@inputstr,0,len(@inputstr)),len(SUBSTRING(@inputstr,0,len(@inputstr)))-1)
	return  @str
end



GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetNumeric]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetNumeric]
(@strAlphaNumeric VARCHAR(256))
RETURNS VARCHAR(256)
AS
 BEGIN
 DECLARE @intAlpha INT
 SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric)
BEGIN
 WHILE @intAlpha > 0
BEGIN
 SET @strAlphaNumeric = STUFF(@strAlphaNumeric, @intAlpha, 1, '' )
SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric )
END
 END
 RETURN ISNULL(@strAlphaNumeric,0)
END


GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetSubTableValues]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_GetSubTableValues]
(
--@SubTableName Varchar(MAX),
@FieldName Varchar(MAX),
@OldNewValue Varchar(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	declare @returnValue varchar(MAX)
	--<Project Monitoring>
	IF @FieldName = 'i_Project_Category_ID' 
	BEGIN
		select @returnValue = s_Name from tblProject_Category_Master where i_id = @OldNewValue
	END	
	IF @FieldName = 'i_Project_Type_ID' 
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0 OR ISNULL(@OldNewValue,0) = -1
			BEGIN 
				Select @returnValue = ' '
			END
		ELSE
			BEGIN
				select @returnValue = s_Name from tblProject_Type_Master where i_id = @OldNewValue
			END
	END	
	IF @FieldName = 'i_Project_Subtype_ID' 
	BEGIN
		select @returnValue = s_Name from tblProject_Subtype_Master where i_id = @OldNewValue
	END
	IF @FieldName = 'i_Parent_ProjectID' 
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
			BEGIN 
				Select @returnValue = ' '
			END
		ELSE
			BEGIN
				SELECT @returnValue = isnull(s_Display_Project_ID,'') + ' ' + isnull(s_Project_Title,'')  FROM tblProject_Master where i_id = @OldNewValue
			END
	END	
	IF @FieldName = 'b_IsFeasible' 
	BEGIN
		select @returnValue = s_Name from Project_Feasibilitystatus_Master where i_id = @OldNewValue
	END	
	IF @FieldName = 'b_Ischild' 
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
 			BEGIN	
				Select @returnValue = 'Parent'
			END
		ELSE
			BEGIN
				Select @returnValue = 'Child'
			END
	END	
	IF @FieldName = 'i_CRO_ID' 
	BEGIN
		select @returnValue = s_Name from tblCRO_Master where i_id = @OldNewValue
	END
	IF @FieldName = 'i_CRA_ID' 
	BEGIN
		select @returnValue = s_Name from tblCRA_Master where i_id = @OldNewValue
	END
	IF @FieldName = 'i_Dept_ID' 
	BEGIN
		select @returnValue = s_Name from tblDept_Master where i_id = @OldNewValue
	END
	if @fieldName ='i_Feasibility_Status_ID'
	BEGIN
		select @returnValue = s_name from tblfeasibility_status_master where i_id = @OldNewValue
	END
	if @fieldName = 'i_IRB_Type_ID'
	BEGIN
		select @returnValue = s_name from tblIRB_Type_Master where i_id = @OldNewValue
	END
	if @fieldName = 'i_IRB_Status_ID'
	BEGIN
		select @returnValue = s_name from tblIRB_Status_Master where i_id = @OldNewValue
	END
	if @fieldName = 'i_PI_ID'
	BEGIN
		select @returnValue = isnull(s_Firstname,'') + ' ' + isnull(s_Lastname,'') from tblPI_Master where i_id = @OldNewValue
	END
	if @fieldName =  'b_Feasibility_Outcome'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
 		BEGIN	
			Select @returnValue = 'Not Selected'
		END
		ELSE
		BEGIN
			Select @returnValue = 'Selected'
		END
	END
	--<Ethics>
	
	IF @fieldName = 'b_IsChildBearing'
	BEGIN
		IF @OldNewValue is null
			BEGIN 
				SELECT @returnValue = ' '
			END
		ELSE IF @OldNewValue = 1
			BEGIN
				SELECT @returnValue = 'Yes'
			END
		ELSE IF @OldNewValue = 0
			BEGIN
				SELECT @returnValue = 'No'
			END
	END

	--<\ Ethics>
	--<Selected>
	IF @fieldName = 'i_Notification_Mode'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0 OR ISNULL(@OldNewValue,0) = -1
			BEGIN 
				SELECT @returnValue = ' '
			END
		ELSE
			BEGIN
				SELECT @returnValue = isnull(s_name,'') from tblNotificationMode_Master  where i_id = @OldNewValue
			END
	END
	IF @fieldName = 'i_Study_Status_ID'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0 OR ISNULL(@OldNewValue,0) = -1
			BEGIN 
				SELECT @returnValue = ' '
			END
		ELSE
			BEGIN
				SELECT @returnValue = isnull(s_name,'') from tblStudy_Status_Master  where i_id = @OldNewValue
			END
	END
	IF	@fieldName = 'b_CTM_Status'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN 
			SELECT @returnValue = 'Not Applicable'
		END
		ELSE
		BEGIN
			SELECT @returnValue = 'Applicable'
		END
	END
	IF	@fieldName = 'i_Drug_Location_ID' OR @fieldName = 'i_CupBoardno_Blinded' 
		OR @fieldName = 'i_CupBoardno_UnBlinded'
	BEGIN
		IF ISNULL(@OldNewValue,0) = -1 OR ISNULL(@OldNewValue,0) = 0
		BEGIN
			select	@returnValue = ''
		END
		IF @FieldName = 'i_Drug_Location_ID' 
		BEGIN
			select @returnValue = s_Name from tblDrugLocation_Master where i_id = @OldNewValue
		END
	END
	--</Selected>
	--<Generic>
	 --'s_In_File'
	 IF @FieldName = 's_In_File' 
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
 			BEGIN	
				Select @returnValue = 'No'
			END
		ELSE
			BEGIN
				Select @returnValue = 'Yes'
			END
	END	
	
	--<Tamp> 
	--IF (@fieldName like  '%_File' OR @fieldName = 's_CTC_Document' OR  @fieldName = 's_CTC_EmailDocument' 
	--OR  @fieldName = 's_NewCTCEmailApprDoc' OR @fieldName = 's_ExtCTCEmailApprDoc' OR @fieldName = 's_CTC_Document' OR @fieldName = 's_CTC_EmailDocument' ) 
	--AND (CHARINDEX('/',REVERSE(@OldNewValue))-1 > 0 OR CHARINDEX('~',REVERSE(@OldNewValue))-1 > 0 )
	--BEGIN
	--declare @FileWOlocation varchar(MAX)
	--	SELECT @FileWOlocation = ISNULL(RIGHT(@OldNewValue,CHARINDEX('/',REVERSE(@OldNewValue))-1),'') --Removed '/' character
	--	IF CHARINDEX('~',REVERSE(@OldNewValue))-1 > 0 
	--		BEGIN
	--			SELECT @returnValue = isnull(LEFT(@FileWOlocation,CHARINDEX('~',(@FileWOlocation))-1),'')   --Remove '~' and alfabets(~WSE) to distinguish file name
	--			+ ISNULL(RIGHT(@FileWOlocation,CHARINDEX('.',REVERSE(@FileWOlocation))),'')
	--		END
	--	ELSE
	--		BEGIN
	--			SELECT @returnValue = @FileWOlocation
	--		END
		
	--END
	--</ Tamp>
	IF (@fieldName like 'dt_%' OR @fieldName = 's_Email_Send_Date' )  and @OldNewValue <> ''
	BEGIN
		if @fieldName  = 'dt_Modify_Date'
			BEGIN
				SELECT @returnValue = REPLACE(convert(varchar(13),Convert(datetime,@OldNewValue),106),' ','-')  +' '
				+ left(convert(varchar(12),FORMAT(Convert(Datetime,@OldNewValue),'hh:mm:ss tt'),108),5)  +' '
				+ right(convert(varchar(12),FORMAT(Convert(Datetime,@OldNewValue),'hh:mm:ss tt'),108),2)
			END
		ELSE
			BEGIN
				SELECT @returnValue = REPLACE(convert(varchar(13),Convert(datetime,@OldNewValue),106),' ','-')
			END
	--convert(varchar(12),FORMAT(Convert(Datetime,@OldNewValue),'hh:mm:ss tt'),108)
	END 
	--</Generic>
	
	--</Project Monitoring>
	--<Contract Module>
	IF @FieldName = 'i_Contract_Status_ID' 
	BEGIN
		select @returnValue = s_Name from tblContract_Status_Master where i_id = @OldNewValue
	END
	IF @FieldName = 'i_Govt_Lawcountry'
	BEGIN
		select @returnValue = s_Name from tblCountry_Master where i_id = @OldNewValue
 	END 
	IF @FieldName = 'i_Currency_ID'
	BEGIN
		select @returnValue = s_Name from tblCurrency_Master where Id = @OldNewValue
	END 
	IF @FieldName = 'i_Contract_Category_ID'
	BEGIN
		select @returnValue = s_Name from tblContract_Category_Master where i_Id = @OldNewValue
	END 
 	IF @FieldName =	'i_Contract_Collaborator_ID'
 	BEGIN
 	 	select @returnValue = s_name from tblContract_Collobrator_Master where i_id = @OldNewValue
	END 
	IF @FieldName =	'i_Contract_Clause_ID'
 	BEGIN
 	 	select @returnValue = s_name from tblContract_Clauses_Master where i_id = @OldNewValue
	END
	--</ Contract Module>
	--<Regulatory Module>
	IF @FieldName = 'i_Sponsor_ID'
	BEGIN
		select @returnValue = s_Name from tblLeadSponsor_Master where i_Id = @OldNewValue
	END 
	IF @FieldName = 'i_CTC_status_ID'
	BEGIN
		select @returnValue = s_Name from tblCTC_Status_Master where i_Id = @OldNewValue
	END 	
	IF @FieldName = 's_IPManagement'
	BEGIN
		 IF ISNULL(@OldNewValue,0) = 0
 			BEGIN	
				Select @returnValue = ''
			END
		ELSE
			BEGIN
				SELECT @returnValue = s_Name FROM tblIPStorageMaster WHERE i_Id = @OldNewValue
			END
	END
	IF @FieldName = 'i_Interval_ID'
	BEGIN
		select @returnValue = s_Name from tblRegulatory_Submission_Interval_master where i_Id = @OldNewValue
	END 
	
	--select * from tblIPStorageMaster where i_Id = 1 
	--i_Pending_Screen_Outcome
	--i_Screen_Failure
	--i_Screened
	--i_Randomized
	--i_Withdrawn
	--i_Ongoing_Patient
	--i_Completed_No
	--i_SAE_No
	--</Regulatory Module>
--<Grant Master>
	IF @FieldName = 'i_GrantType_ID'
	BEGIN
		select @returnValue = s_Name from tblGrant_Type_Master where i_Id = @OldNewValue
	END 
	
	IF @FieldName = 'i_Grant_SubType_ID'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN
			select	@returnValue = ''
		END
		ELSE
		BEGIN
			select @returnValue = s_Name from tblGrant_SubType1_Master where i_Id = @OldNewValue
		END
	END 
	
	IF @FieldName = 'i_Grant_Sub_SubType_ID'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN
			select	@returnValue = ''
		END
		ELSE
		BEGIN
			select @returnValue = s_Name from tblGrant_SubType2_Master where i_Id = @OldNewValue
		END 
	END
	
	IF @FieldName = 'i_Grant_Sub_Sub_SubType_ID'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN
			select	@returnValue = ''
		END
		ELSE
		BEGIN
			select @returnValue = s_Name from tblGrant_SubType3_Master where i_Id = @OldNewValue
		END
	END 
	
	IF @FieldName = 'i_SubmissionStatus'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN
			select @returnValue = ''
		END
		ELSE
		BEGIN
			select @returnValue = s_Name from tblGrantSubmissionStatus_Master where i_Id = @OldNewValue
		END
	END 
	IF @FieldName = 'i_Outcome'
	BEGIN
		select @returnValue = s_Name from tblGrantOutcome_Master where i_Id = @OldNewValue
	END
	IF @FieldName = 'i_AwardOrganization'
	BEGIN
		select @returnValue = s_Name from tblAward_Org_Master where i_Id = @OldNewValue
	END 
	IF @FieldName = 'i_AwardCountryID'
	BEGIN
		select @returnValue = s_Name from tblCountry_Master where i_Id = @OldNewValue
	END 
	IF @FieldName = 'i_ParentProjectID'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN
			select @returnValue = ''
		END
		ELSE
		BEGIN
			select @returnValue = isnull(s_Display_Project_ID,'') + ' ' + isnull(s_Project_Title,'') from tblProject_Master where i_Id = @OldNewValue
		END
	END 
	IF @FieldName = 's_Duration' OR @FieldName = 's_Grant_Duration' OR  @FieldName = 's_GrantExtended_period'
	BEGIN
		IF ISNULL(@OldNewValue,0) = 0
		BEGIN
			select @returnValue = ''
		END
		ELSE
		BEGIN
			select @returnValue = isnull(s_name,'') + isnull(' ('+s_AliasName+')','')  from tblGrant_DurationMaster where i_Id = @OldNewValue
		END
	END 


--'i_GrantType_ID' 
--'i_Grant_SubType_ID'
--'i_Grant_Sub_SubType_ID'
--'i_Grant_Sub_Sub_SubType_ID'
--'i_SubmissionStatus'
--'i_FTE',
--'i_Outcome',
--'i_AwardOrganization',
--'i_ParentProjectID',

--</ Grant Master>
--<Senior CSCS>

	IF @FieldName = 'i_Award_org_ID'
	BEGIN
		select @returnValue = s_Name from tblAward_Org_Master where i_Id = @OldNewValue
	END 
	IF @FieldName = 'i_GrantName'
	BEGIN
		select @returnValue = s_Name from tblSeniorSCSCGrantName_Master where i_Id = @OldNewValue
	END 
	
	IF @fieldName = 's_Yearly_Quaterly'
		BEGIN
		IF ISNULL(@OldNewValue,'') = 'Y'
		BEGIN 
			SELECT @returnValue = 'Yearly'
		END
		IF ISNULL(@OldNewValue,'') = 'Q'
		BEGIN
			SELECT @returnValue = 'Quarterly'
		END
	END
	IF @fieldName = 'i_Budget_Utilized' OR @fieldName = 'i_Budget_Allocation' OR @fieldName in ('Q1','Q2','Q3','Q4')
	BEGIN
		IF isnull(@OldNewValue,'') <> ''
		BEGIN
			IF Convert(Numeric(38,2),Convert(varchar(MAX),ISNULL(@OldNewValue,0))) = -1.00
			BEGIN 
				SELECT @returnValue = ' '
			END
		END
	END

	--i_Selected_PI_ID
--</ Senior CSCS>
--<Grant Details>
	IF @FieldName = 'i_GrantStatus_ID'
		BEGIN
			select @returnValue  = s_name from  tblGrantDetailsStatus_Master where i_Id = @OldNewValue
		END 
	IF @FieldName = 'i_TTSH_PI_ID' OR @FieldName = 'i_Selected_PI_ID'
	BEGIN
		select @returnValue = isnull(s_Firstname,'') + ' ' + isnull(s_Lastname,'') from tblPI_Master where i_id = @OldNewValue
	END 
	IF @FieldName = 'i_Other_PI_ID'
	BEGIN
		select @returnValue = isnull(s_Firstname,'') + ' ' + isnull(s_Lastname,'') from tblOther_PI_Master where i_id = @OldNewValue
	END
	--i_GrantMaster_ID
--<Grant Details>

	Return isnull(@returnValue,isnull(@OldNewValue,'NA'))
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetTableFieldNames]    Script Date: 05-11-2015 6.40.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[udf_GetTableFieldNames]
(
@TableName Varchar(MAX),
@TableFieldName Varchar(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
	declare @returnValue varchar(MAX)
	IF @TableName = 'tblRegulatory_Submission_Status' AND @TableFieldName = 'Amendment Approval Letter'
	BEGIN
		SELECT	@returnValue = 'Submission Report'
	END	
	IF @TableName = 'tblRegulatory_Submission_Status' AND @TableFieldName = 'Amendment Submission Date'
	BEGIN
		SELECT	@returnValue = 'Report Upload Date'
	END	
	IF @TableName = 'tblSelected_Project_Details' AND @TableFieldName = 'Project Type'
	BEGIN
		SELECT	@returnValue = 'Type Of Study'
	END
	Return isnull(@returnValue,@TableFieldName)
END


GO
