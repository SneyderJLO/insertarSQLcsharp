USE [DB_PRACTICAS]
GO
/****** Object:  StoredProcedure [dbo].[sp_insertarNeysser]    Script Date: 7/13/2023 11:29:32 AM ******/
DROP PROCEDURE [dbo].[sp_insertarNeysser]
GO
ALTER TABLE [dbo].[pr_transacciones] DROP CONSTRAINT [fk_tipoTrx]
GO
ALTER TABLE [dbo].[pr_transacciones] DROP CONSTRAINT [fk_RazonTrx]
GO
/****** Object:  Table [dbo].[tipoTrx]    Script Date: 7/13/2023 11:29:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoTrx]') AND type in (N'U'))
DROP TABLE [dbo].[tipoTrx]
GO
/****** Object:  Table [dbo].[razonTrx]    Script Date: 7/13/2023 11:29:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[razonTrx]') AND type in (N'U'))
DROP TABLE [dbo].[razonTrx]
GO
/****** Object:  Table [dbo].[pr_transacciones]    Script Date: 7/13/2023 11:29:33 AM ******/

