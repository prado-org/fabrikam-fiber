CREATE PROCEDURE [dbo].[GetCustomerById]
	@CustomerId INT
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
		dbo.Customers
	WHERE
		ID = @CustomerId
	ORDER BY 
		ID