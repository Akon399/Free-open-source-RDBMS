-- Notes & Lecture by Akhona Njeje.--
-- Date 15 June 2024.--
-- Topic : Conducting Market research for a gaming company by Analysing gaming database sales. --

-- Q1 --
-- Calculate what % of global sales were made in North America.--

-- Q2 --
-- Extract a view of the console game titles orderd by plartform name in ascending order & year of release in descending order.--

-- Q3 --
-- For each game title extract the 1st 4 letters of the publisher name.--

-- Q4 --
-- Display all console plartforms wich were released either just before B Friday or Xmas(in any year).--

-- Q5 --
-- Order the plartforms by there longevity in ascending order.--

-- Q6 --
-- Demonstrate hoe to deal with the Game_Year column if the client wants to convert it to a different data type.

-- Q7 --
-- Provide recommendations on how to deal wirth missing data in the file. 



SELECT TOP (1000) [Date Received]
      ,[Product Name]
      ,[Sub Product]
      ,[Issue]
      ,[Sub Issue]
      ,[Consumer Complaint Narrative]
      ,[Company Public Response]
      ,[Company]
      ,[State Name]
      ,[Zip Code]
      ,[Tags]
      ,[Consumer Consent Provided]
      ,[Submitted via]
      ,[Date Sent to Company]
      ,[Company Response to Consumer]
      ,[Timely Response]
      ,[Consumer Disputed]
      ,[Complaint ID]
  FROM [Consumers].[dbo].[RAW P9-Consumer]
