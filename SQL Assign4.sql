
alter table employee
add JoiningDate datetime;
select top 1 * from Employee order by joiningdate;

select top 1 * from Employee Order By joiningdate DESC;

select top 1 Productname ,UnitPrice from Product order by UnitPrice  desc;
select top 1 Productname ,UnitPrice from Product order by UnitPrice  

select ProductName,stock 
from Product
where stock='out of stock';

select ProductName,UnitonOrder,UnitinStock 
from Product
where UnitinStock< UnitonOrder;

select Category,supplier
from Product

select CONCAT(a.firstname,a.lastname)as customer_name,b.id as orderid,b.Orderdate
from Customer a, Orders b
where a.Id=b.CustomerId

select ID from Customer where 
substring(FirstName,len(FirstName)-1,2)='RA';

alter table Employee
add CompanyName nvarchar(50);

select Substring(CompanyName,1, (CHARINDEX(' ',companyname)-1))as FirstWord from employee 
