SELECT * , creditLimit + 200 as New_creditLimit
FROM customers 
where creditLimit >= 1000000 and customerNumber < 200 or country = 'USA'
ORDER BY New_creditLimit DESC