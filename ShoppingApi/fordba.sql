
IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [ShoppingItems] (
    [Id] int NOT NULL IDENTITY,
    [Description] nvarchar(max) NULL,
    [Cost] decimal(18,2) NOT NULL,
    [InInventory] bit NOT NULL,
    CONSTRAINT [PK_ShoppingItems] PRIMARY KEY ([Id])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20201012190134_Initial', N'3.1.8');

GO

CREATE TABLE [CurbsideOrders] (
    [Id] int NOT NULL IDENTITY,
    [For] nvarchar(max) NULL,
    [Items] nvarchar(max) NULL,
    [Status] int NOT NULL,
    CONSTRAINT [PK_CurbsideOrders] PRIMARY KEY ([Id])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20201013160215_Curbside', N'3.1.8');

GO


