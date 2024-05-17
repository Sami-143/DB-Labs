CREATE PROCEDURE InsertFb_User
    @UserID INT,
    @Country INT,
    @UserGender INT,
    @FollowerCount INT,
    @DoB DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    BEGIN TRY
        INSERT INTO [dbo].[Fb_User] ([UserID], [Country], [UserGender], [FollowerCount], [DoB])
        VALUES (@UserID, @Country, @UserGender, @FollowerCount, @DoB);

        COMMIT TRANSACTION;
        PRINT 'Fb_User inserted successfully.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'An error occurred while inserting Fb_User.';
    END CATCH
END