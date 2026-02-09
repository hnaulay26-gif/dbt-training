select 
        productid,
        productname,
        category,
        subcategory,
        Sum(OrderProfit) AS Profit
FROM    
        {{ ref('stg_orders') }}
GROUP BY    
        productid,
        productname,
        category,
        subcategory