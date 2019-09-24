
-- jdatabase

-- select json stuff

select jsonb_build_object (
'customernumber',  customers.customernumber,
'customername',trim(customers.customername),
'city',trim(customers.city),
'phone',trim(customers.phone)
) as json_customer_data from customers   ;

-- write it to a table
create table json_customers as 
select jsonb_build_object (
'customernumber',  customers.customernumber,
'customername',trim(customers.customername),
'city',trim(customers.city),
'phone',trim(customers.phone)
) as json_customer_data from customers   ;


SELECT json_customer_data->>'customernumber' as "cust_no"  , 
json_customer_data->>'customername' as "cust_name"
FROM json_customers
ORDER BY  json_customer_data->'customernumber' ASC;