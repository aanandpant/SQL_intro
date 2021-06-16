use AdventureWorks2012

SELECT * FROM [HumanResources].[Department]

--alternate way to write 

select * from HumanResources.Department

--shows dept names
select name from HumanResources.Department

--shows group names
select groupname from HumanResources.Department


--show me all the distinct group names(unique names/removes redundant names)

select distinct groupname from HumanResources.Department 


--show me all the depts related to manufacturing

select NAME,groupname from HumanResources.Department where groupname='Manufacturing' 

--alternate way to write this

select name,groupname from HumanResources.Department where groupname like 'manufacturing'

--give me all the employees from the employee table

select * from HumanResources.Employee

--give me all the employees with organization value as 2

select * from HumanResources.Employee where OrganizationLevel=2

--give me all the employees with organization value as 2 or 3

select *  from HumanResources.Employee where OrganizationLevel=2 or OrganizationLevel=3

--alternate way to write the above statement

select * from HumanResources.Employee where OrganizationLevel in (2,3)


--give me a list of employees with the jobtitle as facilites manageer

select * from HumanResources.Employee where JobTitle='facilities manager'

select * from HumanResources.Employee where JobTitle like 'facilities manager' --like keyword is usually used with strings


--give me a list of employees who have 'manager' keyword in their jobtile
--here % mentions any string that comes before the word 'manager'

select * from HumanResources.Employee where JobTitle like '%manager' 


--give me a list of all employees who have 'control' keyword in their job title

select * from HumanResources.Employee where JobTitle like '%control%'


--return all the employees who are born after 1st jan 1980

select * from HumanResources.Employee where BirthDate > '1/1/1980'

--return all the employees who are born between 1st jan 1970 and 1st jan 1980

select * from HumanResources.Employee where BirthDate > '1/1/1970' and BirthDate <  '1/1/1980'

select * from HumanResources.Employee where BirthDate between '1/1/1970' and '1/1/1980'


--caluculatd coulums 
select name,ListPrice from [Production].[Product]

select name,listprice,listprice+20 as newlistprice from Production.Product

--storing the calculated column into a new table

select name,listprice,listprice+20 as newlistprice into production.product_2 from Production.Product

--creating a temporary calculated column which will be visible in this session only

select name,listprice,listprice+20 as newlistprice into #temptable from Production.Product

select * from Production.product_2

select * from #temptable

--delete operation
delete from Production.product_2 where name='bearing ball'

select * from Production.product_2



--update

update Production.product_2 set name='new blade' where name='blade'