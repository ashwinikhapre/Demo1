USE [TTSH_CRIO]
GO
/****** Object:  User [ttsh_crio]    Script Date: 05-11-2015 6.41.17 PM ******/
CREATE USER [ttsh_crio] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [ttsh_crio]
GO
