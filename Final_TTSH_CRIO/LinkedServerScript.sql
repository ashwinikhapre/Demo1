USE [master]
GO

/****** Object:  LinkedServer [TTSH_LINKEDSERVER]    Script Date: 7/17/2015 11:14:04 ******/
EXEC master.dbo.sp_addlinkedserver @server = N'TTSH_LINKEDSERVER', @srvproduct=N'Active Directory Services 2.5', @provider=N'ADsDSOObject', @datasrc=N'adsdatasource', @provstr=N'ADSDSOOBJECT'
 /* For security reasons the linked server remote logins password is changed with ######## */
 /*User need to change the Domain Name,User Name and Password */

EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'TTSH_LINKEDSERVER',@useself=N'False',@locallogin=NULL,@rmtuser=N'DOMAINNAME\username',@rmtpassword='**********'

GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'rpc', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'rpc out', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'TTSH_LINKEDSERVER', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO


