
SELECT * FROM Customer
where Country='germany'

SELECT EMP_NAME FROM EMPLOYEE

SELECT * FROM Customer
WHERE fax is not null

SELECT * from Customer
where FirstName like '_V%'

select * from OrderItem
where UnitPrice >10 and UnitPrice <20

select * from Orders 
order by shippingdate

select * from Orders
where shipname='LA CORNE D ABONDANCE' AND (shippingdate between '2022-01-01' and '2022-04-01')

select * from Product
where supplier='exotic liquids'

select productid, AVG(Quantity) as Average_Order
from OrderItem
group by ProductId

SELECT SHIPNAME , Shippingcompany FROM ORDERS
where is_operational = 1

select emp_name, emp_manager from employee

select productName , Category,priceafterdis
from Product,OrderItem
where Product.ProductId = OrderItem.ProductId




