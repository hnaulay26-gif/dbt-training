{{
    config(
        materialized='table'
    )
}}


select * FROM {{ source('globalmart', 'product') }}