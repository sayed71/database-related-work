//Update Query Two Table
update A
set A.[Password] =  ENCRYPTBYPASSPHRASE('KEY', B.[Password])
from dbo.[User] A inner join dbo.[User] B
on B.ID  = A.ID; 

//Insert Encrypted Data
INSERT        TOP (200)
INTO              TestUser(UserName, Password)
VALUES        ('Jhon', ENCRYPTBYPASSPHRASE('KEY', 'abc@123#'));

//View Encrypted Data
select UserName,convert(varchar(100),DECRYPTBYPASSPHRASE('KEY',Password)) AS Password FROM dbo.TestUser;