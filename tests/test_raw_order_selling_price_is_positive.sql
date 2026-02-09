with orders as 
(select * FROM {{ ref('raw_order') }}
)

select orderid,
        sum(ordersellingprice) AS total_sp
FROM orders
GROUP BY orderid
having total_sp<0

