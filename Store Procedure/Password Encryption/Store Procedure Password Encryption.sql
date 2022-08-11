CREATE PROCEDURE [dbo].[PasswordEncrypted](@EmployeeID AS VARCHAR(50), @NewPassword AS VARCHAR(50))
AS
BEGIN
	IF @EmployeeID <> '' AND  @NewPassword <> ''
    BEGIN
        UPDATE [User] SET [Password1] =  ENCRYPTBYPASSPHRASE('KEY', @NewPassword) WHERE (EmployeeID=@EmployeeID);
    END
END;