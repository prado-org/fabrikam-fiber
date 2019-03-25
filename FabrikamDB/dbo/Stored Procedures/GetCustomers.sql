﻿CREATE PROCEDURE [dbo].[GetCustomers]
AS
	SELECT
		[ID],
		[FirstName],
		[LastName],
		[Address_Street],
		[Address_City],
		[Address_State],
		[Address_Zip] 
	FROM 
		[$(TableName)]
	ORDER BY 
		[$(OrderBy)]

	declare @teste varchar(max)
	set @teste ='Testes [$(TableName)]'