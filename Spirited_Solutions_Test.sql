use Spirited_Solutions;

Insert Into customer (FullName, Email, Phone) Values
('Aheen Rahman','aheenthegoat@gg.com','646-444-3333');

Insert Into Product
(Prod_Name, Product_Bcode, Price, Stock) Values
('MistSpray','1234321','20','32');

Insert Into `order` (CustomerID, OrderDate, Total, PaymentType) Values
('12',Current_Timestamp,'26','Credit');

Insert Into order_placement (OrderID, Product_ID, Quantity, UnitPrice) Values
('2','22','1','20');