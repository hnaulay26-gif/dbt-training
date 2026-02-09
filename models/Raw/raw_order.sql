{{
    config(
        materialized='table'
    )
}}


select * FROM {{ source('globalmart', 'orders') }}