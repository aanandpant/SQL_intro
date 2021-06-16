--tsql date functions

--current date and time
select GETDATE()

--decrements 1 day from current date
select getdate()-1

--datepart. Returns a part dd or mm or yyyy from a date

select DATEPART(dd,getdate())

--returns current year, makes a coulum called 'year'
select DATEPART(YYYY,getdate()) as year

--dateadd. Add number of dd or mm or yyyy into a date

select DATEADD(dd,1,getdate()) as add1

--increments current date with 1 and only shows date
select datepart(dd,DATEADD(dd,1,getdate()))


--some date operations on database
select top 10 * from Production.WorkOrder

select top 10 workorderID, productID, StartDate, EndDate, DATEDIFF(dd,StartDate,EndDate)
from production.WorkOrder

select top 10 workorderID, productID, StartDate, EndDate, DATEDIFF(dd,StartDate,EndDate) as daydifference
from production.WorkOrder

--shows the first day of the month
select dateadd(dd,-datepart(dd,GETDATE()-1),GETDATE())
