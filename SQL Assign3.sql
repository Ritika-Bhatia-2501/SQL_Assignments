select a.FirstName,a.LastName,b.*
from Orders b,Customer a 
where a.Id=b.CustomerId
and a.Phone= '030-0074321'

select productname 
from Product
where category='seafood'

select  a.FirstName,a.LastName,b.*
from Orders b,Customer a 
where a.Id=b.CustomerId
and a.City <> 'LONDON'

select a.*
from OrderItem a ,Product b
where a.ProductId=b.ProductId
and b.ProductName='chai'

select emp_name,dept,rating
from employee
