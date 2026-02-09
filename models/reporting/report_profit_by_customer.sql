select
        customerid,
        segment,
        country,
        Sum(OrderProfit) AS Profit
FROM {{ ref('stg_orders') }}
GROUP BY 
        customerid,
        segment,
        country