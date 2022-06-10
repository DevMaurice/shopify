{{ config(materialized='table') }}

select to_date(o.created_at) as created_at ,p.title,ol.Id, ol.ORDER_ID,ol.PRODUCT_ID, ol.price,ol.quantity, ol.TOTAL_DISCOUNT 
from "FIVETRAN_DATABASE"."SHOPIFY_DS"."ORDER_LINE" ol
inner join "FIVETRAN_DATABASE"."SHOPIFY_DS"."ORDER" o
on ol.order_id=o.id
inner join "FIVETRAN_DATABASE"."SHOPIFY_DS"."PRODUCT" p
on ol.PRODUCT_ID=p.id