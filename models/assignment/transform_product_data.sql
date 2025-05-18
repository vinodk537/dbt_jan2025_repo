
{{ 
config(
materialized='table',
alias='dim_products') 
}}

select productid,productname,category,round(price) as rounded_price,stock from
DBT.RAW_DATA.PRODUCTS