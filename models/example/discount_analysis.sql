
{{ config(materialized='table') }}

select to_date(o.created_at) as order_date, da.CODE as D_code,da.Value as D_Value, count(o.id) as number_orders, sum(o.TOTAL_DISCOUNTS)as total_discount
from "FIVETRAN_DATABASE"."SHOPIFY_DS"."ORDER" o
inner join "FIVETRAN_DATABASE"."SHOPIFY_DS"."DISCOUNT_APPLICATION" da
on o.id=da.order_id
where da.CODE is not null
group by D_code,D_Value,order_date
order by total_discount desc