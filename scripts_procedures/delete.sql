USE [AgendaAmigosDB]
GO
/****** Object:  StoredProcedure [dbo].[DeletetAmigo]    Script Date: 28/06/2021 20:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[DeletetAmigo]
	@IdSku int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE 
	FROM dbo.Amigo
	WHERE AmigoId = @IdSku
END

