select 
--from raw_order
o.orderId,
o.orderdate,
o.shipdate,
o.shipmode,
ordersellingprice-ordercostprice AS OrderProfit,
o.ordercostprice,
o.ordersellingprice,
--from raw_cusstomer
c.customerid,
c.customername,
c.segment,
c.country,
--from raw_product
p.category,
p.productname,
p.productid,
p.subcategory
FROM
    {{ ref('raw_order') }} as o
LEFT JOIN {{ ref('raw_customer') }} as c
ON o.customerid=c.customerid
LEFT JOIN {{ ref('raw_product') }} as p
ON o.productid=p.productid