# SQL NOTES

Below sqls use the Northwind database

## Natural Join

```sql
Select  customers.companyname,orderid from customers
natural join orders
where customerid = 'ALFKI'
order by customerid
```

is the same as

```sql
Select  customers.companyname,orderid from customers
inner join orders on orders.customerid = customers.customerid
where orders.customerid = 'ALFKI'
order by orders.customerid
```

natural join matches on similar column names

## GROUPING SETS

```sql
SELECT c.companyname AS buyer,
   s.companyname AS supplier,
   products.productid,
   SUM(od.unitprice*quantity) as total_purchased
FROM customers AS c
NATURAL JOIN orders
NATURAL JOIN order_details AS od
JOIN products USING (productid)
JOIN suppliers  AS s USING (supplierid)
GROUP BY GROUPING SETS ((buyer),(buyer,supplier,products.productid))
ORDER BY buyer,supplier nulls first;
```

*Grouping Sets* group by the items for a total, and then run a total on that for a group. the above will total the lines for buyer,
supplier, and product id, and also provide a total for buyer. with null in the productid. 
(buyer), (buyer, supplier, products.productid). the first buyer is a 'sub summary' and the second group is detail for that group.

## ROLLUP

```sql
SELECT c.companyname AS buyer,
   s.companyname AS supplier,
   products.productid,
   SUM(od.unitprice*quantity) as total_purchased
FROM customers AS c
NATURAL JOIN orders
NATURAL JOIN order_details AS od
JOIN products USING (productid)
JOIN suppliers  AS s USING (supplierid)
group by rollup (buyer,supplier,products.productid)
ORDER BY buyer,supplier,products.productid  nulls first;
```

*Rollup* will create subtotals for each item in the grouping clause including the major group: buyer in this case


## Cube

```sql
SELECT c.companyname,categoryname,productname,SUM(od.unitprice*quantity)
FROM customers AS c
NATURAL JOIN orders
NATURAL JOIN order_details AS od
JOIN products USING (productid)
JOIN categories  USING (categoryid)
GROUP BY CUBE (companyname, categoryname, productname);
```

## WITH Queries

```sql
WITH simple_sales AS (
 SELECT categoryname,SUM(od.unitprice*quantity) AS sales
	FROM categories AS c
	JOIN PRODUCTS USING(categoryid)
	JOIN order_details AS od USING (productid)
	GROUP BY categoryname
	ORDER BY sales DESC LIMIT 3
)

SELECT * from simple_sales;
```

*WITH Queries* allow aliasing a result set within the given query (tempory in memory view?)
