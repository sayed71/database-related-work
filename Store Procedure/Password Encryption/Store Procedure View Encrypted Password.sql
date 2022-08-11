CREATE PROCEDURE [dbo].[VP](@UserID AS VARCHAR(50), @EmployeeID AS VARCHAR(50))
AS
BEGIN
    SELECT   REVERSE(convert(varchar(100),DECRYPTBYPASSPHRASE('KEY',Password1))) AS String 
FROM            [User] WHERE (ID=@UserID OR EmployeeID=@EmployeeID) AND EmployeeID<>'' AND EmployeeID IS NOT NULL;
END;