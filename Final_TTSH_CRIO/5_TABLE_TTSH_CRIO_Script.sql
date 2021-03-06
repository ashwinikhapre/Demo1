USE [TTSH_CRIO]
GO
/****** Object:  Table [dbo].[AD_Configuration]    Script Date: 05-11-2015 6.32.39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AD_Configuration](
	[i_Id] [int] IDENTITY(1,1) NOT NULL,
	[LINKEDSERVERNAME] [varchar](max) NOT NULL,
	[LDAPURL] [varchar](max) NOT NULL,
	[OUDC] [varchar](max) NOT NULL,
	[isSelected] [bit] NOT NULL,
 CONSTRAINT [PK_AD_Configuration] PRIMARY KEY CLUSTERED 
(
	[i_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Audit]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Audit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Audit_Action] [varchar](100) NULL,
	[Columns] [varchar](max) NULL,
	[OldValue] [varchar](max) NULL,
	[NewValue] [varchar](max) NULL,
	[UserId] [varchar](100) NULL,
	[OnDatetime] [datetime] NULL,
	[TableName] [varchar](max) NULL,
	[PrimaryKeyValue] [varchar](100) NULL,
 CONSTRAINT [PK_Audit_tmpEmploye] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mapping]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mapping](
	[ProjectModule] [varchar](50) NULL,
	[Tablename] [varchar](50) NULL,
	[Columnname] [varchar](50) NULL,
	[Displayname] [varchar](50) NULL,
	[Subtablename] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project_Feasibilitystatus_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project_Feasibilitystatus_Master](
	[i_Id] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
 CONSTRAINT [PK_Project_Feasibilitystatus_Master] PRIMARY KEY CLUSTERED 
(
	[i_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project_Module]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project_Module](
	[ID] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProjectModuletable]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectModuletable](
	[ID] [int] NULL,
	[ProjectModuleID] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ColumnName] [varchar](50) NOT NULL,
	[ColumnDisplayName] [varchar](50) NOT NULL,
	[ColumnSequence] [int] NOT NULL,
	[ReportID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reporttable]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reporttable](
	[ID] [int] NULL,
	[Cols] [varchar](50) NULL,
	[Type] [nchar](10) NULL,
	[master] [varchar](50) NULL,
	[tbl] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_DocumentManagementSystem]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_DocumentManagementSystem](
	[i_DMSId] [int] IDENTITY(1,1) NOT NULL,
	[DocTitle] [varchar](100) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocType] [int] NULL,
	[i_Project_ID] [int] NULL,
	[s_DMS_FileName] [nvarchar](500) NULL,
	[s_CreatedBy_Name] [nvarchar](500) NULL,
	[dt_Created_Date] [datetime] NULL,
	[s_ModifyBy_Name] [nvarchar](500) NULL,
	[dt_Modify_Date] [datetime] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[i_DMSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAudit_Display_Fields]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAudit_Display_Fields](
	[i_id] [int] IDENTITY(1,1) NOT NULL,
	[s_FieldName] [varchar](250) NULL,
	[s_DisplayFieldName] [varchar](250) NULL,
	[s_Description] [varchar](250) NULL,
	[s_TableName] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblAudit_Display_Fields] PRIMARY KEY CLUSTERED 
(
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAward_Org_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAward_Org_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[b_SixmonthlyUpdate] [bit] NULL,
 CONSTRAINT [PK_tblAward_Org_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Category_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Category_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [nvarchar](250) NULL,
	[s_ModifyBy_ID] [nvarchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[s_CreatedBy_Name] [nvarchar](50) NULL,
	[s_ModifyBy_Name] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_tblContract_Category_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Clauses_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Clauses_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblContract_Clauses_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Collaborator_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Collaborator_Details](
	[i_Contract_Master_ID] [int] NULL,
	[i_Contract_Collaborator_ID] [int] NULL,
	[s_InitialContract_ID] [varchar](150) NULL,
	[dt_Contract_Request_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Collobrator_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Collobrator_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Email1] [varchar](100) NULL,
	[s_Email2] [varchar](100) NULL,
	[s_PhoNo] [varchar](50) NULL,
	[s_Institution] [varchar](50) NULL,
	[i_Country_ID] [int] NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblContract_Collobrator_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Details](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NULL,
	[s_Contract_Name] [varchar](250) NULL,
	[s_Contract_Display_Id] [varchar](250) NULL,
	[i_Contract_Category_ID] [int] NULL,
	[i_Contract_Status_ID] [int] NOT NULL,
	[dt_LastUpdated_Date] [datetime] NULL,
	[i_Govt_Lawcountry] [int] NULL,
	[s_Clauses_File] [nvarchar](250) NULL,
	[s_UploadedContract_File] [nvarchar](250) NULL,
	[dt_Effective_Date] [datetime] NULL,
	[dt_Finalization_Date] [datetime] NULL,
	[dt_LastSigned_Date] [datetime] NULL,
	[dt_Expiry_Date] [datetime] NULL,
	[b_Amendments] [bit] NULL,
	[dt_NewExpiry_Date] [datetime] NULL,
	[s_AmendmenstContract_File] [nvarchar](250) NULL,
	[i_Currency_ID] [int] NULL,
	[i_Hospital_Cost] [numeric](18, 2) NULL,
	[i_Investigator_fees] [numeric](18, 2) NULL,
	[i_Coordinator_fess] [numeric](18, 2) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[dt_Contract_Status_Date] [datetime] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[i_Inkind_Contribution] [numeric](18, 2) NULL,
 CONSTRAINT [PK_tblContract_Details] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NULL,
	[dt_Contract_ReqDate] [datetime] NULL,
	[dt_Contract_AssignDate] [datetime] NULL,
	[i_ReviewedBy_ID] [varchar](max) NULL,
	[S_ReviewedByName] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblContract_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContract_Status_Date]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContract_Status_Date](
	[i_Contract_ID] [int] NULL,
	[i_Project_ID] [int] NULL,
	[i_Contract_Status_ID] [int] NULL,
	[dt_Status_Date] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblContract_Status_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContract_Status_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Contract_Status_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContractDetails_MultipleContractFile]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContractDetails_MultipleContractFile](
	[i_ContractDetailsID] [int] NULL,
	[s_ContractFile] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCountry_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCountry_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[i_CountryCode] [int] NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblCountry_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCRA_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCRA_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_CRO_ID] [int] NULL,
	[s_Name] [varchar](100) NULL,
	[s_Email] [varchar](100) NULL,
	[s_phone_no] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_CRA_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCRO_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCRO_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_CRO_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTC_Status_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTC_Status_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblCTC_Status_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCupboard_Number_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCupboard_Number_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](50) NULL,
	[s_Description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCurrency_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCurrency_Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblCurrency_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDataOwner_Mapping]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDataOwner_Mapping](
	[i_id] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NOT NULL,
	[s_Ethics_DataOwner] [varchar](60) NULL,
	[s_Feasibility_DataOwner] [varchar](60) NULL,
	[s_Selected_DataOwner] [varchar](60) NULL,
	[s_Regulatory_DataOwner] [varchar](60) NULL,
	[s_Grant_DataOwner] [varchar](60) NULL,
	[s_Contract_DataOwner] [varchar](60) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_tblDataOwner_Mapping] PRIMARY KEY CLUSTERED 
(
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDept_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDept_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Dept_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbldocumentcategory]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbldocumentcategory](
	[DocumentCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentCategory] [varchar](100) NULL,
	[IsProjectRelated] [bit] NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Modify_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDrug_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDrug_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[dt_Expiry_date] [datetime] NULL,
	[Dose] [varchar](250) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblDrug_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDrugLocation_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDrugLocation_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_DrugLocation_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEthics_Dept_PI]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEthics_Dept_PI](
	[i_Ethics_ID] [int] NULL,
	[i_Dept_ID] [int] NULL,
	[i_PI_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEthics_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEthics_Details](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NOT NULL,
	[i_IRB_Type_ID] [int] NOT NULL,
	[i_IRB_Status_ID] [int] NOT NULL,
	[dt_IRB_Approve_Date] [datetime] NULL,
	[s_Comments] [varchar](max) NULL,
	[s_IRB_No] [varchar](250) NULL,
	[s_IRB_File] [nvarchar](250) NULL,
	[dt_IRB_Approve_Enddate] [datetime] NULL,
	[s_Remarks] [varchar](max) NULL,
	[i_Project_Status_ID] [int] NULL,
	[dt_Project_Status_date] [datetime] NULL,
	[i_Sub_Targeted_TTSH] [int] NULL,
	[i_Sub_targeted] [int] NULL,
	[i_Sub_Recruited] [int] NULL,
	[b_IsRenewal] [bit] NULL,
	[dt_NewStudy_End_date] [datetime] NULL,
	[i_Sub_Recruited_TTSH] [int] NULL,
	[b_IsClinical_Trial_Insurance] [bit] NULL,
	[s_Insurance_Period] [varchar](250) NULL,
	[s_Insurance_file] [nvarchar](250) NULL,
	[b_CRIO_culled] [bit] NULL,
	[dt_CRIO_culled_date] [datetime] NULL,
	[b_IsChildBearing] [bit] NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[dt_Ethics_Start_Date] [datetime] NULL,
	[s_CreatedBy_Name] [nvarchar](250) NULL,
	[s_ModifyBy_Name] [nvarchar](250) NULL,
	[i_EthicsReview_ID] [int] NULL,
	[b_Any_Lapses] [bit] NULL,
	[i_Name_Of_IRB_ID] [int] NULL,
 CONSTRAINT [PK_tblEthics_Details] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEthics_Review_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEthics_Review_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](250) NULL,
	[s_Description] [varchar](250) NULL,
 CONSTRAINT [PK_tblEthics_Review_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFactors_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFactors_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblFactors_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFeasibility_CRO_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeasibility_CRO_Details](
	[i_Feasibility_ID] [int] NULL,
	[i_CRO_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFeasibility_Dept_PI]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFeasibility_Dept_PI](
	[i_Feasibility_Id] [int] NULL,
	[i_Dept_Id] [int] NULL,
	[i_PI_Id] [int] NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFeasibility_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFeasibility_Details](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NULL,
	[s_Email_Send_Date] [datetime] NULL,
	[i_Feasibility_Status_ID] [int] NOT NULL,
	[s_Feasibility_Title] [varchar](650) NULL,
	[b_Confidential_Agreement] [bit] NULL,
	[s_Confidential_Agreement_File] [nvarchar](250) NULL,
	[dt_Survey_Date] [datetime] NULL,
	[s_Survey_Comments] [varchar](max) NULL,
	[s_Questionnaire_File] [nvarchar](250) NULL,
	[s_Protocol_No] [varchar](100) NULL,
	[dt_Protocol_Date] [datetime] NULL,
	[s_Prototcol_Doc_No] [varchar](100) NULL,
	[s_Prototcol_File] [nvarchar](200) NULL,
	[dt_Site_Visit_Date] [datetime] NULL,
	[s_Coinvestigator] [varchar](500) NULL,
	[b_Interest] [bit] NULL,
	[s_Interest_Comments] [varchar](500) NULL,
	[b_Feasibility_Outcome] [bit] NULL,
	[s_IM_Invitation] [varchar](100) NULL,
	[s_In_File] [bit] NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[dt_Feasibility_Start_Date] [datetime] NULL,
	[s_CreatedBy_Name] [nvarchar](250) NULL,
	[s_ModifyBy_Name] [nvarchar](250) NULL,
	[s_Protocol_Comments] [varchar](max) NULL,
	[s_Checklist_File] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblFeasibility_Details] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFeasibility_Sponsor_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFeasibility_Sponsor_Details](
	[i_Feasibility_ID] [int] NULL,
	[i_Sponsor_ID] [int] NULL,
	[s_description] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFeasibility_Status_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFeasibility_Status_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Feasibility_Status_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_Budget_Allocation_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_Budget_Allocation_Details](
	[i_Grant_Details_ID] [int] NULL,
	[i_Project_ID] [int] NULL,
	[s_Years] [varchar](50) NULL,
	[s_Factors] [varchar](60) NULL,
	[i_TTSH_PI_ID] [int] NULL,
	[i_Other_PI_ID] [int] NULL,
	[i_Budget_Allocation] [numeric](38, 2) NULL,
	[s_Yearly_Quaterly] [nchar](10) NULL,
	[i_Budget_Utilized] [numeric](38, 2) NULL,
	[Q1] [numeric](38, 2) NULL,
	[Q2] [numeric](38, 2) NULL,
	[Q3] [numeric](38, 2) NULL,
	[Q4] [numeric](38, 2) NULL,
	[i_OrderByvar] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_Details](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NOT NULL,
	[i_GrantMaster_ID] [int] NOT NULL,
	[s_Award_Letter_File] [nvarchar](200) NULL,
	[i_Grant_ID] [nvarchar](100) NOT NULL,
	[dt_Award_Letter_Date] [datetime] NULL,
	[s_Research_IO] [varchar](100) NULL,
	[i_Currency_ID] [int] NULL,
	[i_Donation_Amt] [numeric](38, 2) NULL,
	[s_Donation_Body] [varchar](200) NULL,
	[dt_Grant_Expiry_Date] [datetime] NULL,
	[b_Grant_Extended] [bit] NULL,
	[dt_New_Grant_Expiry_Date] [datetime] NULL,
	[i_GrantExtended_period] [int] NULL,
	[i_Indirects] [numeric](38, 2) NULL,
	[i_Indirects_Amt_Utilized] [numeric](38, 2) NULL,
	[b_Mentor] [bit] NULL,
	[s_Mentor_Name] [varchar](100) NULL,
	[s_Mentor_Institute] [varchar](100) NULL,
	[s_Mentor_Dept] [varchar](100) NULL,
	[s_Tech_PI_Name] [varchar](250) NULL,
	[s_Tech_PI_Institution] [varchar](100) NULL,
	[s_Tech_PI_Dept] [varchar](100) NULL,
	[s_Point_of_Submission] [varchar](100) NULL,
	[i_FTE] [decimal](18, 2) NULL,
	[s_CreatedBy_ID] [varchar](250) NOT NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NOT NULL,
	[dt_Modify_Date] [datetime] NULL,
	[i_GrantStatus_ID] [int] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[b_IsVariation_Needed] [bit] NULL,
	[dt_GrantStatus_Completed_Date] [datetime] NULL,
 CONSTRAINT [PK_tblGrant_Details] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_DurationMaster]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_DurationMaster](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_AliasName] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblGrant_DuraionMaster] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NOT NULL,
	[s_Application_ID] [varchar](50) NOT NULL,
	[i_GrantType_ID] [int] NOT NULL,
	[i_Grant_SubType_ID] [int] NULL,
	[i_Grant_Sub_SubType_ID] [int] NULL,
	[i_Grant_Sub_Sub_SubType_ID] [int] NULL,
	[i_SubmissionStatus] [int] NOT NULL,
	[s_Old_Application_ID] [varchar](50) NOT NULL,
	[i_Currency_ID] [int] NULL,
	[i_Amount_Requested] [numeric](18, 2) NULL,
	[dt_Closing_Date] [datetime] NULL,
	[s_Duration] [varchar](10) NULL,
	[s_Mentor] [varchar](100) NULL,
	[i_FTE] [decimal](18, 2) NOT NULL,
	[i_Outcome] [int] NULL,
	[dt_Outcome_Date] [datetime] NULL,
	[s_Reviewers_Comments] [varchar](max) NULL,
	[s_Created_By] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[s_Modified_By] [varchar](250) NULL,
	[dt_Modified_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[dt_ApplicationDate] [datetime] NULL,
	[i_AwardOrganization] [int] NULL,
	[dt_AwardDate] [datetime] NULL,
	[s_Grant_Name] [varchar](500) NULL,
	[i_AwardCountryID] [int] NULL,
	[i_ParentProjectID] [int] NULL,
 CONSTRAINT [PK_tblGrant_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_SubType1_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_SubType1_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_GrantType_ID] [int] NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[s_Intramural_Extramural] [varchar](20) NULL,
 CONSTRAINT [PK_tblGrant_SubType1_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_SubType2_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_SubType2_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_GrantSubType1_ID] [int] NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[s_Intramural_Extramural] [varchar](20) NULL,
 CONSTRAINT [PK_tblGrant_SubType2_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_SubType3_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_SubType3_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_GrantSubType2_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[s_Intramural_Extramural] [varchar](20) NULL,
 CONSTRAINT [PK_tblGrant_SubType3_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrant_Type_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrant_Type_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblGrant_Type_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrantDetailsStatus_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrantDetailsStatus_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_GrantDetailsStatus_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrantExtensionDetails]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrantExtensionDetails](
	[i_Grant_Detail_ID] [int] NULL,
	[i_Project_ID] [int] NULL,
	[b_Grant_Extended] [bit] NULL,
	[dt_New_Grant_Expiry_Date] [datetime] NULL,
	[i_GrantExtended_period] [int] NULL,
	[s_Budget_Details_String] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrantOutcome_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrantOutcome_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblGrantOutcome_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrantSubmissionStatus_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrantSubmissionStatus_Master](
	[i_Id] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblGrantSubmissionStatus_Master] PRIMARY KEY CLUSTERED 
(
	[i_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIPStorageMaster]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIPStorageMaster](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblIPStorageMaster] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIRB_Status_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIRB_Status_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_IRB_Status_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIRB_Type_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIRB_Type_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblIRB_Type_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLeadSponsor_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLeadSponsor_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblLeadSponsor_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMenuMaster]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenuMaster](
	[MenuId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[Parent] [int] NULL,
	[Child] [int] NULL,
	[Url] [nvarchar](100) NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [numeric](18, 0) NULL,
	[ModifyDate] [datetime] NULL,
	[DisplayOrder] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tblMenuMaster] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblModule_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblModule_Master](
	[i_id] [int] IDENTITY(1,1) NOT NULL,
	[s_ModuleName] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[s_CreatedBy_Name] [nvarchar](250) NULL,
	[s_ModifyBy_Name] [nvarchar](250) NULL,
	[i_Display_Order] [int] NULL,
 CONSTRAINT [PK_tblModule_Master] PRIMARY KEY CLUSTERED 
(
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblModuleTable_Mapping]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblModuleTable_Mapping](
	[i_id] [int] IDENTITY(1,1) NOT NULL,
	[i_Module_Id] [int] NOT NULL,
	[s_TableName] [varchar](200) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[s_CreatedBy_Name] [nvarchar](250) NULL,
	[s_ModifyBy_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblModuleTable_Mapping] PRIMARY KEY CLUSTERED 
(
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNameOfIRB_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNameOfIRB_Master](
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblNameOfIRB_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNotificationMode_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNotificationMode_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_NotificationMode_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOther_PI_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOther_PI_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NULL,
	[s_Firstname] [varchar](100) NULL,
	[s_Lastname] [varchar](100) NULL,
	[s_Email] [varchar](100) NULL,
	[s_Phone_no] [varchar](50) NULL,
	[s_MCR_No] [varchar](100) NULL,
	[s_DeptName] [varchar](250) NULL,
	[s_Organization_Name] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblOther_PI_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOtherProject_Dept_PI]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOtherProject_Dept_PI](
	[i_Project_ID] [int] NULL,
	[i_OtherPI_ID] [int] NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Modify_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPeriod_of_Insurance_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPeriod_of_Insurance_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](250) NULL,
	[s_Description] [varchar](250) NULL,
 CONSTRAINT [PK_tblPeriod_of_Insurance_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPI_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPI_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Dept_ID] [int] NULL,
	[s_Firstname] [varchar](100) NULL,
	[s_Lastname] [varchar](100) NULL,
	[s_Email] [varchar](100) NULL,
	[s_Phone_no] [varchar](50) NULL,
	[s_MCR_No] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblPI_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Category_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Category_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[Selected] [bit] NULL,
 CONSTRAINT [PK_tblProject_Category_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Coordinator_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Coordinator_Details](
	[i_Project_ID] [int] NULL,
	[i_Coordinator_ID] [varchar](max) NULL,
	[s_Coordinator_name] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Dept_PI]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Dept_PI](
	[i_Project_ID] [int] NULL,
	[i_PI_ID] [int] NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Modify_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Display_Project_ID] [varchar](100) NULL,
	[s_Project_Title] [varchar](600) NOT NULL,
	[s_Short_Title] [varchar](200) NULL,
	[i_Project_Category_ID] [int] NOT NULL,
	[i_Project_Type_ID] [int] NOT NULL,
	[i_Project_Subtype_ID] [int] NOT NULL,
	[b_Collaboration_Involved] [bit] NOT NULL,
	[b_StartBy_TTSH] [bit] NOT NULL,
	[b_Funding_req] [bit] NOT NULL,
	[b_Ischild] [bit] NOT NULL,
	[i_Parent_ProjectID] [int] NULL,
	[s_Project_Alias1] [varchar](650) NULL,
	[s_Project_Alias2] [varchar](650) NULL,
	[s_Project_Desc] [varchar](max) NULL,
	[b_IsFeasible] [int] NOT NULL,
	[b_Isselected_project] [bit] NOT NULL,
	[s_IRB_No] [varchar](100) NULL,
	[s_Research_IO] [varchar](100) NULL,
	[s_Research_IP] [varchar](200) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[dt_ProjectStartDate] [datetime] NULL,
	[s_CreatedBy_Name] [nvarchar](250) NULL,
	[s_ModifyBy_Name] [nvarchar](250) NULL,
	[dt_ProjectEndDate] [datetime] NULL,
	[i_ProjectStatusID] [int] NULL,
	[b_EthicsNeeded] [bit] NULL,
	[dt_IRB_Approve_Enddate] [datetime] NULL,
 CONSTRAINT [PK_tblProject_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Status_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Status_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NOT NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblProject_Status_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Subtype_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Subtype_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[Project_Type_ID] [int] NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Project_Subtype_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProject_Type_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject_Type_Master](
	[i_ID] [int] NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblProject_Type_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatory_Ammendments_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegulatory_Ammendments_Details](
	[i_Regulatory_ID] [int] NULL,
	[s_Uploaded_File] [nvarchar](200) NULL,
	[dt_Submission_Date] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblRegulatory_ICF_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatory_ICF_Details](
	[i_Regulatory_ID] [int] NOT NULL,
	[s_Version_No] [varchar](50) NULL,
	[dt_ICF_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatory_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatory_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_ID] [int] NOT NULL,
	[i_Sponsor_ID] [int] NOT NULL,
	[s_Other_Sponsor] [varchar](250) NULL,
	[b_Prism_AppStatus] [bit] NULL,
	[s_Prism_AppNo] [varchar](100) NULL,
	[dt_Prism_AppDate] [datetime] NULL,
	[i_CTC_status_ID] [int] NULL,
	[s_CTC_Document] [nvarchar](200) NULL,
	[s_CTC_EmailDocument] [nvarchar](200) NULL,
	[dt_CTC_ApprDate] [datetime] NULL,
	[s_CTC_No] [varchar](100) NULL,
	[dt_CTC_ExpiryDate] [datetime] NULL,
	[dt_NewExt_Appr_Date] [datetime] NULL,
	[dt_NewExpiry_Date] [datetime] NULL,
	[s_NewCTCEmailApprDoc] [nvarchar](250) NULL,
	[s_ExtCTCEmailApprDoc] [nvarchar](250) NULL,
	[s_Protocol_No] [varchar](100) NULL,
	[s_Protocol_Ver_No] [varchar](100) NULL,
	[dt_Protocol_Date] [datetime] NULL,
	[s_RecruitedBy_TTSH] [varchar](100) NULL,
	[s_Remarks] [varchar](max) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblRegulatory_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatory_StudyTeam]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatory_StudyTeam](
	[i_Regulatory_ID] [int] NULL,
	[s_First_Name] [varchar](100) NULL,
	[s_Last_Name] [varchar](100) NULL,
	[s_Email_ID] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatory_Submission_Interval_master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatory_Submission_Interval_master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_tblRegulatory_Submission_Interval_master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatory_Submission_Status]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatory_Submission_Status](
	[i_Regulatory_ID] [int] NULL,
	[i_Interval_ID] [int] NULL,
	[dt_Submission_Date] [datetime] NULL,
	[s_File_Title] [varchar](850) NULL,
	[s_Uploaded_File] [nvarchar](600) NULL,
	[dt_FileUploaded_Date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatoryIPManagement]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatoryIPManagement](
	[i_Regulatory_ID] [int] NULL,
	[s_Investigational_Product] [varchar](50) NULL,
	[s_IPManagement] [int] NULL,
	[s_StorageLocation] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegulatorySixMonthUpdate]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegulatorySixMonthUpdate](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Regulatory_ID] [int] NULL,
	[s_SixmonthName] [varchar](50) NULL,
	[i_Pending_Screen_Outcome] [int] NULL,
	[i_Screen_Failure] [int] NULL,
	[i_Screened] [int] NULL,
	[i_Randomized] [int] NULL,
	[i_Withdrawn] [int] NULL,
	[s_Withdrawn_Reason] [varchar](max) NULL,
	[i_Ongoing_Patient] [int] NULL,
	[i_Completed_No] [int] NULL,
	[i_SAE_No] [int] NULL,
	[s_SAE_Reason] [varchar](max) NULL,
	[b_Internal_Audit] [bit] NULL,
	[dt_LastUpdated_date] [datetime] NULL,
	[Sdate] [datetime] NULL,
	[EDate] [datetime] NULL,
	[NoOfMonths] [int] NULL,
 CONSTRAINT [PK_tblRegulatorySixMonthUpdate] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRoleAccess]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoleAccess](
	[RoleAccessId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[RoleId] [numeric](18, 0) NOT NULL,
	[MenuId] [numeric](18, 0) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [numeric](18, 0) NOT NULL,
	[ModifyDate] [datetime] NULL,
	[ModifiedBy] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_RoleAccess] PRIMARY KEY CLUSTERED 
(
	[RoleAccessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblRoleMaster]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoleMaster](
	[RoleId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[GroupId] [numeric](18, 0) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [numeric](18, 0) NOT NULL,
	[ModifyDate] [datetime] NULL,
	[ModifiedBy] [numeric](18, 0) NOT NULL,
	[GroupGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSelected_Clause_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelected_Clause_Details](
	[i_Contract_ID] [int] NOT NULL,
	[i_Contract_Clause_ID] [int] NULL,
	[s_Status] [varchar](100) NULL,
	[s_Comments] [varchar](max) NULL,
	[s_Proposed_Changes] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelected_CRA_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelected_CRA_Details](
	[i_Project_ID] [int] NULL,
	[i_CRO_ID] [int] NULL,
	[i_CRA_ID] [int] NULL,
	[s_description] [varchar](250) NULL,
	[i_Selected_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelected_Cupboard_Section]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelected_Cupboard_Section](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Selected_Cupboard_Section] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelected_Project_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelected_Project_Details](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Project_Id] [int] NOT NULL,
	[b_IsTeam_Needed] [bit] NULL,
	[s_Blinded_Coordinator] [varchar](250) NULL,
	[s_Unblinded_Coordinator] [varchar](250) NULL,
	[s_Blinded_Cordinator_name] [varchar](100) NULL,
	[s_Unblinded_Cordinator_name] [varchar](100) NULL,
	[b_SAE_Status] [bit] NULL,
	[i_Patient_Studyno] [varchar](100) NULL,
	[i_Notification_Mode] [int] NULL,
	[b_IsReadmission] [bit] NULL,
	[dt_Readmission_date] [datetime] NULL,
	[dt_Discharge_date] [datetime] NULL,
	[dt_Knowledge_date] [datetime] NULL,
	[i_CRO_ID] [int] NULL,
	[i_Study_Status_ID] [int] NULL,
	[i_Project_Type_ID] [int] NULL,
	[s_Clinic1] [varchar](100) NULL,
	[s_Clinic2] [varchar](100) NULL,
	[s_Research_Days] [varchar](250) NULL,
	[s_Followup_Duratrion] [varchar](500) NULL,
	[s_Backup_Blinded] [varchar](max) NULL,
	[dt_Recruit_Start_Date] [datetime] NULL,
	[dt_Recruit_End_Date] [datetime] NULL,
	[i_TTSH_Target] [int] NULL,
	[i_Screen_No] [int] NULL,
	[i_Screen_Failure] [int] NULL,
	[i_Randomized] [int] NULL,
	[i_Completed] [int] NULL,
	[i_Withdrawl] [int] NULL,
	[s_IRB_No] [varchar](100) NULL,
	[dt_Expiry_date] [datetime] NULL,
	[dt_CTC_Expiry_date] [datetime] NULL,
	[b_CTM_Status] [bit] NULL,
	[dt_CTM_Expiry_date] [datetime] NULL,
	[s_Drug_Name] [varchar](250) NULL,
	[dt_Drug_Expiry_date] [datetime] NULL,
	[s_Drug_Dose] [varchar](250) NULL,
	[i_Drug_Location_ID] [int] NULL,
	[dt_Extended_Month_Blinded] [datetime] NULL,
	[i_CupBoardno_Blinded] [int] NULL,
	[dt_Extended_Month_UnBlinded] [datetime] NULL,
	[i_CupBoardno_UnBlinded] [int] NULL,
	[b_Awaiting_Archiving] [bit] NULL,
	[s_Reason] [varchar](max) NULL,
	[dt_Archiving_Enddate] [datetime] NULL,
	[s_Offsite_Company] [varchar](100) NULL,
	[b_IsApproveProject] [bit] NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_MonthName] [varchar](50) NULL,
	[dt_Selected_Start_Date] [datetime] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[dt_EntryForMonthBlinded] [datetime] NULL,
	[dt_EntryForMonthUnBlinded] [datetime] NULL,
	[dt_LastUpdated_By_Blinded] [datetime] NULL,
	[dt_LastUpdated_By_UnBlinded] [datetime] NULL,
	[s_LastUpdated_By_Blinded] [varchar](250) NULL,
	[s_LastUpdated_By_UnBlinded] [varchar](250) NULL,
	[dt_Date_Sent_for_Archiving] [datetime] NULL,
	[s_Agreement_Number] [varchar](250) NULL,
	[i_Number_of_Boxes] [int] NULL,
	[s_Amount] [varchar](250) NULL,
	[s_AgreementFile] [varchar](250) NULL,
	[s_LastUpdated_By_SelectedTeamUser] [varchar](250) NULL,
	[dt_LastUpdated_By_SelectedTeamUser] [datetime] NULL,
	[s_Backup_UnBlinded] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelected_Project_StudyBudgetFile]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelected_Project_StudyBudgetFile](
	[i_Selected_Project_Details_ID] [int] NULL,
	[s_Budget_Document_File] [nvarchar](250) NULL,
	[s_Budget_Comments] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelected_Year_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelected_Year_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](250) NULL,
	[s_Description] [varchar](250) NULL,
 CONSTRAINT [PK_tblSelected_Year_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelectedCollborators_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSelectedCollborators_Details](
	[i_Contract_Details_Id] [int] NULL,
	[i_Collobrator_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSelectedProject_BU_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSelectedProject_BU_Details](
	[i_Selected_Project_ID] [int] NULL,
	[s_Blinded_UnBlinded] [char](10) NULL,
	[i_Cordinator_Id] [varchar](250) NULL,
	[s_Cordinator_name] [varchar](100) NULL,
	[i_Project_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSelectedProject_MonthlyID]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSelectedProject_MonthlyID](
	[i_Project_ID] [int] NULL,
	[i_SelectedProjectID] [int] NULL,
	[s_Description] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSenior_CSCS_Budget_Allocation_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSenior_CSCS_Budget_Allocation_Details](
	[i_Senior_CSCS_ID] [int] NULL,
	[s_Years] [varchar](60) NULL,
	[s_Factors] [varchar](60) NULL,
	[i_Budget_Allocation] [numeric](38, 2) NULL,
	[s_Yearly_Quaterly] [nchar](10) NULL,
	[i_Budget_Utilized] [numeric](38, 2) NULL,
	[Q1] [numeric](38, 2) NULL,
	[Q2] [numeric](38, 2) NULL,
	[Q3] [numeric](38, 2) NULL,
	[Q4] [numeric](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSenior_CSCS_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSenior_CSCS_Details](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[i_Award_org_ID] [int] NULL,
	[s_Grant_No] [varchar](100) NULL,
	[i_GrantName] [int] NULL,
	[s_Reaserch_IO] [varchar](100) NULL,
	[dt_AwardLetter_Date] [datetime] NULL,
	[s_AwardLetter_File] [nvarchar](200) NULL,
	[dt_StartDate] [datetime] NULL,
	[d_Protected_time] [decimal](18, 2) NULL,
	[s_Grant_Duration] [varchar](100) NULL,
	[dt_Grant_Expiry_Date] [datetime] NULL,
	[b_IsGrant_Extented] [bit] NULL,
	[dt_NewGrantExpiry_Date] [datetime] NULL,
	[dt_Approval_Date] [datetime] NULL,
	[s_GrantExtended_period] [varchar](50) NULL,
	[i_Grant_Amount] [numeric](18, 2) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
	[i_Selected_PI_ID] [int] NULL,
	[s_Budget_Details_String] [varchar](max) NULL,
 CONSTRAINT [PK_tblSenior_CSCS_Details] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSeniorCSCS_Dept_PI_Details]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSeniorCSCS_Dept_PI_Details](
	[i_SeniorCSCS_ID] [int] NULL,
	[i_PI_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSeniorSCSCGrantName_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSeniorSCSCGrantName_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_SeniorSCSCGrantName_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSponsor_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSponsor_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Sponsor_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudy_Status_Master]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudy_Status_Master](
	[i_ID] [int] IDENTITY(1,1) NOT NULL,
	[s_Name] [varchar](100) NULL,
	[s_Description] [varchar](250) NULL,
	[s_CreatedBy_ID] [varchar](250) NULL,
	[s_ModifyBy_ID] [varchar](250) NULL,
	[dt_Created_Date] [datetime] NULL,
	[dt_Modify_Date] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[s_ModifyBy_Name] [varchar](250) NULL,
	[s_CreatedBy_Name] [varchar](250) NULL,
 CONSTRAINT [PK_Study_Status_Master] PRIMARY KEY CLUSTERED 
(
	[i_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tempSelData]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tempSelData](
	[Selected] [bit] NULL,
	[B] [varchar](max) NULL,
	[U] [varchar](max) NULL,
	[User] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tempSelectedDetails]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tempSelectedDetails](
	[i_Project_Id] [int] NULL,
	[b_IsTeam_Needed] [bit] NULL,
	[s_Blinded_Coordinator] [varchar](max) NULL,
	[s_Unblinded_Coordinator] [varchar](max) NULL,
	[s_Blinded_Cordinator_name] [varchar](max) NULL,
	[s_Unblinded_Cordinator_name] [varchar](max) NULL,
	[b_SAE_Status] [bit] NULL,
	[i_Patient_Studyno] [int] NULL,
	[i_Notification_Mode] [int] NULL,
	[b_IsReadmission] [bit] NULL,
	[dt_Readmission_date] [datetime] NULL,
	[dt_Discharge_date] [datetime] NULL,
	[dt_Knowledge_date] [datetime] NULL,
	[i_Study_Status_ID] [int] NULL,
	[i_Project_Type_ID] [int] NULL,
	[s_Clinic1] [varchar](max) NULL,
	[s_Clinic2] [varchar](max) NULL,
	[s_Research_Days] [varchar](max) NULL,
	[s_Followup_Duratrion] [varchar](max) NULL,
	[dt_Recruit_Start_Date] [datetime] NULL,
	[dt_Recruit_End_Date] [datetime] NULL,
	[i_TTSH_Target] [int] NULL,
	[s_Backup_Blinded] [varchar](max) NULL,
	[i_Screen_No] [int] NULL,
	[i_Screen_Failure] [int] NULL,
	[i_Randomized] [int] NULL,
	[i_Completed] [int] NULL,
	[i_Withdrawl] [int] NULL,
	[s_IRB_No] [varchar](max) NULL,
	[dt_Expiry_date] [datetime] NULL,
	[dt_CTC_Expiry_date] [datetime] NULL,
	[b_CTM_Status] [bit] NULL,
	[dt_CTM_Expiry_date] [datetime] NULL,
	[dt_Extended_Month_Blinded] [datetime] NULL,
	[i_CupBoardno_Blinded] [int] NULL,
	[s_LastUpdated_By_Blinded] [varchar](max) NULL,
	[dt_LastUpdated_By_Blinded] [datetime] NULL,
	[b_Awaiting_Archiving] [bit] NULL,
	[s_Reason] [varchar](max) NULL,
	[dt_Archiving_Enddate] [datetime] NULL,
	[s_Offsite_Company] [varchar](max) NULL,
	[b_IsApproveProject] [bit] NULL,
	[s_Amount] [numeric](18, 2) NULL,
	[s_Agreement_Number] [varchar](max) NULL,
	[s_AgreementFile] [varchar](max) NULL,
	[dt_Date_Sent_for_Archiving] [datetime] NULL,
	[i_Number_of_Boxes] [int] NULL,
	[dt_EntryForMonthBlinded] [datetime] NULL,
	[dt_Extended_Month_UnBlinded] [datetime] NULL,
	[i_CupBoardno_UnBlinded] [int] NULL,
	[s_Drug_Name] [varchar](max) NULL,
	[dt_Drug_Expiry_date] [datetime] NULL,
	[s_Drug_Dose] [varchar](max) NULL,
	[i_Drug_Location_ID] [int] NULL,
	[dt_LastUpdated_By_UnBlinded] [varchar](max) NULL,
	[s_LastUpdated_By_UnBlinded] [varchar](max) NULL,
	[s_ModifyBy_ID] [varchar](max) NULL,
	[dt_Modify_Date] [datetime] NULL,
	[dt_Selected_Start_Date] [datetime] NULL,
	[s_ModifyBy_Name] [varchar](max) NULL,
	[s_MonthName] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestReport]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestReport](
	[ID] [int] NULL,
	[i_Project_ID] [int] NULL,
	[dt_IRB_Approve_Enddate] [datetime] NULL,
	[i_Sub_targeted] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestUser]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestUser](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestUserContact]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestUserContact](
	[ID] [int] NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestUserContactMapping]    Script Date: 05-11-2015 6.32.40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestUserContactMapping](
	[Contact_ID] [int] NULL,
	[User_ID] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AD_Configuration] ON 

INSERT [dbo].[AD_Configuration] ([i_Id], [LINKEDSERVERNAME], [LDAPURL], [OUDC], [isSelected]) VALUES (1, N'TTSH_LINKEDSERVER', N'LDAP://192.168.0.109/OU=TTSH,OU=Ruser,DC=rsinngp,DC=rgen,DC=com', N'OU=TTSH,OU=Ruser,DC=rsinngp,DC=rgen,DC=com', 1)
SET IDENTITY_INSERT [dbo].[AD_Configuration] OFF
SET IDENTITY_INSERT [dbo].[Project_Feasibilitystatus_Master] ON 

INSERT [dbo].[Project_Feasibilitystatus_Master] ([i_Id], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date]) VALUES (1, N'Needed', N'Needed', N'008/John', NULL, CAST(0x0000A4D6010EF4B3 AS DateTime), NULL)
INSERT [dbo].[Project_Feasibilitystatus_Master] ([i_Id], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date]) VALUES (2, N'Done', N'Done', N'008/John', NULL, CAST(0x0000A4D6010EF4B3 AS DateTime), NULL)
INSERT [dbo].[Project_Feasibilitystatus_Master] ([i_Id], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date]) VALUES (3, N'Not Applicable', N'Not Applicable', N'008/John', NULL, CAST(0x0000A4D6010EF4B3 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Project_Feasibilitystatus_Master] OFF
INSERT [dbo].[Project_Module] ([ID], [Name]) VALUES (1, N'Project Module')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (1, 1, N'tblProject_Master')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (2, 1, N'tblProject_Category_Master')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (3, 1, N'tblProject_Status_Master')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (4, 1, N'tblProject_Subtype_Master')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (5, 1, N'tblProject_Dept_PI')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (6, 1, N'tblFeasibility_Details')
INSERT [dbo].[ProjectModuletable] ([ID], [ProjectModuleID], [Name]) VALUES (7, 1, N'tblDept_Master')
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([ID], [ColumnName], [ColumnDisplayName], [ColumnSequence], [ReportID]) VALUES (1, N'b.i_Project_ID', N'Project ID', 2, 1)
INSERT [dbo].[Report] ([ID], [ColumnName], [ColumnDisplayName], [ColumnSequence], [ReportID]) VALUES (2, N'b.dt_IRB_Approve_Date', N'Approve End Date', 1, 1)
INSERT [dbo].[Report] ([ID], [ColumnName], [ColumnDisplayName], [ColumnSequence], [ReportID]) VALUES (5, N'b.i_Sub_targeted', N'Subject Targeted', 3, 1)
SET IDENTITY_INSERT [dbo].[Report] OFF
INSERT [dbo].[Reporttable] ([ID], [Cols], [Type], [master], [tbl]) VALUES (1, N'i_Project_Type_ID', N'D         ', N'tblProject_Type_Master', 1)
INSERT [dbo].[Reporttable] ([ID], [Cols], [Type], [master], [tbl]) VALUES (2, N'i_Project_Subtype_ID', N'D         ', N'tblProject_Subtype_Master', 1)
INSERT [dbo].[Reporttable] ([ID], [Cols], [Type], [master], [tbl]) VALUES (3, N'i_Project_Category_ID', N'D         ', N'tblProject_Category_Master', 1)
INSERT [dbo].[Reporttable] ([ID], [Cols], [Type], [master], [tbl]) VALUES (4, N'i_PI_ID', N'R         ', NULL, 5)
INSERT [dbo].[Reporttable] ([ID], [Cols], [Type], [master], [tbl]) VALUES (5, N'i_ID', N'R         ', NULL, 7)
SET IDENTITY_INSERT [dbo].[tblAudit_Display_Fields] ON 

INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N's_Display_Project_ID', N'Project Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N's_Project_Title', N'Project Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N's_Short_Title', N'Short Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'i_Project_Category_ID', N'Project Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'i_Project_Type_ID', N'Project Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'i_Project_Subtype_ID', N'Project Sub Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'b_Collaboration_Involved', N'Collaboration Involved?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'b_StartBy_TTSH', N'Start By TTSH?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'b_Funding_req', N'Funding Required', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'b_Ischild', N'Whether is Child/Parent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'i_Parent_ProjectID', N'Parent Project', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, N's_Project_Alias1', N'Alias 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, N's_Project_Alias2', N'Alias 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (14, N's_Project_Desc', N'Project Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (15, N'b_IsFeasible', N'Feasibility Check Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (16, N'b_Isselected_project', N'Selected Project?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (17, N's_IRB_No', N'DSRB/IRB No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (18, N's_Research_IO', N'Research IO (Internal Order)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (19, N's_Research_IP', N'Research IP (Insurance Provider)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (20, N'dt_ProjectStartDate', N'Project Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (21, N'dt_Modify_Date', N'Modified On Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (23, N'i_PI_ID', N'Principal Investigator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (25, N's_Contract_Name', N'Contract Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (26, N's_Contract_Display_Id', N'Contract Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (27, N'i_Contract_Category_ID', N'Contract Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (28, N'i_Contract_Status_ID', N'Contract Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (30, N'i_Govt_Lawcountry', N'Governing Law Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (31, N's_Clauses_File', N'File for Correspondance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (32, N's_UploadedContract_File', N'Uploaded Contract File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (33, N'dt_Effective_Date', N'Effective Date (Study Start Date)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (34, N'dt_Finalization_Date', N'Contract Finalization Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (35, N'dt_LastSigned_Date', N'Date of Last Signed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (36, N'dt_Expiry_Date', N'Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (37, N'b_Amendments', N'Amendments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (38, N'dt_NewExpiry_Date', N'New Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (39, N's_AmendmenstContract_File', N'Amendment Contract File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (41, N'i_Hospital_Cost', N'Hospital/Procedure Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (42, N'i_Investigator_fees', N'Investigator Fees', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (43, N'i_Coordinator_fess', N'Co-Ordinator Fees', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (46, N'dt_Created_Date', N'Created On Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (48, N'IsDeleted', N'Deleted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (49, N'dt_Contract_Status_Date', N'Contract Status Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (50, N's_ModifyBy_Name', N'Modified By', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (51, N's_CreatedBy_Name', N'Created By', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (52, N's_Name', N'Collaborator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (53, N's_Email1', N'Email Address1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (54, N's_Email2', N'Email Address2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (55, N's_PhoNo', N'Phone No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (56, N's_Institution', N'Institution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (57, N'i_Country_ID', N'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (58, N'dt_Contract_Request_Date', N'Contract Request Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (59, N'dt_Contract_AssignDate', N'Contract Assign Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (60, N'S_ReviewedByName', N'Reviewed By', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (61, N'i_Sponsor_ID', N'Lead Sponsor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (62, N's_Other_Sponsor', N'Other Lead Sponsors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (63, N'b_Prism_AppStatus', N'PRISM Application status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (64, N's_Prism_AppNo', N'PRISM Application Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (65, N'dt_Prism_AppDate', N'PRISM Application Submission Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (66, N'i_CTC_status_ID', N'CTC Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (67, N's_CTC_No', N'CTC Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (68, N's_CTC_Document', N'CTC Document', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (69, N's_CTC_EmailDocument', N'CTC Email Approval Document', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (70, N'dt_CTC_ApprDate', N'CTC Approval Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (71, N'dt_CTC_ExpiryDate', N'CTC Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (72, N'dt_NewExt_Appr_Date', N'New CTC Extension Approval Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (74, N's_NewCTCEmailApprDoc', N'New CTC Email Approval Document', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (75, N's_ExtCTCEmailApprDoc', N'Extended CTC Email Approval Document', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (76, N's_First_Name', N'First Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (77, N's_Last_Name', N'Last Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (78, N's_Email_ID', N'Email Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (79, N's_Protocol_No', N'Protocol Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (80, N's_Protocol_Ver_No', N'Protocol Version No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (81, N'dt_Protocol_Date', N'Protocol Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (82, N'i_Pending_Screen_Outcome', N'Pending Screen Outcome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (83, N'i_Screen_Failure', N'Screen Failure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (84, N'i_Screened', N'Screened', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (85, N'i_Randomized', N'Randomized/Enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (86, N'i_Withdrawn', N'Withdrawn/Early Termination', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (87, N's_Withdrawn_Reason', N'Reason for Withdrawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (88, N'i_Ongoing_Patient', N'Outgoing Patiend', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (89, N'i_Completed_No', N'Completed No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (90, N'i_SAE_No', N'SAE No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (91, N's_SAE_Reason', N'Reason for SAE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (92, N'b_Internal_Audit', N'Internal Audit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (93, N'i_Interval_ID', N'Selected Month Interval', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (94, N's_File_Title', N'Status Report Submission File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (98, N's_Investigational_Product', N'Investigational Product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (99, N's_IPManagement', N'Management of IP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (100, N's_StorageLocation', N'IP Storage Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (101, N's_RecruitedBy_TTSH', N'Subject Recruited by TTSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (103, N's_Feasibility_Title', N'Feasibility Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (104, N'i_Feasibility_Status_ID', N'Feasibility Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (106, N'dt_Feasibility_Start_Date', N'Feasibility Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (107, N's_Email_Send_Date', N'Date of Initial Email Sent to TTSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (109, N'i_Dept_ID', N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (110, N's_Firstname', N'First / Given Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (111, N's_Email', N'PI Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (112, N's_MCR_No', N'PI MCR No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (113, N's_Lastname', N'Last Name / Surname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (114, N's_Phone_no', N'Phone No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (115, N'i_CRO_ID', N'CRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (116, N'i_Sponsor_ID', N'Sponsor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (117, N'b_Confidential_Agreement', N'Confidential Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (118, N'dt_Survey_Date', N'Feasibility Survey Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (119, N's_Questionnaire_File', N'Feasibility Questionaries File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (120, N's_Confidential_Agreement_File', N'Confidential Agreement File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (121, N's_Survey_Comments', N'Feasibility Survey Comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (123, N's_Prototcol_Doc_No', N'Protocol Doc No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (124, N's_Prototcol_File', N'Protocol File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (126, N's_Protocol_Comments', N'Protocol Comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (127, N'b_Interest', N'Interest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (128, N'b_Feasibility_Outcome', N'Feasibility Outcome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (129, N's_Interest_Comments', N'Interest Comment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (130, N'dt_Site_Visit_Date', N'Site Visit Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (131, N's_Coinvestigator', N'Co Investigator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (132, N's_IM_Invitation', N'IM Invitation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (133, N's_Checklist_File', N'Uploaded Feasibility Checklist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (134, N's_In_File', N'In File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (135, N'i_IRB_Type_ID', N'Type of IRB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (136, N'i_IRB_Status_ID', N'DSRB/IRB Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (138, N'dt_IRB_Approve_Date', N'DSRB/IRB Approved Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (139, N's_Comments', N'Comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (140, N's_IRB_File', N'DSRB/IRB File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (141, N'dt_IRB_Approve_Enddate', N'DSRB/IRB# Approved End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (142, N'i_Sub_Targeted_TTSH', N'Subjects Targeted at TTSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (143, N'i_Sub_Recruited_TTSH', N'Subjects Recruited by TTSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (144, N'b_IsRenewal', N'Does it require the renewal?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (145, N'i_Sub_targeted', N'Global Subject Targeted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (146, N'i_Sub_Recruited', N'Global Subject Recruited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (147, N'dt_NewStudy_End_date', N'New Study End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (148, N'b_IsClinical_Trial_Insurance', N'Clinical Trial Insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (149, N's_Insurance_file', N'Clinical Trial Insurance File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (150, N'dt_Insurance_Period', N'Period of Insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (151, N'b_CRIO_culled', N'CRIO Record Culled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (152, N'dt_CRIO_culled_date', N'CRIO Record Culled Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (153, N'b_IsChildBearing', N'Female/Childbearing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (154, N's_Remarks', N'Notes/Remarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (155, N'i_Contract_Collaborator_ID', N'Collaborator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (156, N'i_Contract_Clause_ID', N'Clause', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (157, N's_Status', N'Clause Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (158, N's_Proposed_Changes', N'Proposed Changes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (159, N'dt_Status_Date', N'Contract Status Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (160, N's_ContractFile', N'Contract File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (161, N's_Version_No', N'PIS/ICF Version No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (162, N'dt_ICF_Date', N'PIS/ICF Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (163, N'b_IsTeam_Needed', N'Team Needed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (164, N'dt_Selected_Start_Date', N'Selected Project Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (165, N's_Blinded_Cordinator_name', N'Blinded Co-Ordinator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (166, N's_Unblinded_Cordinator_name', N'UnBlinded Co-Ordinator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (167, N'b_SAE_Status', N'SAE Status (Internal)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (168, N'i_Patient_Studyno', N'Patient Study No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (169, N'i_Notification_Mode', N'Mode of Notification', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (170, N'b_IsReadmission', N'Readmission Samediscipline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (171, N'dt_Readmission_date', N'Readmission Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (172, N'dt_Discharge_date', N'Discharged Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (173, N'dt_Knowledge_date', N'Date of Coordinators Knowledge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (174, N'i_Study_Status_ID', N'Study Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (175, N's_Clinic1', N'Clinic 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (176, N's_Clinic2', N'Clinic 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (177, N's_Research_Days', N'Clinic Days For Research', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (178, N's_Followup_Duratrion', N'Duration of follow Ups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (179, N'dt_Recruit_Start_Date', N'Recruitment Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (180, N'dt_Recruit_End_Date', N'Recruitment End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (181, N'i_TTSH_Target', N'Target for TTSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (182, N'i_Screen_No', N'Screened # (Signed Informed Consent Form)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (183, N'i_Completed', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (184, N'i_Withdrawl', N'Withdrawal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (185, N'b_CTM_Status', N'CTM Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (186, N'dt_CTM_Expiry_date', N'CTM Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (187, N's_Drug_Name', N'Drug Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (188, N'dt_Drug_Expiry_date', N'Drug Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (189, N's_Drug_Dose', N'Drug Dose', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (190, N'i_Drug_Location_ID', N'Drug Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (191, N'dt_Extended_Month_Blinded', N'Expected Study End Month(Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (192, N'i_CupBoardno_Blinded', N'Cup Board #(Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (193, N'dt_Extended_Month_UnBlinded', N'Expected Study End Month(Un Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (194, N'i_CupBoardno_UnBlinded', N'Cup Board #(Un Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (195, N'dt_EntryForMonthBlinded', N'Entry for Month(Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (196, N'dt_LastUpdated_By_Blinded', N'Updated Date(Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (197, N'dt_LastUpdated_By_UnBlinded', N'Entry for Month(Un Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (198, N's_LastUpdated_By_Blinded', N'Updated By(Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (199, N's_LastUpdated_By_UnBlinded', N'Updated By(Un Blinded)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (200, N'dt_Submission_Date', N'Amendment Submission Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (201, N's_Uploaded_File', N'Amendment Approval Letter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (207, N'dt_Date_Sent_for_Archiving', N'Date Sent for Archiving', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (208, N'i_Number_of_Boxes', N'Number of Boxes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (209, N's_Agreement_Number', N'Agreement Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (210, N's_AgreementFile', N'Agreement File', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (211, N's_Amount', N' Approved Study Budget Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (212, N's_Ethics_DataOwner', N'Ethics Data Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (213, N's_Selected_DataOwner', N'Selected Project Data Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (214, N's_Contract_DataOwner', N'Contract Data Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (215, N's_Regulatory_DataOwner', N'Regulatory Data Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (216, N's_Grant_DataOwner', N'Grant Data Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (217, N's_Application_ID', N'Grant Application Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (218, N'dt_ApplicationDate', N'Grant Application Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (219, N'i_GrantType_ID', N'Grant Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (220, N'i_Grant_SubType_ID', N'Grant Sub Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (221, N'i_Grant_Sub_SubType_ID', N'Grant Sub-Sub Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (222, N'i_Grant_Sub_Sub_SubType_ID', N'Grant Sub-Sub-Sub Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (223, N'i_AwardCountryID', N'Awarding Country ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (224, N'i_AwardOrganization', N'Grant Awarding Organization', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (225, N's_Grant_Name', N'Name Of Grant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (226, N'i_Amount_Requested', N'Amount Requested', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (227, N's_Duration', N'Duration(In Years)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (228, N'i_SubmissionStatus', N'Submission Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (229, N's_Old_Application_ID', N'Old Application Id(resubmission)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (230, N's_Mentor', N'Mentor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (231, N'i_FTE', N'FTE(Projected TimeLine)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (232, N'i_Outcome', N'Outcome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (233, N'dt_AwardDate', N'Date Of Award Letter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (234, N's_Reviewers_Comments', N'Reviewers Comment(Not Successful)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (235, N'dt_Closing_Date', N'Closing Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (238, N'i_ParentProjectID', N'Parent Project', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (239, N'i_Award_org_ID', N'Awarding Organization', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (240, N's_Grant_No', N'Grant Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (241, N'i_GrantName', N'Grant Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (242, N's_Reaserch_IO', N'Research IO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (243, N's_Grant_Duration', N'Duration of Grant(In Years)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (244, N'dt_Grant_Expiry_Date', N'Grant Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (245, N'b_IsGrant_Extented', N'Grant Extended', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (246, N'dt_NewGrantExpiry_Date', N'New Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (247, N'dt_Approval_Date', N'Date of Approval', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (248, N's_GrantExtended_period', N'Grant Extended Period(In Years)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (249, N'dt_AwardLetter_Date', N'Date of Award Letters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (250, N's_AwardLetter_File', N'File of Award Letters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (251, N'dt_StartDate', N'Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (252, N'd_Protected_time', N'Protected Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (253, N'i_Selected_PI_ID', N'PI Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (254, N's_Feasibility_DataOwner', N'Feasibility Data Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (255, N's_Years', N'Year', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (256, N's_Factors', N'Factor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (257, N'i_Budget_Allocation', N'Allocated Budget', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (258, N's_Yearly_Quaterly', N'Yearly/Quarterly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (259, N'i_Budget_Utilized', N'Actual Spendings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (260, N'Q1', N'Quarter 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (261, N'Q2', N'Quarter 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (262, N'Q3', N'Quarter 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (263, N'Q4', N'Quarter 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (264, N's_Blinded_UnBlinded', N'Blinded / Un-Blinded Co-Ordinator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (265, N's_Cordinator_name', N'Co-Ordinator Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (266, N'i_Grant_ID', N'Grant Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (267, N'i_GrantStatus_ID', N'Grant Details Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (268, N's_Award_Letter_File', N'Award Letter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (269, N'dt_Award_Letter_Date', N'Date of Award Letter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (271, N'i_Indirects', N'Indirects', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (272, N'i_Indirects_Amt_Utilized', N'Indirects Amount Utilized', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (273, N'b_Mentor', N'Mentor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (274, N's_Mentor_Name', N'Mentor Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (275, N's_Mentor_Institute', N'Mentor Institution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (276, N's_Mentor_Dept', N'Mentor Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (277, N's_Tech_PI_Name', N'Name of Technical PI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (278, N's_Tech_PI_Institution', N'Technical PI Institution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (279, N's_Tech_PI_Dept', N'Technical PI Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (280, N's_Point_of_Submission', N'Point of Submission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (281, N'b_Grant_Extended', N'Any Extension?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (282, N'dt_New_Grant_Expiry_Date', N'New Grant Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (283, N'i_GrantExtended_period', N'Extension Duration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (284, N's_Backup_Blinded', N'Backup Blinded Co-Ordinators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (285, N's_Backup_UnBlinded', N'Backup Unblinded Co-Ordinators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (286, N'i_CRA_ID', N'CRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (287, N'dt_LastUpdated_Date', N'Date Last Updated / Revised', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (288, N'i_ProjectStatusID', N'Project Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (289, N'dt_ProjectEndDate', N'Project End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (290, N'i_TTSH_PI_ID', N'PI Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblAudit_Display_Fields] ([i_id], [s_FieldName], [s_DisplayFieldName], [s_Description], [s_TableName], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (291, N'i_Other_PI_ID', N'Other PI Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblAudit_Display_Fields] OFF
SET IDENTITY_INSERT [dbo].[tblAward_Org_Master] ON 

INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (1, N'NHG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0)
INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (2, N'NMRC', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (3, N'ASTAR', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0)
INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (4, N'NKF', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (5, N'SATA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0)
INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (6, N'AO Foundation', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0)
INSERT [dbo].[tblAward_Org_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [b_SixmonthlyUpdate]) VALUES (7, N'Others', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tblAward_Org_Master] OFF
SET IDENTITY_INSERT [dbo].[tblContract_Category_Master] ON 

INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (1, N'Research Collaborative Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (2, N'Material Transfer Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (3, N'Clinical Trials Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (4, N'Service Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (5, N'Non-Disclosure/Confidentiality Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (6, N'Memorandum of Understanding', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (7, N'Masters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (8, N'Clinical Innovation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (9, N'Staff Placement Agreements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblContract_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [IsDeleted]) VALUES (10, N'Project Agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tblContract_Category_Master] OFF
SET IDENTITY_INSERT [dbo].[tblContract_Clauses_Master] ON 

INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Definition of Work', NULL, N'088/john', NULL, CAST(0x0000A4D000000000 AS DateTime), NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Governance', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Statement of Work', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Term of Agreement', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Principal Investigator', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Parties Obligations', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Provision of Investigational Products', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'Reporting of Adverse events', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'Data Protection', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'Record keeping', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, N'Liabilities and Indemnities', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, N'Confidentiality', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (14, N'Intellectual Property and License rights', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (15, N'Publications', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (16, N'Publicities', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (17, N'Warranties and Disclaimers of liabilities', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (18, N'Termination', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (19, N'Consequences of Termination', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (20, N'Financial Arrangements', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (21, N'Assignments', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (22, N'Force majeure', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (23, N'Notices', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (24, N'Dispute resolution', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (25, N'Governing law( Singapore)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (26, N'Relationship between parties', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (27, N'Agreement and Modification', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Clauses_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (28, N'No 3rd party beneficiaries', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblContract_Clauses_Master] OFF
SET IDENTITY_INSERT [dbo].[tblContract_Status_Master] ON 

INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'File Created', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Initial Review', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Subsequent Review', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'To Department', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'To Collaborator', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Clarifying', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'On Hold', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Terminated/Withdrawn', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblContract_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'Completed', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblContract_Status_Master] OFF
SET IDENTITY_INSERT [dbo].[tblCountry_Master] ON 

INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'China', NULL, N'abc', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'India', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'United States', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Indonesia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Brazil', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Pakistan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'Russia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'Japan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, N'Mexico', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, N'Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (14, N'Vietnam', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (15, N'Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (16, N'Egypt', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (17, N'Germany', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (18, N'Iran', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (19, N'Turkey', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (20, N'Democratic Republic of the Congo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (21, N'Thailand', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (22, N'France', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (23, N'United Kingdom', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (24, N'Italy', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (25, N'Burma', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (26, N'South Africa', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (27, N'South Korea', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (28, N'Colombia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (29, N'Spain', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (30, N'Ukraine', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (31, N'Tanzania', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (32, N'Kenya', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (33, N'Argentina', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (34, N'Algeria', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (35, N'Poland', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (36, N'Sudan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (37, N'Uganda', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (38, N'Canada', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (39, N'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (40, N'Morocco', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (41, N'Peru', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (42, N'Uzbekistan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (43, N'Saudi Arabia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (44, N'Malaysia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (45, N'Venezuela', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (46, N'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (47, N'Afghanistan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (48, N'Yemen', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (49, N'North Korea', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (50, N'Ghana', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (51, N'Mozambique', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (52, N'Taiwan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (53, N'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (54, N'Ivory Coast', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (55, N'Syria', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (56, N'Madagascar', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (57, N'Angola', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (58, N'Cameroon', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (59, N'Sri Lanka', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (60, N'Romania', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (61, N'Burkina Faso', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (62, N'Niger', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (63, N'Kazakhstan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (64, N'Netherlands', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (65, N'Chile', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (66, N'Malawi', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (67, N'Ecuador', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (68, N'Guatemala', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (69, N'Mali', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (70, N'Cambodia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (71, N'Senegal', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (72, N'Zambia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (73, N'Zimbabwe', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (74, N'Chad', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (75, N'South Sudan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (76, N'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (77, N'Cuba', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (78, N'Tunisia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (79, N'Guinea', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (80, N'Greece', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (81, N'Portugal', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (82, N'Rwanda', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (83, N'Czech Republic', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (84, N'Somalia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (85, N'Haiti', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (86, N'Benin', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (87, N'Burundi', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (88, N'Bolivia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (89, N'Hungary', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (90, N'Sweden', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (91, N'Belarus', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (92, N'Dominican Republic', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (93, N'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (94, N'Honduras', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (95, N'Austria', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (96, N'United Arab Emirates', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (97, N'Israel', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (98, N'Switzerland', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (99, N'Tajikistan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (100, N'Bulgaria', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (101, N'Hong Kong (China)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (102, N'Serbia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (103, N'Papua New Guinea', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (104, N'Paraguay', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (105, N'Laos', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (106, N'Jordan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (107, N'El Salvador', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (108, N'Eritrea', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (109, N'Libya', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (110, N'Togo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (111, N'Sierra Leone', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (112, N'Nicaragua', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (113, N'Kyrgyzstan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (114, N'Denmark', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (115, N'Finland', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (116, N'Slovakia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (117, N'Singapore', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (118, N'Turkmenistan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (119, N'Norway', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (120, N'Lebanon', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (121, N'Costa Rica', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (122, N'Central African Republic', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (123, N'Ireland', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (124, N'Georgia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (125, N'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (126, N'Republic of the Congo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (127, N'Palestine', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (128, N'Liberia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (129, N'Croatia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (130, N'Oman', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (131, N'Bosnia and Herzegovina', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (132, N'Puerto Rico', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (133, N'Kuwait', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (134, N'Moldov', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (135, N'Mauritania', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (136, N'Panama', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (137, N'Uruguay', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (138, N'Armenia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (139, N'Lithuania', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (140, N'Albania', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (141, N'Mongolia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (142, N'Jamaica', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (143, N'Namibia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (144, N'Lesotho', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (145, N'Qatar', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (146, N'Macedonia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (147, N'Slovenia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (148, N'Botswana', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (149, N'Latvia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (150, N'Gambia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (151, N'Kosovo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (152, N'Guinea-Bissau', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (153, N'Gabon', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (154, N'Equatorial Guinea', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (155, N'Trinidad and Tobago', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (156, N'Estonia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (157, N'Mauritius', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (158, N'Swaziland', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (159, N'Bahrain', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (160, N'Timor-Leste', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (161, N'Djibouti', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (162, N'Cyprus', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (163, N'Fiji', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (164, N'Reunion (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (165, N'Guyana', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (166, N'Comoros', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (167, N'Bhutan', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (168, N'Montenegro', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (169, N'Macau (China)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (170, N'Solomon Islands', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (171, N'Western Sahara', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (172, N'Luxembourg', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (173, N'Suriname', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (174, N'Cape Verde', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (175, N'Malta', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (176, N'Guadeloupe (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (177, N'Martinique (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (178, N'Brunei', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (179, N'Bahamas', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (180, N'Iceland', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (181, N'Maldives', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (182, N'Belize', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (183, N'Barbados', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (184, N'French Polynesia (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (185, N'Vanuatu', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (186, N'New Caledonia (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (187, N'French Guiana (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (188, N'Mayotte (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (189, N'Samoa', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (190, N'Sao Tom and Principe', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (191, N'Saint Lucia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (192, N'Guam (USA)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (193, N'Curacao (Netherlands)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (194, N'Saint Vincent and the Grenadines', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (195, N'Kiribati', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (196, N'United States Virgin Islands (USA)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (197, N'Grenada', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (198, N'Tonga', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (199, N'Aruba (Netherlands)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (200, N'Federated States of Micronesia', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (201, N'Jersey (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (202, N'Seychelles', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (203, N'Antigua and Barbuda', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (204, N'Isle of Man (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (205, N'Andorra', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (206, N'Dominica', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (207, N'Bermuda (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (208, N'Guernsey (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (209, N'Greenland (Denmark)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (210, N'Marshall Islands', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (211, N'American Samoa (USA)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (212, N'Cayman Islands (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (213, N'Saint Kitts and Nevis', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (214, N'Northern Mariana Islands (USA)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (215, N'Faroe Islands (Denmark)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (216, N'Sint Maarten (Netherlands)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (217, N'Saint Martin (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (218, N'Liechtenstein', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (219, N'Monaco', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (220, N'San Marino', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (221, N'Turks and Caicos Islands (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (222, N'Gibraltar (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (223, N'British Virgin Islands (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (224, N'Aland Islands (Finland)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (225, N'Caribbean Netherlands (Netherlands)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (226, N'Palau', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (227, N'Cook Islands (NZ)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (228, N'Anguilla (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (229, N'Wallis and Futuna (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (230, N'Tuvalu', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (231, N'Nauru', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (232, N'Saint Barthelemy (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (233, N'Saint Pierre and Miquelon (France)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (234, N'Montserrat (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (235, N'Saint Helena, Ascension and Tristan da Cunha (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (236, N'Svalbard and Jan Mayen (Norway)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (237, N'Falkland Islands (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (238, N'Norfolk Island (Australia)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (239, N'Christmas Island (Australia)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (240, N'Niue (NZ)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (241, N'Tokelau (NZ)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (242, N'Vatican City', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (243, N'Cocos (Keeling) Islands (Australia)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCountry_Master] ([i_ID], [s_Name], [i_CountryCode], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (244, N'Pitcairn Islands (UK)', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblCountry_Master] OFF
SET IDENTITY_INSERT [dbo].[tblCTC_Status_Master] ON 

INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'New', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Pending Submission', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Pending Approval', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Active', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Extended', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Terminated', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblCTC_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Completed', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblCTC_Status_Master] OFF
SET IDENTITY_INSERT [dbo].[tblCupboard_Number_Master] ON 

INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (1, N'1', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (2, N'2', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (3, N'3', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (4, N'4', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (5, N'5', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (6, N'6', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (7, N'7', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (8, N'8', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (9, N'9', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (10, N'10', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (11, N'11', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (12, N'12', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (13, N'13', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (14, N'14', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (15, N'15', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (16, N'16', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (17, N'17', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (18, N'18', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (19, N'19', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (20, N'20', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (21, N'21', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (22, N'22', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (23, N'23', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (24, N'24', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (25, N'25', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (26, N'26', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (27, N'27', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (28, N'28', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (29, N'29', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (30, N'30', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (31, N'31', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (32, N'32', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (33, N'33', NULL)
INSERT [dbo].[tblCupboard_Number_Master] ([i_ID], [s_Name], [s_Description]) VALUES (34, N'34', NULL)
SET IDENTITY_INSERT [dbo].[tblCupboard_Number_Master] OFF
SET IDENTITY_INSERT [dbo].[tblCurrency_Master] ON 

INSERT [dbo].[tblCurrency_Master] ([ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Singapore Dollars', NULL, N'088/Admin', NULL, CAST(0x0000A41300000000 AS DateTime), NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblCurrency_Master] OFF
SET IDENTITY_INSERT [dbo].[tblDept_Master] ON 

INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Anaesthesiology, Intensive Care and Pain Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Cardiology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Clinical Epidemiology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Continuing and Community Care', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'Diagnostic Radiology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'Emergency Department', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'Endocrinology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, N'Gastroenterology and Hepatology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, N'General Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (14, N'General Surgery', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (15, N'Geriatric Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (16, N'Haematology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (17, N'Infectious Disease', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (18, N'Laboratory Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (19, N'Medical Oncology (Johns Hopkins)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (20, N'Neurology (NNI@TTSH)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (21, N'Neurosurgery (NNI@TTSH)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (22, N'Occupational Health Services', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (23, N'Ophthalmology (Eye)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (24, N'Orthopaedic Surgery', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (25, N'Otorhinolaryngology (Ear, Nose and Throat)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (26, N'Palliative Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (27, N'Pathology Department', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (28, N'Psychological Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (29, N'Radiation Oncology, NCIS@TTSH', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (30, N'Rehabilitation Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (31, N'Renal Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (32, N'Respiratory and Critical Care Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (33, N'Rheumatology, Allergy and Immunology ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (34, N'Urology', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (35, N'Care & Counselling', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (36, N'Nutrition and Dietetics', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (37, N'Occupational Therapy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (38, N'Pharmacy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (39, N'Physiotherapy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (40, N'Podiatry', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (41, N'Prosthetics & Orthotics', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (42, N'Psychological Services', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (43, N'Respiratory Therapy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDept_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (44, N'Speech Therapy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblDept_Master] OFF
SET IDENTITY_INSERT [dbo].[tbldocumentcategory] ON 

INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (1, N'Ethics', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (2, N'Feasibility', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (3, N'Selected', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (4, N'Contract Management', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (5, N'Contract Master', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (6, N'Regulatory Master', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (7, N'Others', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (8, N'Grant', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbldocumentcategory] ([DocumentCategoryId], [DocumentCategory], [IsProjectRelated], [s_CreatedBy_ID], [dt_Created_Date], [s_ModifyBy_ID], [dt_Modify_Date]) VALUES (9, N'Project Master', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbldocumentcategory] OFF
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'F2 - Medicine Cooler', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'F3 - Medicine Cooler', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'F4 - Medicine Fridge', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'F5 - Medicine Fridge', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Phase 1 unit Medicine Fridge', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Phase 1 unit -20C Freezer', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Phase 1 unit - 80C Freezer', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblDrugLocation_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Phase 1 unit small cupboard', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblEthics_Review_Master] ON 

INSERT [dbo].[tblEthics_Review_Master] ([i_ID], [s_Name], [s_Description]) VALUES (1, N'Fullboard Review', NULL)
INSERT [dbo].[tblEthics_Review_Master] ([i_ID], [s_Name], [s_Description]) VALUES (2, N'Exemptions', NULL)
INSERT [dbo].[tblEthics_Review_Master] ([i_ID], [s_Name], [s_Description]) VALUES (3, N'Expedited', NULL)
SET IDENTITY_INSERT [dbo].[tblEthics_Review_Master] OFF
INSERT [dbo].[tblFeasibility_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Initial/Sent to Department', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblFeasibility_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Site Evaluation Visit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblFeasibility_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'In Progress', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblFeasibility_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Questionnaire Completed', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblFeasibility_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Pending Outcome', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblFeasibility_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Outcome Achieved', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGrant_DurationMaster] ON 

INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'0.5', N'6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'1', N'1 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'1.5', N'1 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'2', N'2 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'2.5', N'2 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'3', N'3 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'3.5', N'3 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'4', N'4 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'4.5', N'4 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'5', N'5 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'5.5', N'5 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, N'6', N'6 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, N'6.5', N'6 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (14, N'7', N'7 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (15, N'7.5', N'7 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (16, N'8', N'8 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (17, N'8.5', N'8 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (18, N'9', N'9 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (19, N'9.5', N'9 Year 6 Month', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_DurationMaster] ([i_ID], [s_Name], [s_AliasName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (20, N'10.0', N'10 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGrant_DurationMaster] OFF
SET IDENTITY_INSERT [dbo].[tblGrant_SubType1_Master] ON 

INSERT [dbo].[tblGrant_SubType1_Master] ([i_ID], [s_GrantType_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (3, 1, N'Talent Intramural', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType1_Master] ([i_ID], [s_GrantType_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (4, 1, N'Talent Extramural', NULL, NULL, N'', NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType1_Master] ([i_ID], [s_GrantType_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (5, 2, N'Individual Intramural', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType1_Master] ([i_ID], [s_GrantType_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (6, 2, N'Individual Extramural', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType1_Master] ([i_ID], [s_GrantType_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (7, 3, N'Single Project', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType1_Master] ([i_ID], [s_GrantType_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (8, 3, N'Multiple Project', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
SET IDENTITY_INSERT [dbo].[tblGrant_SubType1_Master] OFF
SET IDENTITY_INSERT [dbo].[tblGrant_SubType2_Master] ON 

INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (1, 4, N'NMRC CSA (Clinician Scientist Award)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (2, 4, N'NMRC STAR Investigator Award', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (3, 4, N'NMRC Fellowship Award', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (4, 4, N'NMRC Healthcare Research Scholarship', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (5, 4, N'NMRC Transition Award', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (6, 4, N'NMRC Clinician Scientist/Clinician Investigator Salary Support Program', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (7, 4, N'NUS MCI (Master of Clinical Investigation)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (8, 3, N'CSCS - Clinical Scientist Scheme', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (9, 3, N'CLR (Clinical Leadership for Research)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (10, 3, N'CIS (Clinical Investigator Scheme)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (11, 3, N'RSS (Research Support Scheme)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (12, 3, N'CSF (Clinician Scientist Fellowship)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (13, 6, N'NMRC Individual Research Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (14, 6, N'NMRC Health Services Research', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (15, 6, N'NMRC Clinical Trial Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (16, 6, N'NMRC Health Services Research New Investigator Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (17, 6, N'NMRC Reinvestment Fund', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (18, 6, N'NMRC CDPHRG (Communicable diseases public health research grant)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (19, 6, N'NMRC New Investigator Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (20, 6, N'NMRC TCM Clinical Research Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (21, 6, N'National Kidney Foundation Research Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (22, 6, N'Duke/NUS TIDR', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (23, 6, N'Duke/NUS LCPC', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (24, 6, N'YONG LOO LIN School of Mesen CDCIRG Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (26, 6, N'SIGN Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (27, 6, N'SATA Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (28, 6, N'ASTAR BMRC Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (29, 6, N'ASTAR SERC Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (30, 6, N'AO Foundation Spine Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (31, 6, N'AO Foundation TAP Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (33, 6, N'SMF Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (35, 6, N'LEE Foundation Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (36, 6, N'ICAS Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (37, 6, N'NMRC CBRG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (38, 6, N'Donations', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (39, 6, N'Others', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (40, 5, N'SIG (Small Innovative Grant)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (41, 7, N'Collabrative External', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (42, 7, N'Collabrative NHG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (43, 8, N'Collabrative External', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType2_Master] ([i_ID], [s_GrantSubType1_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (45, 8, N'Collabrative NHG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
SET IDENTITY_INSERT [dbo].[tblGrant_SubType2_Master] OFF
SET IDENTITY_INSERT [dbo].[tblGrant_SubType3_Master] ON 

INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (1, 1, N'NMRC CSA (Investigator)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (2, 1, N'NMRC CSA (Senior Investigator)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (3, 8, N'Junior', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (4, 8, N'Middle', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (5, 8, N'Senior', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (6, 15, N'Investigator Initiated Trials Early Phase', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (7, 15, N'Co-Development Scheme', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (9, 15, N'Investigator Initiated Trials Late Phase', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (10, 41, N'ASTAR BEP POC', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (11, 41, N'ASTAR BEP POV ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (12, 41, N'NMRC TCR Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (14, 41, N'NMRC BNB', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (15, 42, N'NTU-NHG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (16, 42, N'ARG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (17, 42, N'BEP', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (18, 42, N'NHG Thematic Grant Program', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (20, 42, N'Astar NHG/NTU Skin Research Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Extramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (21, 43, N'ASTAR BEP POC', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (22, 43, N'ASTAR BEP POV ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (23, 43, N'NMRC TCR Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (24, 43, N'NMRC BNB', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (25, 45, N'NTU-NHG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (26, 45, N'ARG', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (27, 45, N'BEP', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (28, 45, N'NHG Thematic Grant Program', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
INSERT [dbo].[tblGrant_SubType3_Master] ([i_ID], [s_GrantSubType2_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [s_Intramural_Extramural]) VALUES (29, 45, N'Astar NHG/NTU Skin Research Grant', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'Intramural')
SET IDENTITY_INSERT [dbo].[tblGrant_SubType3_Master] OFF
SET IDENTITY_INSERT [dbo].[tblGrant_Type_Master] ON 

INSERT [dbo].[tblGrant_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Talent Development', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Individual Project', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrant_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Program/Collaborative', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGrant_Type_Master] OFF
SET IDENTITY_INSERT [dbo].[tblGrantDetailsStatus_Master] ON 

INSERT [dbo].[tblGrantDetailsStatus_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'New', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrantDetailsStatus_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'On Going', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrantDetailsStatus_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Completed', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGrantDetailsStatus_Master] OFF
SET IDENTITY_INSERT [dbo].[tblGrantOutcome_Master] ON 

INSERT [dbo].[tblGrantOutcome_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Successful', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrantOutcome_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Not-Successful', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrantOutcome_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'New', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrantOutcome_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'In Progress', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGrantOutcome_Master] OFF
SET IDENTITY_INSERT [dbo].[tblGrantSubmissionStatus_Master] ON 

INSERT [dbo].[tblGrantSubmissionStatus_Master] ([i_Id], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'New', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblGrantSubmissionStatus_Master] ([i_Id], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Re-Submission', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGrantSubmissionStatus_Master] OFF
SET IDENTITY_INSERT [dbo].[tblIPStorageMaster] ON 

INSERT [dbo].[tblIPStorageMaster] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Pharmacy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIPStorageMaster] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Others', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIPStorageMaster] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'CRIO', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblIPStorageMaster] OFF
INSERT [dbo].[tblIRB_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Inreview', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Approved', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Not-Approved by Department Rep.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Not-Approved by Institution Rep.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Not-Approved by IRB', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Withdrawn by PI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'NHG DSRB', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'SingHealth CIRB', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'NUS IRB', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'IACUC', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblIRB_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Others', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblLeadSponsor_Master] ON 

INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'TTSH', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'National University Hospital', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Singapore General Hospital', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Changi General Hospital', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Khoo Teck Puat Hospital', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Alexandra Hospital', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblLeadSponsor_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Other', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblLeadSponsor_Master] OFF
SET IDENTITY_INSERT [dbo].[tblMenuMaster] ON 

INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(1 AS Numeric(18, 0)), N'Dashboard', 0, 1, N'#', NULL, CAST(0x0000A4B901200045 AS DateTime), NULL, CAST(0x0000A4B901200045 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(2 AS Numeric(18, 0)), N'Project Monitoring', 0, 2, N'#', NULL, CAST(0x0000A4B901202916 AS DateTime), NULL, CAST(0x0000A4B901202916 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(3 AS Numeric(18, 0)), N'Feasibility', 2, 0, N'FeasibilityDetails.aspx', NULL, CAST(0x0000A4B901204B60 AS DateTime), NULL, CAST(0x0000A4B901204B60 AS DateTime), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(4 AS Numeric(18, 0)), N'Ethics', 2, 0, N'EthicDetails.aspx', NULL, CAST(0x0000A4B901206D64 AS DateTime), NULL, CAST(0x0000A4B901206D64 AS DateTime), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(5 AS Numeric(18, 0)), N'Selected Project', 2, 0, N'SelectedProject.aspx', NULL, CAST(0x0000A4B901207F23 AS DateTime), NULL, CAST(0x0000A4B901207F23 AS DateTime), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(6 AS Numeric(18, 0)), N'Contract ', 0, 6, N'#', NULL, CAST(0x0000A4B901209473 AS DateTime), NULL, CAST(0x0000A4B901209473 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(8 AS Numeric(18, 0)), N'Regulatory', 0, 8, N'frmRegulatory.aspx', NULL, CAST(0x0000A4B90120E602 AS DateTime), NULL, CAST(0x0000A4B90120E602 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(10 AS Numeric(18, 0)), N'Grant', 0, 10, N'#', NULL, CAST(0x0000A4B901215CD8 AS DateTime), NULL, CAST(0x0000A4B901215CD8 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(12 AS Numeric(18, 0)), N'Contract Master', 6, 0, N'frmContractMgmt_ProjectUser.aspx', NULL, CAST(0x0000A4B90121A7C8 AS DateTime), NULL, CAST(0x0000A4B90121A7C8 AS DateTime), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(13 AS Numeric(18, 0)), N'Reports', 0, 13, N'#', NULL, CAST(0x0000A4B90121B9BE AS DateTime), NULL, CAST(0x0000A4B90121B9BE AS DateTime), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(14 AS Numeric(18, 0)), N'DMS', 0, 14, N'', NULL, CAST(0x0000A4B90121D6BE AS DateTime), NULL, CAST(0x0000A4B90121D6BE AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(15 AS Numeric(18, 0)), N'Audit Trail', 0, 15, N'#', NULL, CAST(0x0000A4B90121EDD7 AS DateTime), NULL, CAST(0x0000A4B90121EDD7 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(16 AS Numeric(18, 0)), N'Menu Management', 0, 16, N'#', NULL, CAST(0x0000A4B9012231A3 AS DateTime), NULL, CAST(0x0000A4B9012231A3 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(18 AS Numeric(18, 0)), N'Project Master', 2, 0, N'frmProject_Master.aspx', NULL, CAST(0x0000A4D700FB7FD8 AS DateTime), NULL, CAST(0x0000A4D700FB7FD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(19 AS Numeric(18, 0)), N'Contract Management', 6, 0, N'frmContractMgmt_ContractUsers.aspx', NULL, CAST(0x0000A4D700FD69D1 AS DateTime), NULL, CAST(0x0000A4D700FD69D1 AS DateTime), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(20 AS Numeric(18, 0)), N'Regulatory Master', 8, 0, N'frmRegulatory.aspx', NULL, CAST(0x0000A4DD00CFD470 AS DateTime), NULL, CAST(0x0000A4DD00CFD470 AS DateTime), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(21 AS Numeric(18, 0)), N'Access Rights', 16, NULL, N'MenuMasterMappping.aspx', NULL, CAST(0x0000A4E400C751F7 AS DateTime), NULL, CAST(0x0000A4E400C751F7 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(22 AS Numeric(18, 0)), N'Document Management System', 14, 0, N'Frm_DMS.aspx', NULL, CAST(0x0000A4E90136C727 AS DateTime), NULL, CAST(0x0000A4E90136C727 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(23 AS Numeric(18, 0)), N'Audit Trail Report', 15, 0, N'Reports.aspx?Report=auditreport', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(24 AS Numeric(18, 0)), N'Contract Active', 13, 0, N'Reports.aspx?Report=contractactive', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(25 AS Numeric(18, 0)), N'Contract Executed', 13, 0, N'Reports.aspx?Report=contractexecuted', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(26 AS Numeric(18, 0)), N'Contract Expired', 13, 0, N'Reports.aspx?Report=contractexpired', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(27 AS Numeric(18, 0)), N'Contract In Negotiation', 13, 0, N'Reports.aspx?Report=contractinnegotiation', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(28 AS Numeric(18, 0)), N'Contract Requested', 13, 0, N'Reports.aspx?Report=contractrequested', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(29 AS Numeric(18, 0)), N'Contract Status', 13, 0, N'Reports.aspx?Report=contractstatus', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(30 AS Numeric(18, 0)), N'Contract Turn Around Time', 13, 0, N'Reports.aspx?Report=contractturnaroundtime', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(31 AS Numeric(18, 0)), N'Contract Withdrawn', 13, 0, N'Reports.aspx?Report=contractwithdrawn', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(32 AS Numeric(18, 0)), N'Cupboard Location', 13, 0, N'Reports.aspx?Report=cupboard', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(33 AS Numeric(18, 0)), N'Drug Location', 13, 0, N'Reports.aspx?Report=druglocation', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(11 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(34 AS Numeric(18, 0)), N'Feasibility Status', 13, 0, N'Reports.aspx?Report=feasibilitystatus', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(12 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(35 AS Numeric(18, 0)), N'List Of Clinical Trial', 13, 0, N'Reports.aspx?Report=projectbydeptpi', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(13 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(36 AS Numeric(18, 0)), N'Regulatory Status', 13, 0, N'Reports.aspx?Report=projectlistofctregulatorystatus', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(14 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(37 AS Numeric(18, 0)), N'Selected Project Co-ordinator', 13, 0, N'Reports.aspx?Report=coordinatorselectedproject', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(38 AS Numeric(18, 0)), N'SAE Status', 13, 0, N'Reports.aspx?Report=saestatus', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(16 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(39 AS Numeric(18, 0)), N'No. of Patients Withdrawn', 13, 0, N'Reports.aspx?Report=selectedprojnopatients', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(17 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(40 AS Numeric(18, 0)), N'Selected Project Bar Chart', 13, 0, N'SelectedProjectBarchartRpt.aspx', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(18 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(41 AS Numeric(18, 0)), N'PI Initiated Project By Sponsor', 13, 0, N'Reports.aspx?Report=rptsponsorpi', NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), NULL, CAST(0x0000A4ED00DF33F9 AS DateTime), CAST(19 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(42 AS Numeric(18, 0)), N'Dashboard', 1, 0, N'Dashboard.aspx', CAST(1 AS Numeric(18, 0)), CAST(0x0000A4F100D75E76 AS DateTime), NULL, CAST(0x0000A4F100D75E76 AS DateTime), NULL)
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(43 AS Numeric(18, 0)), N'Grant Application', 10, 0, N'FrmGrant_Application.aspx', NULL, CAST(0x0000A4F900DCAA5D AS DateTime), NULL, CAST(0x0000A4F900DCAA5D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(44 AS Numeric(18, 0)), N'Grant Detail', 10, 0, N'frmGrantDetailsForm.aspx', NULL, CAST(0x0000A4FA01093B6D AS DateTime), NULL, CAST(0x0000A4FA01093B6D AS DateTime), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(45 AS Numeric(18, 0)), N'Grant Senior CSCS', 10, 0, N'frmGrantSeniorCSCS.aspx', NULL, CAST(0x0000A4FA010B645C AS DateTime), NULL, CAST(0x0000A4FA010B645C AS DateTime), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(46 AS Numeric(18, 0)), N'Funding Details Report', 13, 0, N'Reports.aspx?Report=fundingdetailsreport', NULL, CAST(0x0000A5090117C72E AS DateTime), NULL, CAST(0x0000A5090117C72E AS DateTime), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(47 AS Numeric(18, 0)), N'Grant Summary Report', 13, 0, N'Reports.aspx?Report=grantsummaryreport', NULL, CAST(0x0000A509011832B3 AS DateTime), NULL, CAST(0x0000A509011832B3 AS DateTime), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(48 AS Numeric(18, 0)), N'Research Award Report', 13, 0, N'Reports.aspx?Report=researchawardsrpt', NULL, CAST(0x0000A50E010E059D AS DateTime), NULL, CAST(0x0000A50E010E059D AS DateTime), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(49 AS Numeric(18, 0)), N'Grant Money Report', 13, 0, N'Reports.aspx?Report=grantmoneyrpt', NULL, CAST(0x0000A50E010E8292 AS DateTime), NULL, CAST(0x0000A50E010E8292 AS DateTime), CAST(23 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(50 AS Numeric(18, 0)), N'Grant Status Report', 13, 0, N'Reports.aspx?Report=GrantDetailsStatusRpt', NULL, CAST(0x0000A5160144D5C6 AS DateTime), NULL, CAST(0x0000A5160144D5C6 AS DateTime), CAST(24 AS Numeric(18, 0)))
INSERT [dbo].[tblMenuMaster] ([MenuId], [MenuName], [Parent], [Child], [Url], [CreatedBy], [CreatedDate], [ModifyBy], [ModifyDate], [DisplayOrder]) VALUES (CAST(51 AS Numeric(18, 0)), N'Cash Flow Report', 13, 0, N'Reports.aspx?Report=CashFlowReport', NULL, CAST(0x0000A51601451B68 AS DateTime), NULL, CAST(0x0000A51601451B68 AS DateTime), CAST(25 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[tblMenuMaster] OFF
SET IDENTITY_INSERT [dbo].[tblModule_Master] ON 

INSERT [dbo].[tblModule_Master] ([i_id], [s_ModuleName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [i_Display_Order]) VALUES (1, N'Contract Management Module', N'Contract Management Module', NULL, NULL, CAST(0x0000A4DB0115E408 AS DateTime), NULL, NULL, NULL, 2)
INSERT [dbo].[tblModule_Master] ([i_id], [s_ModuleName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [i_Display_Order]) VALUES (2, N'Regulatory Management Module', N'Regulatory Management Module', NULL, NULL, CAST(0x0000A4DB0115E408 AS DateTime), NULL, NULL, NULL, 3)
INSERT [dbo].[tblModule_Master] ([i_id], [s_ModuleName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [i_Display_Order]) VALUES (3, N'Project Monitoring Module', N'Project Monitoring Module', NULL, NULL, CAST(0x0000A4DB0115E408 AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblModule_Master] ([i_id], [s_ModuleName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [i_Display_Order]) VALUES (4, N'Grant Management Module', N'Grant Management Module', NULL, NULL, CAST(0x0000A4DB0115E408 AS DateTime), NULL, NULL, NULL, 4)
INSERT [dbo].[tblModule_Master] ([i_id], [s_ModuleName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name], [i_Display_Order]) VALUES (5, N'Senior CSCS', N'Senior CSCS', NULL, NULL, CAST(0x0000A51400D9B848 AS DateTime), NULL, NULL, NULL, 5)
SET IDENTITY_INSERT [dbo].[tblModule_Master] OFF
SET IDENTITY_INSERT [dbo].[tblModuleTable_Mapping] ON 

INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (1, 3, N'tblProject_Master', N'Project Master', NULL, NULL, CAST(0x0000A4DB011A0025 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (2, 3, N'tblProject_Dept_PI', N'Project Department PI', NULL, NULL, CAST(0x0000A4DB011A0025 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (3, 3, N'tblSelected_Project_Details', N'Selected Project Details', NULL, NULL, CAST(0x0000A4DB011A0025 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (4, 3, N'tblFeasibility_Details', N'Feasibility Details', NULL, NULL, CAST(0x0000A4DB011A0025 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (5, 3, N'tblEthics_Details', N'Ethics Details', NULL, NULL, CAST(0x0000A4DB011A0025 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (6, 3, N'tblProject_Coordinator_Details', N'Project Coordinator Details', NULL, NULL, CAST(0x0000A4DB011A8F2E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (7, 1, N'tblContract_Details', N'Contract Details', NULL, NULL, CAST(0x0000A4E600C8199A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (8, 1, N'tblContract_Status_Date', N'Contract Status Date', NULL, NULL, CAST(0x0000A4E600C8199A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (9, 1, N'tblSelectedCollborators_Details', N'Selected Collborators Details', NULL, NULL, CAST(0x0000A4E600C8199A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (10, 1, N'tblSelected_Clause_Details', N'Selected Clause Details', NULL, NULL, CAST(0x0000A4E600C8199A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (11, 1, N'tblContractDetails_MultipleContractFile', N'Contract Details Multiple Contract File', NULL, NULL, CAST(0x0000A4E600C8199A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (12, 1, N'tblContract_Master', N'Contract Master', NULL, NULL, CAST(0x0000A4E600C9B81E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (13, 1, N'tblContract_Collaborator_Details', N'Contract Collaborator Details', NULL, NULL, CAST(0x0000A4E600C9B81E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (14, 2, N'tblRegulatory_Master', N'Regulatory Master', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (15, 2, N'tblRegulatorySixMonthUpdate', N'Regulatory Six Month Update', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (16, 2, N'tblRegulatory_Submission_Status', N'Regulatory Submission Status', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (17, 2, N'tblRegulatory_StudyTeam', N'Regulatory Study Team', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (18, 2, N'tblRegulatory_ICF_Details', N'Regulatory ICF Details', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (19, 2, N'tblRegulatory_Ammendments_Details', N'Regulatory Amendments Details', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (20, 2, N'tblRegulatoryIPManagement', N'Regulatory IP Management', NULL, NULL, CAST(0x0000A4E600F574AD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (21, 3, N'tblDataOwner_Mapping', N'Data Owner Details', NULL, NULL, CAST(0x0000A50C00B35E69 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (22, 4, N'tblGrant_Master', N'Grant Application', NULL, NULL, CAST(0x0000A50F0116A630 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (23, 4, N'tblGrant_Details', N'Grant Details', NULL, NULL, CAST(0x0000A50F0116A630 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (25, 5, N'tblSenior_CSCS_Details', N'Senior CSCS Details', NULL, NULL, CAST(0x0000A51400DB7EB1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (26, 5, N'tblSeniorCSCS_Dept_PI_Details', N'Senior CSCS Dept PI Details', NULL, NULL, CAST(0x0000A51400DB7EB1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (27, 5, N'tblSenior_CSCS_Budget_Allocation_Details', N'Senior CSCS Budget Allocation', NULL, NULL, CAST(0x0000A51400DB7EB1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (29, 4, N'tblGrant_Budget_Allocation_Details', N'Grant Budget Allocation Details', NULL, NULL, CAST(0x0000A51700C38CB0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (30, 4, N'tblGrantExtensionDetails', N'Grant Extension Details', NULL, NULL, CAST(0x0000A51700C38CB0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblModuleTable_Mapping] ([i_id], [i_Module_Id], [s_TableName], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [s_CreatedBy_Name], [s_ModifyBy_Name]) VALUES (31, 3, N'tblSelected_CRA_Details', N'Selected CRO/CRA Details', NULL, NULL, CAST(0x0000A51900EF0922 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblModuleTable_Mapping] OFF
SET IDENTITY_INSERT [dbo].[tblNameOfIRB_Master] ON 

INSERT [dbo].[tblNameOfIRB_Master] ([s_Name], [s_Description], [i_ID]) VALUES (N'CIRB', NULL, 1)
INSERT [dbo].[tblNameOfIRB_Master] ([s_Name], [s_Description], [i_ID]) VALUES (N'NUS IRB', NULL, 2)
INSERT [dbo].[tblNameOfIRB_Master] ([s_Name], [s_Description], [i_ID]) VALUES (N'DSRB', NULL, 3)
SET IDENTITY_INSERT [dbo].[tblNameOfIRB_Master] OFF
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Patient''s Report upon Readmission (Outside Scheduled Follow Up)', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Patient''s or Next-of-Kin Report during Scheduled Follow Up', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Patient''s Next-of-Kin ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'TTSH Referring Consultant ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Ward Staff Nurse In Charge ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Case Manager/Advanced Practice Nurse ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Medical Officer/House Officer', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Study Team Doctor ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'MRO', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'Coordinator', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblNotificationMode_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'Others', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblPeriod_of_Insurance_Master] ON 

INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (1, N'1 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (2, N'2 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (3, N'3 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (4, N'4 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (5, N'5 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (6, N'6 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (7, N'7 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (8, N'8 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (9, N'9 Year', NULL)
INSERT [dbo].[tblPeriod_of_Insurance_Master] ([i_ID], [s_Name], [s_Description]) VALUES (10, N'10 Year', NULL)
SET IDENTITY_INSERT [dbo].[tblPeriod_of_Insurance_Master] OFF
SET IDENTITY_INSERT [dbo].[tblProject_Category_Master] ON 

INSERT [dbo].[tblProject_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [Selected]) VALUES (1, N'Pharma', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[tblProject_Category_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name], [Selected]) VALUES (2, N'PI Initiated', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblProject_Category_Master] OFF
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Not Initiated', N'1', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Suspended', N'4', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Terminated/Withdrawn at Negotiation', N'5', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Completed', N'6', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Terminated/Withdrawn at Study Stage', N'7', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Enrolment Closed; on follow-up', N'8', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Ongoing - Last Patient Last Visit Completed', N'2', NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Ongoing - Data Analysis', N'3', NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblProject_Subtype_Master] ON 

INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, 1, N'Medicine', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, 1, N'Device', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, 1, N'Surgery', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, 1, N'Procedures', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, 2, N'Population Research', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, 2, N'Surveys', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, 2, N'Quality of Life', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, 2, N'Databases', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, 2, N'Medical Record Review', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, 3, N'Animals', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, 3, N'Human Samples', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, 2, N'Health Services Research', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Subtype_Master] ([i_ID], [Project_Type_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, 2, N'Registry', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblProject_Subtype_Master] OFF
INSERT [dbo].[tblProject_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Clinical Trials', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Clinical Research', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblProject_Type_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Basic Research', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblRegulatory_Submission_Interval_master] ON 

INSERT [dbo].[tblRegulatory_Submission_Interval_master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'6 Monthly', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblRegulatory_Submission_Interval_master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'12 Monthly', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblRegulatory_Submission_Interval_master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'18 Monthly', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblRegulatory_Submission_Interval_master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'21 Monthly', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblRegulatory_Submission_Interval_master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'24 Monthly', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblRegulatory_Submission_Interval_master] OFF
SET IDENTITY_INSERT [dbo].[tblRoleAccess] ON 

INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(58 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A4D7010457CF AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4D7010457CF AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(66 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E300B1DAEC AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E300B1DAEC AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(67 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A4E300B1DAEC AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E300B1DAEC AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(68 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A4E300B1DAEC AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E300B1DAEC AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(287 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(288 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(289 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(290 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(291 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(292 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(293 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(294 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(295 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(296 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(297 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(298 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(299 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(300 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(301 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(302 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(303 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(304 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(305 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(306 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E401332764 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(700 AS Numeric(18, 0)), CAST(28 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E601337D63 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E601337D63 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(703 AS Numeric(18, 0)), CAST(30 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E900A8D71B AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4E900A8D71B AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(10889 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A50100C059C9 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A50100C059C9 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(10890 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A50100C059C9 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A50100C059C9 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11193 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11194 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11195 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11196 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11197 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11198 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11199 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11200 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11201 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11202 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11203 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11204 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11205 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11206 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11207 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11208 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11209 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11210 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11211 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11212 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(46 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11213 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(47 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11214 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(48 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11215 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(49 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11216 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11217 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11218 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(26 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11219 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11220 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(28 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11221 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(29 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11222 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(30 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11223 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(31 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11224 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11225 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11226 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(34 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11227 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11228 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(36 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11229 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11230 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(38 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11231 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(39 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11232 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11233 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(41 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11234 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11235 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11236 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11237 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(23 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11238 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11239 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51100D13802 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11263 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), CAST(0x0000A51601457DF0 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51601457DF0 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11264 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(51 AS Numeric(18, 0)), CAST(0x0000A5160145860A AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5160145860A AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11265 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11266 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11267 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11268 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11269 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11270 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51700C2CBD8 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11271 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11272 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11273 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11274 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11275 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11276 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11277 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11278 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11279 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11280 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11281 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11282 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11283 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11284 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11285 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11286 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11287 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A5170119CA81 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11288 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11289 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11290 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11291 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11292 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11293 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11294 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11295 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11296 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11297 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11298 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11299 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11300 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11301 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11302 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11303 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11304 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11305 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11306 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11307 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(34 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11308 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11309 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11310 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(38 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11311 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(39 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11312 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11313 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11314 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A01062F0D AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11315 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11316 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11317 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11318 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11319 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11320 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11321 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11322 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11323 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11324 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11325 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11326 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A51A0112E6E4 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11342 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11343 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11344 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11345 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11346 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11347 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11348 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11349 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11350 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11351 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11352 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11353 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11354 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11355 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11356 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11357 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A52400E2F057 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11408 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11409 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11410 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11411 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11412 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11413 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11414 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11415 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11416 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11417 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11418 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11419 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11420 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11421 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11422 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11423 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11424 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11425 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11426 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11427 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11428 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(38 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11429 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(39 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11430 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11431 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[tblRoleAccess] ([RoleAccessId], [RoleId], [MenuId], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy]) VALUES (CAST(11432 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A53800C664F7 AS DateTime), CAST(1 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[tblRoleAccess] OFF
SET IDENTITY_INSERT [dbo].[tblRoleMaster] ON 

INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TAdmin', CAST(0x0000A4B9013D769D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013D769D AS DateTime), CAST(1 AS Numeric(18, 0)), N'fbbe1b0c-8301-43e6-b7d6-c913c45efd3c')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TPFeasibility', CAST(0x0000A4B9013DA920 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013DA920 AS DateTime), CAST(1 AS Numeric(18, 0)), N'b93c2836-1b6d-463c-81f4-53cdf2276265')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TPEthics', CAST(0x0000A4B9013DC40D AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013DC40D AS DateTime), CAST(1 AS Numeric(18, 0)), N'1aa88562-692c-497d-9417-cbb6dd97527d')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TPSelected', CAST(0x0000A4B9013DDC0C AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013DDC0C AS DateTime), CAST(1 AS Numeric(18, 0)), N'7d68452d-7104-42c0-808c-56019ccb6aa4')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TRegulatory', CAST(0x0000A4B9013DF557 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013DF557 AS DateTime), CAST(1 AS Numeric(18, 0)), N'b499304c-a8f0-4c86-addb-5b9fac39cc68')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TGrant', CAST(0x0000A4B9013E11C6 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013E11C6 AS DateTime), CAST(1 AS Numeric(18, 0)), N'd981253e-8d9b-4366-9467-f9da6cae8a81')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TContract', CAST(0x0000A4B9013E29C3 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4B9013E29C3 AS DateTime), CAST(1 AS Numeric(18, 0)), N'37d20987-87f9-4683-97fc-8d5b286e9aac')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TCoordinator', CAST(0x0000A4ED0126B855 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4ED0126B855 AS DateTime), CAST(1 AS Numeric(18, 0)), N'd4f9c176-0e02-4f37-ac7e-74a9d6450f7f')
INSERT [dbo].[tblRoleMaster] ([RoleId], [GroupId], [RoleName], [CreatedDate], [CreatedBy], [ModifyDate], [ModifiedBy], [GroupGUID]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'TProjectMonitoring', CAST(0x0000A4ED0126B855 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x0000A4ED0126B855 AS DateTime), CAST(1 AS Numeric(18, 0)), N'a2bd62a3-d39f-4702-b39d-01d78684416d')
SET IDENTITY_INSERT [dbo].[tblRoleMaster] OFF
SET IDENTITY_INSERT [dbo].[tblSelected_Cupboard_Section] ON 

INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (9, N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (10, N'10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (11, N'11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (12, N'12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (13, N'13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (14, N'14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (15, N'15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (16, N'16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (17, N'17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (18, N'18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (19, N'19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (20, N'20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (21, N'21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (22, N'22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (23, N'23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (24, N'24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (25, N'25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (26, N'26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (27, N'27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (28, N'28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (29, N'29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (30, N'30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (31, N'31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (32, N'32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (33, N'33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSelected_Cupboard_Section] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (34, N'34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblSelected_Cupboard_Section] OFF
SET IDENTITY_INSERT [dbo].[tblSelected_Year_Master] ON 

INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (1, N'2008', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (2, N'2009', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (3, N'2010', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (4, N'2011', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (5, N'2012', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (6, N'2013', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (7, N'2014', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (8, N'2015', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (9, N'2016', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (10, N'2017', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (11, N'2018', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (12, N'2019', NULL)
INSERT [dbo].[tblSelected_Year_Master] ([i_ID], [s_Name], [s_Description]) VALUES (13, N'2020', NULL)
SET IDENTITY_INSERT [dbo].[tblSelected_Year_Master] OFF
SET IDENTITY_INSERT [dbo].[tblSeniorSCSCGrantName_Master] ON 

INSERT [dbo].[tblSeniorSCSCGrantName_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Senior CSCS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblSeniorSCSCGrantName_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Clinical Investigator', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblSeniorSCSCGrantName_Master] OFF
SET IDENTITY_INSERT [dbo].[tblStudy_Status_Master] ON 

INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (1, N'Recruitment', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (2, N'Follow-Up', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (3, N'Closed', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (4, N'Terminated/Withdrawn', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (5, N'Suspended', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (6, N'Completed', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (7, N'Pending Archival', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tblStudy_Status_Master] ([i_ID], [s_Name], [s_Description], [s_CreatedBy_ID], [s_ModifyBy_ID], [dt_Created_Date], [dt_Modify_Date], [IsDeleted], [s_ModifyBy_Name], [s_CreatedBy_Name]) VALUES (8, N'Archived', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblStudy_Status_Master] OFF
ALTER TABLE [dbo].[tbl_DocumentManagementSystem] ADD  DEFAULT (getdate()) FOR [dt_Created_Date]
GO
ALTER TABLE [dbo].[tbl_DocumentManagementSystem] ADD  DEFAULT (getdate()) FOR [dt_Modify_Date]
GO
ALTER TABLE [dbo].[tblAward_Org_Master] ADD  CONSTRAINT [DF_tblAward_Org_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Category_Master] ADD  CONSTRAINT [DF_tblContract_Category_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Clauses_Master] ADD  CONSTRAINT [DF_tblContract_Clauses_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Collobrator_Master] ADD  CONSTRAINT [DF_tblContract_Collobrator_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Details] ADD  CONSTRAINT [DF_tblContract_Details_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Master] ADD  CONSTRAINT [DF_tblContract_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Status_Master] ADD  CONSTRAINT [DF_tblContract_Status_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblCountry_Master] ADD  CONSTRAINT [DF_tblCountry_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblCRA_Master] ADD  CONSTRAINT [DF_tblCRA_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblCRO_Master] ADD  CONSTRAINT [DF_tblCRO_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblCTC_Status_Master] ADD  CONSTRAINT [DF_tblCTC_Status_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblCurrency_Master] ADD  CONSTRAINT [DF_tblCurrency_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDept_Master] ADD  CONSTRAINT [DF_tblDept_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tbldocumentcategory] ADD  DEFAULT ((1)) FOR [IsProjectRelated]
GO
ALTER TABLE [dbo].[tblDrug_Master] ADD  CONSTRAINT [DF_tblDrug_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblDrugLocation_Master] ADD  CONSTRAINT [DF_tblDrugLocation_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblEthics_Details] ADD  CONSTRAINT [DF_tblEthics_Details_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblFactors_Master] ADD  CONSTRAINT [DF_tblFactors_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblFeasibility_Details] ADD  CONSTRAINT [DF_tblFeasibility_Details_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblFeasibility_Status_Master] ADD  CONSTRAINT [DF_tblFeasibility_Status_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_Details] ADD  CONSTRAINT [DF_tblGrant_Details_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_DurationMaster] ADD  CONSTRAINT [DF_tblGrant_DuraionMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_Master] ADD  CONSTRAINT [DF_tblGrant_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_SubType1_Master] ADD  CONSTRAINT [DF_tblGrant_SubType1_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_SubType2_Master] ADD  CONSTRAINT [DF_tblGrant_SubType2_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_SubType3_Master] ADD  CONSTRAINT [DF_tblGrant_SubType3_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrant_Type_Master] ADD  CONSTRAINT [DF_tblGrant_Type_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrantDetailsStatus_Master] ADD  CONSTRAINT [DF_tblGrantDetailsStatus_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrantOutcome_Master] ADD  CONSTRAINT [DF_tblGrantOutcome_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblGrantSubmissionStatus_Master] ADD  CONSTRAINT [DF_tblGrantSubmissionStatus_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblIPStorageMaster] ADD  CONSTRAINT [DF_tblIPStorageMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblIRB_Status_Master] ADD  CONSTRAINT [DF_tblIRB_Status_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblIRB_Type_Master] ADD  CONSTRAINT [DF_tblIRB_Type_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblLeadSponsor_Master] ADD  CONSTRAINT [DF_tblLeadSponsor_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblMenuMaster] ADD  CONSTRAINT [DF_tblMenuMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblMenuMaster] ADD  CONSTRAINT [DF_tblMenuMaster_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[tblNotificationMode_Master] ADD  CONSTRAINT [DF_tblNotificationMode_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblOther_PI_Master] ADD  CONSTRAINT [DF_tblOther_PI_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblPI_Master] ADD  CONSTRAINT [DF_tblPI_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblProject_Category_Master] ADD  CONSTRAINT [DF_tblProject_Category_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblProject_Category_Master] ADD  CONSTRAINT [DF_tblProject_Category_Master_Selected]  DEFAULT ((1)) FOR [Selected]
GO
ALTER TABLE [dbo].[tblProject_Master] ADD  CONSTRAINT [DF_tblProject_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblProject_Status_Master] ADD  CONSTRAINT [DF_tblProject_Status_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblProject_Subtype_Master] ADD  CONSTRAINT [DF_tblProject_Subtype_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblProject_Type_Master] ADD  CONSTRAINT [DF_tblProject_Type_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblRegulatory_Master] ADD  CONSTRAINT [DF_tblRegulatory_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblRegulatory_Submission_Interval_master] ADD  CONSTRAINT [DF_tblRegulatory_Submission_Interval_master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblRoleAccess] ADD  CONSTRAINT [DF_tblRoleAccess_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblRoleAccess] ADD  CONSTRAINT [DF_tblRoleAccess_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[tblRoleAccess] ADD  CONSTRAINT [DF_tblRoleAccess_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[tblRoleAccess] ADD  CONSTRAINT [DF_tblRoleAccess_ModifiedBy]  DEFAULT ((1)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[tblRoleMaster] ADD  CONSTRAINT [DF_tblRoleMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblRoleMaster] ADD  CONSTRAINT [DF_tblRoleMaster_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[tblSelected_Cupboard_Section] ADD  CONSTRAINT [DF_tblSelected_Cupboard_Section_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_i_TTSH_Target]  DEFAULT ((1)) FOR [i_TTSH_Target]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_i_Screen_No]  DEFAULT ((0)) FOR [i_Screen_No]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_i_Screen_Failure]  DEFAULT ((0)) FOR [i_Screen_Failure]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_i_Randomized]  DEFAULT ((0)) FOR [i_Randomized]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_i_Completed]  DEFAULT ((0)) FOR [i_Completed]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_i_Withdrawl]  DEFAULT ((0)) FOR [i_Withdrawl]
GO
ALTER TABLE [dbo].[tblSelected_Project_Details] ADD  CONSTRAINT [DF_tblSelected_Project_Details_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblSelectedProject_MonthlyID] ADD  CONSTRAINT [DF_tblSelectedProject_MonthlyID_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblSenior_CSCS_Details] ADD  CONSTRAINT [DF_tblSenior_CSCS_Details_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblSeniorSCSCGrantName_Master] ADD  CONSTRAINT [DF_tblSeniorSCSCGrantName_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblSponsor_Master] ADD  CONSTRAINT [DF_tblSponsor_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblStudy_Status_Master] ADD  CONSTRAINT [DF_tblStudy_Status_Master_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblContract_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblContract_Details_tblContract_Category_Master] FOREIGN KEY([i_Contract_Category_ID])
REFERENCES [dbo].[tblContract_Category_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblContract_Details] CHECK CONSTRAINT [FK_tblContract_Details_tblContract_Category_Master]
GO
ALTER TABLE [dbo].[tblContract_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblContract_Details_tblContract_Status_Master] FOREIGN KEY([i_Contract_Status_ID])
REFERENCES [dbo].[tblContract_Status_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblContract_Details] CHECK CONSTRAINT [FK_tblContract_Details_tblContract_Status_Master]
GO
ALTER TABLE [dbo].[tblContract_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblContract_Details_tblCurrency_Master] FOREIGN KEY([i_Currency_ID])
REFERENCES [dbo].[tblCurrency_Master] ([ID])
GO
ALTER TABLE [dbo].[tblContract_Details] CHECK CONSTRAINT [FK_tblContract_Details_tblCurrency_Master]
GO
ALTER TABLE [dbo].[tblEthics_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblEthics_Details_tblIRB_Status_Master] FOREIGN KEY([i_IRB_Status_ID])
REFERENCES [dbo].[tblIRB_Status_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblEthics_Details] CHECK CONSTRAINT [FK_tblEthics_Details_tblIRB_Status_Master]
GO
ALTER TABLE [dbo].[tblEthics_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblEthics_Details_tblIRB_Type_Master] FOREIGN KEY([i_IRB_Type_ID])
REFERENCES [dbo].[tblIRB_Type_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblEthics_Details] CHECK CONSTRAINT [FK_tblEthics_Details_tblIRB_Type_Master]
GO
ALTER TABLE [dbo].[tblEthics_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblEthics_Details_tblProject_Master] FOREIGN KEY([i_Project_ID])
REFERENCES [dbo].[tblProject_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblEthics_Details] CHECK CONSTRAINT [FK_tblEthics_Details_tblProject_Master]
GO
ALTER TABLE [dbo].[tblEthics_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblEthics_Details_tblProject_Status_Master] FOREIGN KEY([i_Project_Status_ID])
REFERENCES [dbo].[tblProject_Status_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblEthics_Details] CHECK CONSTRAINT [FK_tblEthics_Details_tblProject_Status_Master]
GO
ALTER TABLE [dbo].[tblFeasibility_Dept_PI]  WITH CHECK ADD  CONSTRAINT [FK_Feasibility_Dept_PI_tblDept_Master] FOREIGN KEY([i_Dept_Id])
REFERENCES [dbo].[tblDept_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblFeasibility_Dept_PI] CHECK CONSTRAINT [FK_Feasibility_Dept_PI_tblDept_Master]
GO
ALTER TABLE [dbo].[tblFeasibility_Dept_PI]  WITH CHECK ADD  CONSTRAINT [FK_Feasibility_Dept_PI_tblFactors_Master] FOREIGN KEY([i_Feasibility_Id])
REFERENCES [dbo].[tblFactors_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblFeasibility_Dept_PI] CHECK CONSTRAINT [FK_Feasibility_Dept_PI_tblFactors_Master]
GO
ALTER TABLE [dbo].[tblFeasibility_Dept_PI]  WITH CHECK ADD  CONSTRAINT [FK_Feasibility_Dept_PI_tblPI_Master] FOREIGN KEY([i_PI_Id])
REFERENCES [dbo].[tblPI_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblFeasibility_Dept_PI] CHECK CONSTRAINT [FK_Feasibility_Dept_PI_tblPI_Master]
GO
ALTER TABLE [dbo].[tblFeasibility_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblFeasibility_Details_tblFeasibility_Status_Master] FOREIGN KEY([i_Feasibility_Status_ID])
REFERENCES [dbo].[tblFeasibility_Status_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblFeasibility_Details] CHECK CONSTRAINT [FK_tblFeasibility_Details_tblFeasibility_Status_Master]
GO
ALTER TABLE [dbo].[tblFeasibility_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblFeasibility_Details_tblProject_Master] FOREIGN KEY([i_Project_ID])
REFERENCES [dbo].[tblProject_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblFeasibility_Details] CHECK CONSTRAINT [FK_tblFeasibility_Details_tblProject_Master]
GO
ALTER TABLE [dbo].[tblGrant_Budget_Allocation_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Budget_Allocation_Details_tblPI_Master] FOREIGN KEY([i_TTSH_PI_ID])
REFERENCES [dbo].[tblPI_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Budget_Allocation_Details] CHECK CONSTRAINT [FK_tblGrant_Budget_Allocation_Details_tblPI_Master]
GO
ALTER TABLE [dbo].[tblGrant_Budget_Allocation_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Budget_Allocation_Details_tblProject_Master] FOREIGN KEY([i_Project_ID])
REFERENCES [dbo].[tblProject_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Budget_Allocation_Details] CHECK CONSTRAINT [FK_tblGrant_Budget_Allocation_Details_tblProject_Master]
GO
ALTER TABLE [dbo].[tblGrant_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Details_tblCurrency_Master] FOREIGN KEY([i_Currency_ID])
REFERENCES [dbo].[tblCurrency_Master] ([ID])
GO
ALTER TABLE [dbo].[tblGrant_Details] CHECK CONSTRAINT [FK_tblGrant_Details_tblCurrency_Master]
GO
ALTER TABLE [dbo].[tblGrant_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Details_tblGrant_Details] FOREIGN KEY([i_ID])
REFERENCES [dbo].[tblGrant_Details] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Details] CHECK CONSTRAINT [FK_tblGrant_Details_tblGrant_Details]
GO
ALTER TABLE [dbo].[tblGrant_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Details_tblGrant_Details1] FOREIGN KEY([i_ID])
REFERENCES [dbo].[tblGrant_Details] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Details] CHECK CONSTRAINT [FK_tblGrant_Details_tblGrant_Details1]
GO
ALTER TABLE [dbo].[tblGrant_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Details_tblGrant_Master] FOREIGN KEY([i_GrantMaster_ID])
REFERENCES [dbo].[tblGrant_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Details] CHECK CONSTRAINT [FK_tblGrant_Details_tblGrant_Master]
GO
ALTER TABLE [dbo].[tblGrant_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Details_tblProject_Master] FOREIGN KEY([i_Project_ID])
REFERENCES [dbo].[tblProject_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Details] CHECK CONSTRAINT [FK_tblGrant_Details_tblProject_Master]
GO
ALTER TABLE [dbo].[tblGrant_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Master_tblCurrency_Master] FOREIGN KEY([i_Currency_ID])
REFERENCES [dbo].[tblCurrency_Master] ([ID])
GO
ALTER TABLE [dbo].[tblGrant_Master] CHECK CONSTRAINT [FK_tblGrant_Master_tblCurrency_Master]
GO
ALTER TABLE [dbo].[tblGrant_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_Master_tblGrant_Master] FOREIGN KEY([i_Project_ID])
REFERENCES [dbo].[tblProject_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_Master] CHECK CONSTRAINT [FK_tblGrant_Master_tblGrant_Master]
GO
ALTER TABLE [dbo].[tblGrant_SubType1_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_SubType1_Master_tblGrant_Type_Master] FOREIGN KEY([s_GrantType_ID])
REFERENCES [dbo].[tblGrant_Type_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_SubType1_Master] CHECK CONSTRAINT [FK_tblGrant_SubType1_Master_tblGrant_Type_Master]
GO
ALTER TABLE [dbo].[tblGrant_SubType2_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_SubType2_Master_tblGrant_SubType1_Master] FOREIGN KEY([s_GrantSubType1_ID])
REFERENCES [dbo].[tblGrant_SubType1_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_SubType2_Master] CHECK CONSTRAINT [FK_tblGrant_SubType2_Master_tblGrant_SubType1_Master]
GO
ALTER TABLE [dbo].[tblGrant_SubType3_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblGrant_SubType3_Master_tblGrant_SubType2_Master] FOREIGN KEY([s_GrantSubType2_ID])
REFERENCES [dbo].[tblGrant_SubType2_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblGrant_SubType3_Master] CHECK CONSTRAINT [FK_tblGrant_SubType3_Master_tblGrant_SubType2_Master]
GO
ALTER TABLE [dbo].[tblModuleTable_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_tblModuleTable_Mapping_tblModule_Master] FOREIGN KEY([i_Module_Id])
REFERENCES [dbo].[tblModule_Master] ([i_id])
GO
ALTER TABLE [dbo].[tblModuleTable_Mapping] CHECK CONSTRAINT [FK_tblModuleTable_Mapping_tblModule_Master]
GO
ALTER TABLE [dbo].[tblPI_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblPI_Master_tblDept_Master] FOREIGN KEY([i_Dept_ID])
REFERENCES [dbo].[tblDept_Master] ([i_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPI_Master] CHECK CONSTRAINT [FK_tblPI_Master_tblDept_Master]
GO
ALTER TABLE [dbo].[tblProject_Dept_PI]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_Dept_PI_tblProject_Master] FOREIGN KEY([i_Project_ID])
REFERENCES [dbo].[tblProject_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblProject_Dept_PI] CHECK CONSTRAINT [FK_tblProject_Dept_PI_tblProject_Master]
GO
ALTER TABLE [dbo].[tblProject_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_Master_tblProject_Category_Master] FOREIGN KEY([i_Project_Category_ID])
REFERENCES [dbo].[tblProject_Category_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblProject_Master] CHECK CONSTRAINT [FK_tblProject_Master_tblProject_Category_Master]
GO
ALTER TABLE [dbo].[tblProject_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_Master_tblProject_Subtype_Master] FOREIGN KEY([i_Project_Subtype_ID])
REFERENCES [dbo].[tblProject_Subtype_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblProject_Master] CHECK CONSTRAINT [FK_tblProject_Master_tblProject_Subtype_Master]
GO
ALTER TABLE [dbo].[tblProject_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_Master_tblProject_Type_Master] FOREIGN KEY([i_Project_Type_ID])
REFERENCES [dbo].[tblProject_Type_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblProject_Master] CHECK CONSTRAINT [FK_tblProject_Master_tblProject_Type_Master]
GO
ALTER TABLE [dbo].[tblRegulatory_Ammendments_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblRegulatory_Ammendments_Details_tblRegulatory_Master] FOREIGN KEY([i_Regulatory_ID])
REFERENCES [dbo].[tblRegulatory_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblRegulatory_Ammendments_Details] CHECK CONSTRAINT [FK_tblRegulatory_Ammendments_Details_tblRegulatory_Master]
GO
ALTER TABLE [dbo].[tblRegulatory_ICF_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblRegulatory_ICF_Details_tblRegulatory_Master] FOREIGN KEY([i_Regulatory_ID])
REFERENCES [dbo].[tblRegulatory_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblRegulatory_ICF_Details] CHECK CONSTRAINT [FK_tblRegulatory_ICF_Details_tblRegulatory_Master]
GO
ALTER TABLE [dbo].[tblRegulatory_Master]  WITH CHECK ADD  CONSTRAINT [FK_tblRegulatory_Master_tblCTC_Status_Master] FOREIGN KEY([i_CTC_status_ID])
REFERENCES [dbo].[tblCTC_Status_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblRegulatory_Master] CHECK CONSTRAINT [FK_tblRegulatory_Master_tblCTC_Status_Master]
GO
ALTER TABLE [dbo].[tblRegulatory_StudyTeam]  WITH CHECK ADD  CONSTRAINT [FK_tblRegulatory_StudyTeam_tblRegulatory_Master] FOREIGN KEY([i_Regulatory_ID])
REFERENCES [dbo].[tblRegulatory_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblRegulatory_StudyTeam] CHECK CONSTRAINT [FK_tblRegulatory_StudyTeam_tblRegulatory_Master]
GO
ALTER TABLE [dbo].[tblRegulatory_Submission_Status]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Regulatory_Submission_Status_tblRegulatory_Master] FOREIGN KEY([i_Regulatory_ID])
REFERENCES [dbo].[tblRegulatory_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblRegulatory_Submission_Status] CHECK CONSTRAINT [FK_tbl_Regulatory_Submission_Status_tblRegulatory_Master]
GO
ALTER TABLE [dbo].[tblRegulatory_Submission_Status]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Regulatory_Submission_Status_tblRegulatory_Submission_Interval_master] FOREIGN KEY([i_Interval_ID])
REFERENCES [dbo].[tblRegulatory_Submission_Interval_master] ([i_ID])
GO
ALTER TABLE [dbo].[tblRegulatory_Submission_Status] CHECK CONSTRAINT [FK_tbl_Regulatory_Submission_Status_tblRegulatory_Submission_Interval_master]
GO
ALTER TABLE [dbo].[tblSelected_Clause_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblSelected_Clause_Details_tblContract_Clauses_Master1] FOREIGN KEY([i_Contract_Clause_ID])
REFERENCES [dbo].[tblContract_Clauses_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblSelected_Clause_Details] CHECK CONSTRAINT [FK_tblSelected_Clause_Details_tblContract_Clauses_Master1]
GO
ALTER TABLE [dbo].[tblSelected_Clause_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblSelected_Clause_Details_tblContract_Details] FOREIGN KEY([i_Contract_ID])
REFERENCES [dbo].[tblContract_Details] ([i_ID])
GO
ALTER TABLE [dbo].[tblSelected_Clause_Details] CHECK CONSTRAINT [FK_tblSelected_Clause_Details_tblContract_Details]
GO
ALTER TABLE [dbo].[tblSenior_CSCS_Budget_Allocation_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblSenior_CSCS_Budget_Allocation_Details_tblSenior_CSCS_Details] FOREIGN KEY([i_Senior_CSCS_ID])
REFERENCES [dbo].[tblSenior_CSCS_Details] ([i_ID])
GO
ALTER TABLE [dbo].[tblSenior_CSCS_Budget_Allocation_Details] CHECK CONSTRAINT [FK_tblSenior_CSCS_Budget_Allocation_Details_tblSenior_CSCS_Details]
GO
ALTER TABLE [dbo].[tblSenior_CSCS_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblSenior_CSCS_Details_tblAward_Org_Master] FOREIGN KEY([i_Award_org_ID])
REFERENCES [dbo].[tblAward_Org_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblSenior_CSCS_Details] CHECK CONSTRAINT [FK_tblSenior_CSCS_Details_tblAward_Org_Master]
GO
ALTER TABLE [dbo].[tblSeniorCSCS_Dept_PI_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblSeniorCSCS_Dept_PI_Details_tblPI_Master] FOREIGN KEY([i_PI_ID])
REFERENCES [dbo].[tblPI_Master] ([i_ID])
GO
ALTER TABLE [dbo].[tblSeniorCSCS_Dept_PI_Details] CHECK CONSTRAINT [FK_tblSeniorCSCS_Dept_PI_Details_tblPI_Master]
GO
ALTER TABLE [dbo].[tblSeniorCSCS_Dept_PI_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblSeniorCSCS_Dept_PI_Details_tblSenior_CSCS_Details] FOREIGN KEY([i_SeniorCSCS_ID])
REFERENCES [dbo].[tblSenior_CSCS_Details] ([i_ID])
GO
ALTER TABLE [dbo].[tblSeniorCSCS_Dept_PI_Details] CHECK CONSTRAINT [FK_tblSeniorCSCS_Dept_PI_Details_tblSenior_CSCS_Details]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAward_Org_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblContract_Category_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblContract_Clauses_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblContract_Collobrator_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblContract_Status_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblCountry_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblFactors_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblGrant_DurationMaster', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblGrant_SubType1_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblGrant_SubType2_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblGrant_SubType3_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblGrant_Type_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ stands for   Int or numeric ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblOther_PI_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Category_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Category' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Category_Master', @level2type=N'COLUMN',@level2name=N's_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Coordinator ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Coordinator_Details', @level2type=N'COLUMN',@level2name=N'i_Coordinator_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Coordinator Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Coordinator_Details', @level2type=N'COLUMN',@level2name=N's_Coordinator_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PI ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Dept_PI', @level2type=N'COLUMN',@level2name=N'i_PI_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'i_ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Display_Project_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Title' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Project_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Short Title' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Short_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Category ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'i_Project_Category_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Type ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'i_Project_Type_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Subtype ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'i_Project_Subtype_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collaboration Involved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'b_Collaboration_Involved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start By TTSH' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'b_StartBy_TTSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Funding Required' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'b_Funding_req'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Child' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'b_Ischild'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Parent Project ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'i_Parent_ProjectID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Alias1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Project_Alias1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Alias2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Project_Alias2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Project_Desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Feasible' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'b_IsFeasible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Selected Project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'b_Isselected_project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IRB No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_IRB_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Research IO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Research_IO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Research IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N's_Research_IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Start Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Master', @level2type=N'COLUMN',@level2name=N'dt_ProjectStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Status_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Subtype_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Type ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Subtype_Master', @level2type=N'COLUMN',@level2name=N'Project_Type_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Sub Type Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Subtype_Master', @level2type=N'COLUMN',@level2name=N's_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Type_Master', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Type Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProject_Type_Master', @level2type=N'COLUMN',@level2name=N's_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_CRA_Details', @level2type=N'COLUMN',@level2name=N'i_Project_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRO ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_CRA_Details', @level2type=N'COLUMN',@level2name=N'i_CRO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRA ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_CRA_Details', @level2type=N'COLUMN',@level2name=N'i_CRA_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Cupboard_Section', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cupboard Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Cupboard_Section', @level2type=N'COLUMN',@level2name=N's_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_Project_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IsTeam Needed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'b_IsTeam_Needed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Blinded Coordinator ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N's_Blinded_Coordinator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unblinded Coordinator ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N's_Unblinded_Coordinator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Blinded Cordinator Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N's_Blinded_Cordinator_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unblinded Cordinator Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N's_Unblinded_Cordinator_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SAE Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'b_SAE_Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Patient Study No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_Patient_Studyno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notification Mode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_Notification_Mode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Readmission' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'b_IsReadmission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Readmission Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'dt_Readmission_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discharge Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'dt_Discharge_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Knowledge Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'dt_Knowledge_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRO ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_CRO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Study Status ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_Study_Status_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project Type ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N'i_Project_Type_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clinic1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N's_Clinic1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clinic2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblSelected_Project_Details', @level2type=N'COLUMN',@level2name=N's_Clinic2'
GO
