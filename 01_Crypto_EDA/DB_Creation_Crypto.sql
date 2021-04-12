-- CAS DAENG Leistungsnachweis Gruppe 4: Crypto Project
-- Data Organization

-- Create Database Tables

-- BTC Data

	IF NOT EXISTS (SELECT * FROM [dbo].[BTC_Table])
	BEGIN
      CREATE TABLE [dbo].[Bitcoin_Prices] (
	  
                [BtcId] INT NOT NULL PRIMARY KEY,
                [Open] REAL NULL DEFAULT 0,
                [High] REAL NULL DEFAULT 0,
                [Low] REAL NULL DEFAULT 0,
                [Close] REAL NULL DEFAULT 0,
                [WeightedPrice] REAL NULL DEFAULT 0,
                [Volume_USD] REAL NULL DEFAULT 0,
                [Volume_BTC] REAL NULL DEFAULT 0,
                [Currency] VARCHAR(5) NULL DEFAULT "USD",
                [MarketID] INT NOT NULL,
                [ExchangeID] INT NOT NULL,
                [Date] DATETIME NOT NULL,
                FOREIGN KEY(MarketID) REFERENCES Markets(MarketID) ON DELETE CASCADE,
                FOREIGN KEY(ExchangeID) REFERENCES Exchanges(ExchangeID) ON DELETE CASCADE,
                FOREIGN KEY(Date) REFERENCES Dates_Table(Date) ON DELETE CASCADE
		);
	END

-- Altcoin Data

	IF NOT EXISTS (SELECT * FROM [dbo].[Altcoin_Prices])
	BEGIN
      CREATE TABLE [dbo].[Altcoin_Prices] (
	  
                [AltcoinId] INT NOT NULL PRIMARY KEY,
                [Open] REAL NULL DEFAULT 0,
                [High] REAL NULL DEFAULT 0,
                [Low] REAL NULL DEFAULT 0,
                [Close] REAL NULL DEFAULT 0,
                [WeightedPrice] REAL NULL DEFAULT 0,
                [Volume_Market] REAL NULL DEFAULT 0,
                [Volume_BTC] REAL NULL DEFAULT 0,
                [MarketID] INT NOT NULL,
                [ExchangeID] INT NOT NULL,
                [Date] DATETIME NOT NULL,
                FOREIGN KEY(MarketID) REFERENCES Markets(MarketID) ON DELETE CASCADE,
                FOREIGN KEY(ExchangeID) REFERENCES Exchanges(ExchangeID) ON DELETE CASCADE,
                FOREIGN KEY(Date) REFERENCES Dates_Table(Date) ON DELETE CASCADE
		);
	END

-- Financial Assets Data

	IF NOT EXISTS (SELECT * FROM [dbo].[FinAssets_Prices])
	BEGIN
      CREATE TABLE [dbo].[FinAssets_Prices] (
	  
				[FinAssetID] INT NOT NULL PRIMARY KEY,
                [Open] REAL NULL DEFAULT 0,
                [High] REAL NULL DEFAULT 0,
                [Low] REAL NULL DEFAULT 0,
                [Close] REAL NULL DEFAULT 0,
                [AdjClose] REAL NULL DEFAULT 0,
                [Volume] REAL NULL DEFAULT 0,
                [Asset] VARCHAR(50) NULL,
                [Symbol] VARCHAR(10) NULL,
                [Source] VARCHAR(10) NULL,
                [MarketID] INT NOT NULL,
                [ExchangeID] INT NOT NULL,
                [Date] DATETIME NOT NULL,
                FOREIGN KEY(MarketID) REFERENCES Markets(MarketID) ON DELETE CASCADE,
                FOREIGN KEY(ExchangeID) REFERENCES Exchanges(ExchangeID) ON DELETE CASCADE,
                FOREIGN KEY(Date) REFERENCES Dates_Table(Date) ON DELETE CASCADE
		);
	END

-- Bitcoin Mining Data

	IF NOT EXISTS (SELECT * FROM [dbo].[BitcoinMining_Data])
	BEGIN
      CREATE TABLE [dbo].[BitcoinMining_Data] (
	  
				[FinAssetID] INT NOT NULL PRIMARY KEY,
                [Open] REAL NULL DEFAULT 0,
                [High] REAL NULL DEFAULT 0,
                [Low] REAL NULL DEFAULT 0,
                [Close] REAL NULL DEFAULT 0,
                [AdjClose] REAL NULL DEFAULT 0,
                [Volume] REAL NULL DEFAULT 0,
                [Asset] VARCHAR(50) NULL,
                [Symbol] VARCHAR(10) NULL,
                [Source] VARCHAR(10) NULL,
                [MarketID] INT NOT NULL,
                [ExchangeID] INT NOT NULL,
                [Date] DATETIME NOT NULL,
                FOREIGN KEY(MarketID) REFERENCES Markets(MarketID) ON DELETE CASCADE,
                FOREIGN KEY(ExchangeID) REFERENCES Exchanges(ExchangeID) ON DELETE CASCADE,
                FOREIGN KEY(Date) REFERENCES Dates_Table(Date) ON DELETE CASCADE
		);
	END