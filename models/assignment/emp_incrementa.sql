{{ 
config(
materialized='incremental',
alias='employee_curated',
unique_key='empid'
) 
}}

select * from DBT.RAW_DATA.EMPLOYEE
{% if is_incremental() %}
-- this filter will only be applied on an incremental run
where inserted_AT > (select max(inserted_at) from  {{this}})
{% endif %}


