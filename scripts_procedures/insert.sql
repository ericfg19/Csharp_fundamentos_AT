USE [AgendaAmigosDB]
GO
/****** Object:  StoredProcedure [dbo].[InsertAmigo]    Script Date: 28/06/2021 20:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsertAmigo] 
	@Nome varchar(30),
	@SobreNome varchar(50) = null,
	@Aniversario date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Amigo(Nome, SobreNome, Aniversario)
		VALUES (@Nome, @SobreNome, @Aniversario);
END
