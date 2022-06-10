{{ config(materialized='table') }}

select to_date(CREATED_AT) as created_date, 
Total_price, 
SHIPPING_ADDRESS_PROVINCE,
SHIPPING_ADDRESS_PROVINCE_CODE 
from "FIVETRAN_DATABASE"."SHOPIFY_DS"."ORDER" 
where YEar(created_date)=2022