
/* Create Database */

CREATE DATABASE SWISS_STORE;

/* Create Tables Customer and Sales */

USE SWISS_STORE;
CREATE TABLE CUSTOMER(
   CustomerID INT,
   Customer_Name VARCHAR (50),
   Date_Of_Arrival DATE,
   Ski_Passes VARCHAR (5),
   Ski_Insurance VARCHAR (5),
   Taxi_Transfer VARCHAR (5),
   Room_Type Varchar (20),
   Ski_Lessons VARCHAR (5),
   PRIMARY KEY (CustomerID)
);

USE SWISS_STORE;
CREATE TABLE SALES(
   Sales_ID INT,
   Customer_ID INT,
   Refunded VARCHAR (5),
   Refunded_Amount DOUBLE (6,2),
   Equipment_Hire VARCHAR (5),
   Equipment_Description VARCHAR (100),
   Equipment_Sale_Bought DOUBLE (6,2),
   Hire_Sale DOUBLE (6,2),
   PRIMARY KEY (Sales_ID)
);

/* Insert values into Customer and Sales tables */

USE SWISS_STORE;
INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type, Ski_Lessons)
VALUES (1, 'David Doherty', '2020-08-18', 'TRUE', 'FALSE', 'TRUE', 'SINGLE', 'FALSE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type, Ski_Lessons)
VALUES (2, 'Regina Smith', '2020-07-16', 'FALSE', 'FALSE', 'TRUE', 'SINGLE', 'FALSE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type, Ski_Lessons)
VALUES (3, 'Ryan Gorski', '2020-08-23', 'FALSE', 'FALSE', 'FALSE', 'SINGLE', 'FALSE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type, Ski_Lessons)
VALUES (4, 'Rachel Greene', '2020-09-12', 'TRUE', 'TRUE', 'TRUE', 'SINGLE', 'TRUE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type, Ski_Lessons)
VALUES (5, 'Balboa Family', '2020-08-13', 'TRUE', 'TRUE', 'FALSE', 'FAMILY', 'TRUE');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale_Bought, Hire_Sale)
VALUES (6, 1, 'FALSE','0.0','TRUE','Ski Set','0.00','149.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale_Bought, Hire_Sale)
VALUES (2, 1, 'FALSE','0.0','TRUE','Ski Helmet','0.00','19.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale_Bought, Hire_Sale)
VALUES (3, 2, 'FALSE','0.0','FALSE','Ski Set','499.99','0.00');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale_Bought, Hire_Sale)
VALUES (4, 4, 'TRUE','199.99','TRUE','Ski Set','0.00','199.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale_Bought, Hire_Sale)
VALUES (5, 5, 'FALSE','0.0','TRUE','Ski Family Pack','0.00','499.99');

/* QUERIES */
/* Listing all customers booking from Aug 1st – Aug 31st 2020 */
SELECT CustomerID, Customer_Name, Date_Of_Arrival FROM CUSTOMER WHERE Date_Of_Arrival BETWEEN "2020-08-01" AND "2020-08-31";

/* Listing all customers who have NOT booked lessons */
SELECT CustomerID, Customer_Name, Date_Of_Arrival FROM CUSTOMER WHERE Ski_Lessons = "FALSE";

/* Listing all current customers complete orders – hire, passes, accommodation etc */
SELECT C.CustomerID, C.Customer_Name, C.Date_Of_Arrival FROM Customer AS C
INNER JOIN Sales AS S
WHERE C.CustomerID = S.Customer_ID AND C.Ski_Lessons = "TRUE" AND C.Ski_Passes = "TRUE" AND S.Refunded = "FALSE" AND S.Equipment_Hire = "TRUE" ;

/* Listing full order details for the one order generated by a family */
SELECT CustomerID, Customer_Name, Date_Of_Arrival FROM CUSTOMER WHERE Room_Type = "Family";

/* Listing full details of a refunded order to a customer who needed to cancel */
SELECT C.CustomerID, C.Customer_Name, C.Date_Of_Arrival FROM Customer AS C
INNER JOIN Sales AS S
WHERE C.CustomerID = S.Customer_ID AND S.Refunded = "TRUE";


