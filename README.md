# Study_DataBases
## Quest01 :
- Table : OrderDetails
- 조건 : 제품명,가격, 주문 갯수, 고객명 표시
- 결과 표시
```
SELECT 
    Products.ProductName AS [제품명],
    Products.Price AS [가격],
    OrderDetails.Quantity AS [개수],
    Customers.CustomerName AS [고객명]
FROM 
    (Products 
    INNER JOIN OrderDetails 
    ON Products.ProductID = OrderDetails.ProductID)
    INNER JOIN (Orders 
    INNER JOIN Customers 
    ON Orders.CustomerID = Customers.CustomerID) 
    ON OrderDetails.OrderID = Orders.OrderID;

```
### Result:
![q01](https://github.com/user-attachments/assets/dfdaee48-19d5-4229-9acd-284004c2282d)

## Quest02 :
- Table : Orders
- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수
- 결과 표시


```
SELECT 
    Products.ProductName AS [제품명],
    Products.Price AS [가격],
    OrderDetails.Quantity AS [개수],
    Customers.CustomerName AS [고객명]
FROM 
    (Products 
    INNER JOIN OrderDetails 
    ON Products.ProductID = OrderDetails.ProductID)
    INNER JOIN (Orders 
    INNER JOIN Customers 
    ON Orders.CustomerID = Customers.CustomerID) 
    ON OrderDetails.OrderID = Orders.OrderID;

```
### Result:
![q02](https://github.com/user-attachments/assets/ba1f5232-b398-4862-a801-727aa43c011f)



