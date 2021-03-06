USE [AgendaAmigosDB]
GO
/****** Object:  StoredProcedure [dbo].[UpdateAmigo]    Script Date: 28/06/2021 20:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[UpdateAmigo] 
	@Nome varchar(30),
	@SobreNome varchar(50) = null,
	@Aniversario date,
	@IdSku int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Amigo
		SET Nome = @Nome,
			SobreNome = @SobreNome,
			Aniversario = @Aniversario
	WHERE AmigoId = @IdSku;

END
