use Spirited_Solutions;

Create table Customer (
  CustomerID   INT AUTO_INCREMENT PRIMARY KEY,
  FullName     VARCHAR(128) NOT NULL,
  Email        VARCHAR(128) NOT NULL UNIQUE,
  Phone        VARCHAR(32),
  CONSTRAINT chk_email_not_empty CHECK (Email <> '')
);

Create Table Product (
	Product_ID INT Auto_increment Primary Key,
    Product_BCode VarChar(32) Not null unique,
    Prod_Name Varchar(160) Not Null,
    Price Decimal(10,2) Not null,
    Stock INT not null default 0
    );

Create Table `Order` (
	OrderID INT Auto_Increment Primary Key,
    CustomerID INT Not Null,
    OrderDate DATETIME Not null default current_timestamp,
    Total Decimal(10,2) Not null default 0,
    PaymentType Varchar(128)
    );
    
Create Table Order_placement (
	order_placementID INT auto_increment Primary Key,
    OrderID INT not null,
    Product_ID INT not null,
    Quantity INT not null check (quantity > 0),
    UnitPrice Decimal(10,2) Not null check (UnitPrice >= 0),
    OrderTotal Decimal(10,2) Generated always as (Quantity * UnitPrice) Stored
);

