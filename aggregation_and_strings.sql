--aggregate functions

select * from mysalary

select avg(salary) from mysalary 

--returns number of entries in a column
select count(salary) from mysalary
select count(*) from mysalary


select sum(salary)from mysalary
select min(salary)from mysalary
select max(salary)from mysalary

-- avg(),count(),sum(),min(),max() are some aggregate functions

--string functions
select * from myorder

select orderid,ordername,concat(ordername,' ',ordername) from myorder

select orderid,ordername,concat(ordername,' ',ordername) as snack from myorder

select orderid,ordername,concat(ordername,' ',rand()) as snack from myorder

--left: returns characters from the left, right:returns characters from the right
select orderid,ordername,left(ordername,5) from myorder
select orderid,ordername,right(ordername,5) from myorder

--substring: returns characters from a range
select orderid,ordername,substring(ordername,2,5) from myorder

--other string methods lower(),upper(),len().

--trim. LTRIM():removes spaces from left. RTRIM():removes spaces from the right

select LTRIM('    sakldfks    ')
select RTRIM('    sakldfks    ')