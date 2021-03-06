USE [master]
GO
/****** Object:  Database [TTSH_CRIO]    Script Date: 23-10-2015 12:05:52 ******/
CREATE DATABASE [TTSH_CRIO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TTSH_CRIO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TTSH_CRIO.mdf' , SIZE = 37888KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TTSH_CRIO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TTSH_CRIO_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TTSH_CRIO] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TTSH_CRIO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TTSH_CRIO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET ARITHABORT OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TTSH_CRIO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TTSH_CRIO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TTSH_CRIO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TTSH_CRIO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TTSH_CRIO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TTSH_CRIO] SET  MULTI_USER 
GO
ALTER DATABASE [TTSH_CRIO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TTSH_CRIO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TTSH_CRIO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TTSH_CRIO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TTSH_CRIO', N'ON'
GO