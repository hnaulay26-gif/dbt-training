with all_values as (

    select
        shipmode as value_field,
        count(*) as n_records

    from ANALYTICS.dbt_hnaulay.raw_order
    group by shipmode

)

select *
from all_values
where value_field not in (
    'First Class','Same Day','Second Class','Standard Class'
)