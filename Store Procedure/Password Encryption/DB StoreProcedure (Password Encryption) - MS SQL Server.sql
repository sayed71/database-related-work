USE [TEST_DB]
GO
/****** Object:  StoredProcedure [dbo].[PasswordEncrypted] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[PasswordEncrypted](@EmployeeID AS VARCHAR(50), @NewPassword AS VARCHAR(50))
AS
BEGIN
	IF @EmployeeID <> '' AND  @NewPassword <> ''
    BEGIN
        UPDATE [User] SET [Password] =  ENCRYPTBYPASSPHRASE('KEY', @NewPassword) WHERE (EmployeeID=@EmployeeID);
    END
END;
GO
