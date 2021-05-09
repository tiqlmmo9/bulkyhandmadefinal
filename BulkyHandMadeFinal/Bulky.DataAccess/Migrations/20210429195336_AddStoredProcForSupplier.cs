using Microsoft.EntityFrameworkCore.Migrations;

namespace Bulky.DataAccess.Migrations
{
    public partial class AddStoredProcForSupplier : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"CREATE PROC usp_GetSuppliers 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.Suppliers 
                                    END");

            migrationBuilder.Sql(@"CREATE PROC usp_GetSupplier 
                                    @Id int 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.Suppliers  WHERE  (Id = @Id) 
                                    END ");

            migrationBuilder.Sql(@"CREATE PROC usp_UpdateSupplier
	                                @Id int,
	                                @Name	nvarchar(MAX),
                                    @StreetAddress	nvarchar(MAX),
                                    @City	nvarchar(MAX),
                                    @State	nvarchar(MAX),
                                    @PostalCode	nvarchar(MAX),
                                    @PhoneNumber	nvarchar(MAX)
                                    AS 
                                    BEGIN 
                                     UPDATE dbo.Suppliers
                                     SET    Name = @Name,
                                            StreetAddress = @StreetAddress,
                                            City = @City,
                                            State = @State,
                                            PostalCode = @PostalCode,
                                            PhoneNumber = @PhoneNumber
                                     WHERE  Id = @Id
                                    END");

            migrationBuilder.Sql(@"CREATE PROC usp_DeleteSupplier
	                                @Id int
                                    AS 
                                    BEGIN 
                                     DELETE FROM dbo.Suppliers
                                     WHERE  Id = @Id
                                    END");

            migrationBuilder.Sql(@"CREATE PROC usp_CreateSupplier
                                    @Name	nvarchar(MAX),
                                    @StreetAddress	nvarchar(MAX),
                                    @City	nvarchar(MAX),
                                    @State	nvarchar(MAX),
                                    @PostalCode	nvarchar(MAX),
                                    @PhoneNumber	nvarchar(MAX)
                                   AS 
                                   BEGIN 
                                    INSERT INTO dbo.Suppliers(Name, StreetAddress, City, State, PostalCode, PhoneNumber)
                                    VALUES (@Name, @StreetAddress, @City, @State, @PostalCode, @PhoneNumber)
                                   END");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE usp_GetSuppliers");
            migrationBuilder.Sql(@"DROP PROCEDURE usp_GetSupplier");
            migrationBuilder.Sql(@"DROP PROCEDURE usp_UpdateSupplier");
            migrationBuilder.Sql(@"DROP PROCEDURE usp_DeleteSupplier");
            migrationBuilder.Sql(@"DROP PROCEDURE usp_CreateSupplier");
        }
    }
}
