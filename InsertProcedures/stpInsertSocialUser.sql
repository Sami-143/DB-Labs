CREATE PROCEDURE InsertSocialUser
    @UserID INT,
    @UserName NVARCHAR(MAX),
    @Password NVARCHAR(MAX),
    @AccountType INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    BEGIN TRY
        INSERT INTO [dbo].[SocialUser] ([UserID], [UserName],  [Password] , [AccountType])
        VALUES (@UserID, @UserName, @Password, @AccountType);

        COMMIT TRANSACTION;
        PRINT 'SocialUser inserted successfully.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'An error occurred while inserting SocialUser.';
    END CATCH
END;
