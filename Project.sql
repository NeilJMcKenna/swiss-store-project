CREATE DATABASE SWISS_STORE;

USE SWISS_STORE;
CREATE TABLE CUSTOMER(
   CustomerID INT,
   Customer_Name VARCHAR (50),
   Date_Of_Arrival DATE,
   Ski_Passes BOOLEAN,
   Ski_Insurance BOOLEAN,
   Taxi_Transfer BOOLEAN,
   Room_Type Varchar (20),
   PRIMARY KEY (CustomerID)
);

USE SWISS_STORE;
CREATE TABLE SALES(
   Sales_ID INT,
   Customer_ID INT,
   Refunded BOOLEAN,
   Refunded_Amount DOUBLE (4,2),
   Equipment_Hire BOOLEAN,
   Equipment_Description VARCHAR (100),
   Equipment_Sale DOUBLE (4,2),
   PRIMARY KEY (Sales_ID)
);

USE SWISS_STORE;
INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type)
VALUES (1, 'David Doherty', '18/08/2020', 'TRUE', 'FALSE', 'TRUE', 'SINGLE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type)
VALUES (2, 'Regina Smith', '16/07/2020', 'FALSE', 'FALSE', 'TRUE', 'SINGLE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type)
VALUES (3, 'Ryan Gorski', '23/08/2020', 'FALSE', 'FALSE', 'FALSE', 'SINGLE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type)
VALUES (4, 'Rachel Greene', '12/09/2020', 'TRUE', 'TRUE', 'TRUE', 'SINGLE');

INSERT INTO CUSTOMER (CustomerID, Customer_Name, Date_Of_Arrival, Ski_Passes, Ski_Insurance, Taxi_Transfer, Room_Type)
VALUES (5, 'Balboa Family', '13/08/2020', 'TRUE', 'TRUE', 'FALSE', 'FAMILY');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale)
VALUES (1, 1, 'FALSE','0.0','TRUE','Ski Set','34.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale)
VALUES (2, 3, 'FALSE','0.0','TRUE','Ski Set','199.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale)
VALUES (1, 1, 'FALSE','0.0','TRUE','Ski Set','199.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale)
VALUES (1, 1, 'FALSE','0.0','TRUE','Ski Set','199.99');

INSERT INTO SALES (Sales_ID, Customer_ID, Refunded, Refunded_Amount, Equipment_Hire, Equipment_Description, Equipment_Sale)
VALUES (1, 1, 'FALSE','0.0','TRUE','Ski Set','199.99');