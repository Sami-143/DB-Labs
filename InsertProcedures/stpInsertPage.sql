CREATE PROCEDURE InsertPage
    @PageID INT,
    @PageName NVARCHAR(MAX),
    @PageFollowerCount INT,
    @PageCategory INT,
    @CreatedBy INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    BEGIN TRY
        INSERT INTO [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory], [CreatedBy])
        VALUES (@PageID, @PageName, @PageFollowerCount, @PageCategory, @CreatedBy);

        COMMIT TRANSACTION;
        PRINT 'Page inserted successfully.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'An error occurred while inserting Page.';
    END CATCH;
END;
