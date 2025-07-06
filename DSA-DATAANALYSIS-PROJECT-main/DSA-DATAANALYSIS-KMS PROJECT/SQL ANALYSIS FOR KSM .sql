CREATE DATABASE KMS_ANAYLSIS 

-- Create  table
CREATE TABLE KMS (
    Row_ID INT,
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Order_Priority VARCHAR(10),
    Order_Quantity INT,
    Sales DECIMAL(10,2),
    Discount DECIMAL(4,2),
    Ship_Mode VARCHAR(50),
    Profit DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),
    Shipping_Cost DECIMAL(10,2),
    Customer_Name VARCHAR(100),
    )
    
    IF OBJECT_ID('dbo.KMS', 'U') IS NOT NULL
    DROP TABLE dbo.KMS;
GO

---Create the KMS table with Row_ID as the Primary Key
CREATE TABLE KMS (
    Row_ID INT PRIMARY KEY,
    Order_ID INT,
    Order_Date DATE,
    Order_Priority VARCHAR(10),
    Order_Quantity INT,
    Sales DECIMAL(10,2),
    Discount DECIMAL(4,2),
    Ship_Mode VARCHAR(50),
    Profit DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),
    Shipping_Cost DECIMAL(10,2),
    Customer_Name VARCHAR(100),
    Province VARCHAR(50),
    Region VARCHAR(50),
    Customer_Segment VARCHAR(50),
    Product_Category VARCHAR(50),
    Product_Sub_Category VARCHAR(100),
    Product_Name VARCHAR(100),
    Product_Container VARCHAR(50),
    Product_Base_Margin DECIMAL(4,2),
    Ship_Date DATE
)
GO

-- Insert the records

INSERT INTO KMS (
    Row_ID, Order_ID, Order_Date, Order_Priority, Order_Quantity, Sales, Discount, 
    Ship_Mode, Profit, Unit_Price, Shipping_Cost, Customer_Name, Province, Region, 
    Customer_Segment, Product_Category, Product_Sub_Category, Product_Name, 
    Product_Container, Product_Base_Margin, Ship_Date
)

VALUES 
(1, 3, '2010-10-13', 'Low', 6, 261.54, 0.04, 'Regular Air', -213.25, 38.94, 35.00, 
 'Muhammed MacIntyre', 'Nunavut', 'Nunavut', 'Small Business', 'Office Supplies', 
 'Storage & Organization', 'Eldon Base for stackable storage shelf, platinum', 
 'Large Box', 0.80, '2010-10-20'),

(49, 293, '2012-10-01', 'High', 49, 10123.02, 0.07, 'Delivery Truck', 457.81, 208.16, 68.02, 
 'Barry French', 'Nunavut', 'Nunavut', 'Consumer', 'Office Supplies', 'Appliances', 
 '1.7 Cubic Foot Compact ""Cube"" Office Refrigerators', 
 'Jumbo Drum', 0.58, '2012-10-02'),

(50, 293, '2012-10-01', 'High', 27, 244.57, 0.01, 'Regular Air', 46.71, 8.69, 2.99, 
 'Barry French', 'Nunavut', 'Nunavut', 'Consumer', 'Office Supplies', 
 'Binders and Binder Accessories', 
 'Cardinal Slant-D® Ring Binder, Heavy Gauge Vinyl', 
 'Small Box', 0.39, '2012-10-03')

 SELECT *FROM KMS

 ----IMPORT CSV FILES INTO DB
 ----KMS_Cleaned_For_SQL.csv




















    Province VARCHAR(50),
    Region VARCHAR(50),
    Customer_Segment VARCHAR(50),
    Product_Category VARCHAR(50),
    Product_Sub_Category VARCHAR(100),
    Product_Name VARCHAR(100),
    Product_Container VARCHAR(50),
    Product_Base_Margin DECIMAL(4,2),
    Ship_Date DATE
)

-- Insert sample data 

INSERT INTO KMS(
    Row_ID, Order_ID, Order_Date, Order_Priority, Order_Quantity, Sales, Discount, 
    Ship_Mode, Profit, Unit_Price, Shipping_Cost, Customer_Name, Province, Region, 
    Customer_Segment, Product_Category, Product_Sub_Category, Product_Name, 
    Product_Container, Product_Base_Margin, Ship_Date
)
VALUES 
(1, 3, '2010-10-13', 'Low', 6, 261.54, 0.04, 'Regular Air', -213.25, 38.94, 35.0, 
 'Muhammed MacIntyre', 'Nunavut', 'Nunavut', 'Small Business', 'Office Supplies', 
 'Storage & Organization', 'Eldon Base for stackable storage shelf, platinum', 
 'Large Box', 0.8, '2010-10-20'),

(49, 293, '2012-10-01', 'High', 49, 10123.02, 0.07, 'Delivery Truck', 457.81, 208.16, 68.02, 
 'Barry French', 'Nunavut', 'Nunavut', 'Consumer', 'Office Supplies', 'Appliances', 
 '1.7 Cubic Foot Compact ""Cube"" Office Refrigerators', 
 'Jumbo Drum', 0.58, '2012-10-02'),

(50, 293, '2012-10-01', 'High', 27, 244.57, 0.01, 'Regular Air', 46.71, 8.69, 2.99, 
 'Barry French', 'Nunavut', 'Nunavut', 'Consumer', 'Office Supplies', 
 'Binders and Binder Accessories', 
 'Cardinal Slant-D® Ring Binder, Heavy Gauge Vinyl', 
 'Small Box', 0.39, '2012-10-03')


SELECT * FROM KMS

 DROP TABLE dbo.KM

 ALTER TABLE KMS ADD Order_Status VARCHAR(20)

 ALTER TABLE KMS DROP COLUMN Order_Status;


CREATE TABLE ReturnedOrders (
    Order_ID INT
)

INSERT INTO ReturnedOrders (Order_ID) VALUES 
(65), (69), (134), (135), (230), (324), (359), (612), (614), (678), (710), (740), (775), (833), (902), (928), (930), (1060), (1127), (1285), 
(1317), (1382), (1538), (1665), (1921), (2050), (2052), (2055), (2146), (2213), (2240), (2500), (2503), (2562), (2823), (2915), (3300), (3456), 
(3525), (3589), (3687), (3777), (3783), (4006), (4037), (4230), (4261), (4391), (4610), (4738), (4864), (4960), (5028), (5059), (5061), (5189), 
(5381), (5414), (5511), (5699), (6054), (6241), (6272), (6498), (6500), (6502), (6661), (6695), (6757), (6978), (6979), (7079), (7107), (7203), 
(7269), (7364), (7521), (7744), (7812), (7815), (7841), (7845), (8034), (8133), (8292), (8293), (8353), (8961), (9027), (9093), (9152), (9219), 
(9472), (9574), (9696), (9701), (9762), (9829), (9895), (9923), (9927), (10054), (10183), (10498), (10662), (10917), (11271), (11396), (11425), (11426), (11648), (11652), (11682), (11748), (11909), (11911), 
(12005), (12067), (12096), (12262), (12263), (12389), (12451), (12483), (12580), (12613), (12704), (12706), (12710), (12806), (12900), (12903), 
(13091), (13158), (13218), (13284), (13410), (13444), (13638), (13729), (13765), (13959), (13984), (13986), (14176), (14242), (14406), (14497), 
(14528), (14534), (14820), (14951), (15009), (15106), (15202), (15206), (15303), (15712), (15718), (15778), (15872), (15904), (16134), (16582), 
(16641), (16679), (16864), (16961), (17058), (17155), (17255), (17282), (17313), (17508), (17668), (17858), (17985), (17988), (18119), (18215), 
(18336), (18496), (18533), (18593), (18661), (18689), (18753), (18822), (18919), (19010), (19078), (19138), (19523), (19616), (19718), (20036), 
(20134), (20389), (20453), (20480), (20486), (20704), (20743), (20864), (20899), (20934), (21222), (21286), (21346), (21383),
(21729), (21824), (21890), (22181), (22402), (22627), (22656), (22661), (22787), (22820),
(22947), (22950), (23076), (23168), (23488), (23557), (23559), (23616), (23619), (23748),
(24066), (24519), (24707), (24902), (25095), (25152), (25157), (25478), (25479), (25735),
(25799), (25828), (25952), (26240), (26372), (26784), (26852), (26881), (26982), (27137),
(27490), (27712), (27744), (27750), (28003), (28037), (28291), (28387), (28419), (28455),
(28544), (28928), (29095), (29318), (29376), (29380), (29410), (29505), (29506), (29861),
(29991), (30176), (30403), (30469), (31073), (31232), (31303), (31682), (31844), (31907),
(32036), (32582), (32901), (32931), (32966), (32996), (32998), (33283), (33317), (33477),
(33510), (33541), (33637), (33921), (34117), (34209), (34338), (34532), (34658), (34661);

INSERT INTO ReturnedOrders (Order_ID) VALUES 
(34689), (34916), (35047), (35110), (35111), (35137), (35366), (35492), (35554), (35588),
(35687), (35744), (35877), (35910), (35936), (36038), (36067), (36160), (36262), (36449),
(36609), (36676), (36679), (36705), (36707), (36743), (36772), (36773), (36932), (36934),
(36992), (36994), (36998), (36999), (37250), (37380), (37414), (37572), (37760), (37860),
(37862), (37924), (38050), (38210), (38240), (38272), (38400), (38530), (38596), (38661),
(38787), (39043), (39075), (39169), (39333), (39490), (39555), (39619), (39872), (39904),
(39943), (40097), (40132), (40134), (40160), (40354), (40802), (40806), (41059), (41120),
(41186), (41216), (41508), (41760), (41861), (42342), (42375), (42436), (42563), (42628),
(42788), (42823), (42850), (42912), (42945), (43138), (43140), (43203), (43269), (43488),
(43494), (43585), (43713), (44098), (44292), (44486), (44579), (44583), (44869), (44962),
(45127), (45605), (45632), (45698), (45767), (45794), (45863), (46052), (46276), (46311),
(46341), (46375), (46497), (46662), (46852), (47078), (47079), (47109), (47138), (47174),
(47265), (47271), (47457), (47494), (47620), (47621), (47813), (47876), (47910), (48293),
(48295), (48321), (48353), (48391), (48448), (48486), (48487), (48615), (48710), (48773),
(48775), (48931), (49026), (49027), (49123), (49255), (49349), (49412), (49510), (49668),
(49762), (49797), (49830), (49924), (49988), (50048), (50081), (50083), (50087), (50147),
(50246), (50307), (50374), (50432), (50501), (50564), (50566), (50663), (50721), (50789),
(50818), (50823), (50850), (50914), (51075), (51239), (51271), (51302), (51553), (51554),
(51559), (51876), (51879), (51940), (52035), (52068), (52258), (52288), (52327), (52518),
(52608), (52611), (52678), (52805), (53285), (53536), (53600), (53767), (54086), (54119),
(54151), (54215), (54243), (54245), (54339), (54368), (54371), (54563), (54595), (54721),
(54755), (54787), (54914), (55172), (55203), (55235), (55330), (55526), (55616), (55618),
(55623), (55747), (55776), (55808), (55874), (55877), (55968), (56101), (56128), (56257),
(56387), (56452), (56514), (56582), (56612), (56768), (56769), (56868), (56901), (56930),
(56931), (57157), (57190), (57248), (57253), (57440), (57510), (57600), (57638), (57986),
(58368), (58372), (58470), (58500), (58566), (58688), (58720), (58725), (58818), (58949),
(59009), (59047), (59072), (59139), (59171), (59585), (59652), (59680), (59683), (59776),
(59879);

UPDATE KMS
SET Order_Status = 'Returned'
WHERE Order_ID IN (SELECT Order_ID FROM ReturnedOrders);

ALTER TABLE KMS
ADD Order_Status VARCHAR(20);

----Case Scenario I – Business Questions:
---1.  Which product category had the highest sales?
SELECT Product_Category, SUM(Sales) AS Total_Sales
FROM KMS
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

---2. What are the Top 3 and Bottom 3 regions in terms of sales?
-- Top 3 regions
SELECT Region, SUM(Sales) AS Total_Sales
FROM KMS
GROUP BY Region
ORDER BY Total_Sales DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

-- Bottom 3 regions
SELECT Region, SUM(Sales) AS Total_Sales
FROM KMS
GROUP BY Region
ORDER BY Total_Sales ASC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

---3. What were the total sales of appliances in Ontario?
SELECT SUM(Sales) AS Total_Appliance_Sales
FROM KMS
WHERE Product_Sub_Category = 'Appliances'
  AND Province = 'Ontario';

  ---4. Advise the management of KMS on how to increase revenue from the bottom 10 customers
  SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM KMS
GROUP BY Customer_Name
ORDER BY Total_Sales ASC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

---5. KMS incurred the most shipping cost using which shipping method?
SELECT Ship_Mode, SUM(Shipping_Cost) AS Total_Shipping_Cost
FROM KMS
GROUP BY Ship_Mode
ORDER BY Total_Shipping_Cost DESC;

---6. Who are the most valuable customers, and what products or services do they typically purchase?
SELECT TOP 10 
    Customer_Segment,
    Product_Sub_Category,
    Customer_Name, 
    SUM(Sales) AS [Total Sales]
FROM [dbo].[KMS]
GROUP BY 
    Customer_Segment, 
    Product_Sub_Category, 
    Customer_Name
ORDER BY 
    [Total Sales] DESC;

    ---7 Which small business customer had the highest sales?
SELECT TOP 1 *
FROM [dbo].[KMS]
WHERE CUSTOMER_SEGMENT = 'SMALL BUSINESS'
ORDER BY Sales DESC

-----8. Which Corporate Customer placed the most number of orders from 2009–2012?
SELECT TOP 1 *
FROM [dbo].[KMS] 
WHERE CUSTOMER_SEGMENT = 'CORPORATE' 
ORDER BY Order_Quantity DESC

-----9.Which consumer customer was the most profitable one?
SELECT TOP 1*
FROM [dbo].[KMS] 
WHERE Customer_Segment = 'consumer' 
ORDER BY Profit DESC

-----10 . Which customer returned items, and what segment do they belong ?
SELECT TOP 10 *
FROM [dbo].[KMS];  -- Include brackets if the name has spaces

SELECT TOP 10 *
FROM [dbo].[ReturnedOrders];

-----11. Compare Order Priority with Ship Mode
SELECT 
    Order_Priority,
    Ship_Mode,
    COUNT(*) AS Order_Count,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM [dbo].[KMS]
GROUP BY Order_Priority, Ship_Mode
ORDER BY Order_Priority, Order_Count DESC;






















 

