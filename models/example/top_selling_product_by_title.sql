
{{ config(materialized='table') }}

select title, created_at,sum(price) as total 
from {{ ref("cleaned_order_line")}}
where year(created_at)=2022
group by title,created_at
order by total desc


