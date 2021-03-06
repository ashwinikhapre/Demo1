USE [TTSH_CRIO]
GO
/****** Object:  UserDefinedTableType [dbo].[Contract_Collaborator_Details]    Script Date: 05-11-2015 6.42.53 PM ******/
CREATE TYPE [dbo].[Contract_Collaborator_Details] AS TABLE(
	[i_Contract_Master_ID] [int] NULL,
	[i_Contract_Collaborator_ID] [int] NULL,
	[s_InitialContract_ID] [varchar](150) NULL,
	[dt_Contract_Request_Date] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ContractDetails_MultipleContractFile]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[ContractDetails_MultipleContractFile] AS TABLE(
	[i_ContractDetailsID] [int] NULL,
	[s_ContractFile] [nvarchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[DocumentManagementSystem]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[DocumentManagementSystem] AS TABLE(
	[DocTitle] [varchar](1000) NULL,
	[DocDescription] [varchar](2000) NULL,
	[DocType] [int] NULL,
	[i_Project_ID] [int] NULL,
	[s_DMS_FileName] [nvarchar](1000) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Ethics_Dept_PI]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Ethics_Dept_PI] AS TABLE(
	[i_Ethics_ID] [int] NULL,
	[i_Dept_ID] [int] NULL,
	[i_PI_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Feasibility_CRO_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Feasibility_CRO_Details] AS TABLE(
	[i_Feasibility_ID] [int] NULL,
	[i_CRO_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Feasibility_Dept_PI]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Feasibility_Dept_PI] AS TABLE(
	[i_Feasibility_Id] [int] NULL,
	[i_Dept_Id] [int] NULL,
	[i_PI_Id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Feasibility_Sponsor_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Feasibility_Sponsor_Details] AS TABLE(
	[Feasibility_ID] [int] NULL,
	[Sponsor_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Grant_Budget_Allocation_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Grant_Budget_Allocation_Details] AS TABLE(
	[i_Grant_Detail_ID] [int] NULL,
	[i_Project_ID] [int] NULL,
	[s_Years] [varchar](50) NULL,
	[s_Factors] [varchar](100) NULL,
	[i_TTSH_PI_ID] [int] NULL,
	[i_Other_PI_ID] [int] NULL,
	[i_Budget_Allocation] [numeric](38, 2) NULL,
	[s_Yearly_Quaterly] [char](10) NULL,
	[i_Budget_Utilized] [numeric](38, 2) NULL,
	[Q1] [numeric](38, 2) NULL,
	[Q2] [numeric](38, 2) NULL,
	[Q3] [numeric](38, 2) NULL,
	[Q4] [numeric](38, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Grant_Extension_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Grant_Extension_Details] AS TABLE(
	[i_Grant_Detail_ID] [int] NULL,
	[i_Project_ID] [int] NULL,
	[b_Grant_Extended] [bit] NULL,
	[dt_New_Grant_Expiry_Date] [datetime] NULL,
	[i_GrantExtended_period] [int] NULL,
	[s_Budget_Details_String] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Grant_Senior_CSCS_BudgetData]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Grant_Senior_CSCS_BudgetData] AS TABLE(
	[i_Senior_CSCS_ID] [int] NULL,
	[s_Years] [varchar](60) NULL,
	[s_Factors] [varchar](60) NULL,
	[i_Budget_Allocation] [numeric](38, 2) NULL,
	[s_Yearly_Quaterly] [char](10) NULL,
	[i_Budget_Utilized] [numeric](38, 2) NULL,
	[Q1] [numeric](38, 2) NULL,
	[Q2] [numeric](38, 2) NULL,
	[Q3] [numeric](38, 2) NULL,
	[Q4] [numeric](38, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Mapi]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Mapi] AS TABLE(
	[ProjectModule] [varchar](50) NULL,
	[Tablename] [varchar](50) NULL,
	[Columnname] [varchar](50) NULL,
	[Displayname] [varchar](50) NULL,
	[Subtablename] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Other_Dept_PI]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Other_Dept_PI] AS TABLE(
	[i_Project_ID] [int] NULL,
	[i_PI_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Project_Coordinator_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Project_Coordinator_Details] AS TABLE(
	[i_Project_ID] [int] NULL,
	[i_Coordinator_ID] [varchar](max) NULL,
	[s_Coordinator_name] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Project_Dept_PI]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Project_Dept_PI] AS TABLE(
	[i_Project_ID] [int] NULL,
	[i_PI_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Regulatory_Ammendments_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Regulatory_Ammendments_Details] AS TABLE(
	[i_Regulatory_ID] [int] NULL,
	[s_Uploaded_File] [nvarchar](200) NULL,
	[dt_Submission_Date] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Regulatory_ICF_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Regulatory_ICF_Details] AS TABLE(
	[i_Regulatory_ID] [int] NULL,
	[s_Version_No] [varchar](50) NULL,
	[dt_ICF_Date] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Regulatory_StudyTeam]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Regulatory_StudyTeam] AS TABLE(
	[i_Regulatory_ID] [int] NULL,
	[s_First_Name] [varchar](100) NULL,
	[s_Last_Name] [varchar](100) NULL,
	[s_Email_ID] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Regulatory_Submission_Status]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Regulatory_Submission_Status] AS TABLE(
	[i_Regulatory_ID] [int] NULL,
	[i_Interval_ID] [int] NULL,
	[dt_Submission_Date] [datetime] NULL,
	[s_File_Title] [varchar](850) NULL,
	[s_Uploaded_File] [nvarchar](600) NULL,
	[dt_FileUploaded_Date] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[RegulatoryIPManagement]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[RegulatoryIPManagement] AS TABLE(
	[i_Regulatory_ID] [int] NULL,
	[s_Investigational_Product] [varchar](100) NULL,
	[s_IPManagement] [int] NULL,
	[s_StorageLocation] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Selected_Clause_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Selected_Clause_Details] AS TABLE(
	[i_Contract_ID] [int] NULL,
	[i_Contract_Clause_ID] [int] NULL,
	[s_Status] [varchar](100) NULL,
	[s_Comments] [varchar](max) NULL,
	[s_Proposed_Changes] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Selected_CRA_Details]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Selected_CRA_Details] AS TABLE(
	[i_Project_ID] [int] NULL,
	[i_CRO_ID] [int] NULL,
	[i_CRA_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Selected_Project_StudyBudgetFile]    Script Date: 05-11-2015 6.42.54 PM ******/
CREATE TYPE [dbo].[Selected_Project_StudyBudgetFile] AS TABLE(
	[i_Selected_Project_ID] [int] NULL,
	[s_Budget_Document_File] [nvarchar](250) NULL,
	[s_Budget_Comments] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[SelectedCollborators_Details]    Script Date: 05-11-2015 6.42.55 PM ******/
CREATE TYPE [dbo].[SelectedCollborators_Details] AS TABLE(
	[i_Contract_Details_Id] [int] NULL,
	[i_Collobrator_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[SelectedColumn]    Script Date: 05-11-2015 6.42.55 PM ******/
CREATE TYPE [dbo].[SelectedColumn] AS TABLE(
	[ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[SelectedProject_BU_Details]    Script Date: 05-11-2015 6.42.55 PM ******/
CREATE TYPE [dbo].[SelectedProject_BU_Details] AS TABLE(
	[i_Selected_Project_ID] [int] NULL,
	[s_Blinded_UnBlinded] [char](10) NULL,
	[i_Cordinator_Id] [varchar](250) NULL,
	[s_Cordinator_name] [varchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Senior_Project_Dept_PI]    Script Date: 05-11-2015 6.42.55 PM ******/
CREATE TYPE [dbo].[Senior_Project_Dept_PI] AS TABLE(
	[i_SeniorCSCS_ID] [int] NULL,
	[i_PI_ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[SeniorCSCS_Dept_PI_Details]    Script Date: 05-11-2015 6.42.55 PM ******/
CREATE TYPE [dbo].[SeniorCSCS_Dept_PI_Details] AS TABLE(
	[i_SeniorCSCS_ID] [int] NULL,
	[i_PI_ID] [int] NULL,
	[i_Dept_ID] [int] NULL
)
GO
