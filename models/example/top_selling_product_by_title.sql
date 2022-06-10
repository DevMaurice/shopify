
{{ config(materialized='table') }}


select title, created_at,sum(price) as total 
from {{ ref("cleaned_order_line")}}
group by title,created_at
order by total desc


